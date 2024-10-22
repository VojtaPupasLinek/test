const {
	src,
	dest,
	parallel,
	series,
	watch,
	compile
} = require('gulp');

// Load plugins

const uglify = require('gulp-uglify');
const rename = require('gulp-rename');
const sass =  require('gulp-sass')(require('sass'));
const autoprefixer = require('gulp-autoprefixer');
const cssmin = require('gulp-cssmin');
const concat = require('gulp-concat');
const imagemin = require('gulp-imagemin');
const changed = require('gulp-changed');
const sassGlob = require('gulp-sass-glob');
const fileInclude = require('gulp-file-include');
const log = require('fancy-log');
const browsersync = require('browser-sync').create();

const argv = require('yargs');


const folder = argv.argv.folder,
	davFolder = folder
	distFolder = folder + '/dist/'


// JS function

function js() {
	const source = 'gulp/js/front/**/*.js';

	return src(source)
		.pipe(changed(source))
		.pipe(concat('script.js'))
		.pipe(uglify())
		.pipe(rename({
			extname: '.min.js'
		}))
		.pipe(dest('www/js/'))
		.pipe(dest('gulp/dist/js/'))
		.pipe(browsersync.stream());
}

// CSS function

function css() {
	const source = ['gulp/scss/styles.scss','gulp/scss/admin.scss'];

	return src(source)

		.pipe(sassGlob({
			ignorePaths: [
				'resets/resets.scss'
			]
		}))
		.pipe(sass())
		.pipe(autoprefixer({
			remove: false,
			overrideBrowserslist: ['last 2 versions'],
			cascade: false
		}))
		.pipe(cssmin())
		.pipe(rename({
			extname: '.min.css'
		}))
		.pipe(dest('www/css/'))
		.pipe(dest('gulp/dist/css/'))
		.pipe(browsersync.stream());
		// .on("finish", function() {
		// 	log(folder ? folder : 'no folder');
		// });
}

function latte() {
	const source = 'app/**/*.latte';
	return src(source)
		.pipe(browsersync.stream());
}

function html() {
	const source = 'gulp/*.html';
	return src(source)
		.pipe(fileInclude({
			prefix: '@@',
			basepath: '@file'
		}))
		.pipe(dest('gulp/dist/'))
		.pipe(browsersync.stream());
}

// Optimize images

// function img() {
//     return src('/www/images/**/*')
//         .pipe(imagemin())
//         .pipe(dest(distFolder + '/www/images'));
// }

// Watch files

function watchFiles() {
	watch('gulp/scss/front/**/*.scss', css);
	watch('gulp/js/front/**/*.js', js);
	// watch('/www/images/**/*', img);
	watch('gulp/*.html', html);
	watch('gulp/components/*.html', html);
	watch('app/**/*.latte', latte);
}

// BrowserSync

function browserSync() {
	if (folder) {
		browsersync.init({
			server: {
				baseDir: distFolder
			},
			port: 3000
		});
	} else {
		browsersync.init({
			proxy: 'oxitweb.local'
		});
	}
}

// Tasks to define the execution of the functions simultaneously or in series

exports.watch = parallel(watchFiles, browserSync);
exports.compile = parallel(css, js, html);
//exports.default = series(parallel(js, css, html));
// exports.img = img;
