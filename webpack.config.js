const path = require('path');

var copyWebpackPlugin = require('copy-webpack-plugin');

module.exports = {
	entry: {
		head: ['./vendor/oxit/oxitweb-core/src/www/src/head-core.bundle.js'],
		front: ['./vendor/oxit/oxitweb-core/src/www/src/core.bundle.js', './vendor/oxit/oxitweb-core/src/www/src/front.bundle.js', './gulp/src/front.bundle.js'],
		admin: ['./vendor/oxit/oxitweb-core/src/www/src/core.bundle.js', './vendor/oxit/oxitweb-core/src/www/src/admin.bundle.js', './gulp/src/admin.bundle.js'],
	},
	mode: (process.env.NODE_ENV === 'production') ? 'production' : 'development',
	resolve: {
		extensions: ['*', '.js', '.jsx']
	},
	output: {
		filename: '[name].bundle.js',
		path: path.join(__dirname, 'www', 'dist'),
		publicPath: '/dist/',
	},

	module: {
		rules: [
			{
				test: /\.css$/,
				use: [
					'style-loader',
					'css-loader',
				],
			},
			{
				test: /\.(png|svg|jpg|gif)$/,
				use: [
					'file-loader',
				],
			},
			{
				test: /\.(woff|woff2|eot|ttf|otf)$/,
				use: [
					'url-loader',
				],
			},
		],
	},

	plugins: [
		new copyWebpackPlugin([
			{from: './node_modules/tinymce/plugins', to: './plugins'},
			{from: './node_modules/tinymce/icons', to: './icons'},
			{from: './node_modules/tinymce/themes', to: './themes'},
			{from: './node_modules/tinymce/skins', to: './skins'},
			{from: './node_modules/tinymce-i18n/langs5', to: './langs'},
			{from: './node_modules/tinymce-emoji/dist/tinymce-emoji', to: './plugins/tinymceEmoji'},
			{from: './node_modules/tinymce-plugin-responsive-image/lib/', to: './plugins/responsiveImage'}
		])
	]
};