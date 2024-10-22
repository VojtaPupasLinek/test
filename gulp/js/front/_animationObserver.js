let offset;

$(document).ready(function () {
	// $('.animation').addClass('animation--hidden');
	let observer;
	$(window).width() > 600 ? offset = -200 : offset = -100;
	animationObserver();
	animationRefresh();
});

function animationObserver() {
	observer = new IntersectionObserver((entries) => {
		entries.forEach(function (entry) {
			if (entry.isIntersecting) {
				entry.target.classList.add('animation--animate');
			}
			// if (entry.intersectionRatio >= 0.5) {
			// 	console.log('prdelka')
			// }
		})
	}, {rootMargin: "0px 0px " + offset +"px 0px"});
}

function animationRefresh() {
	const animations = document.querySelectorAll('.animation');
	animations.forEach(function (el) {
		// el.classList.add('animation--hidden');
		observer.observe(el);
	});
}
