function classToggle() {
	const navs = document.querySelectorAll('.navbar-content');

	const navRight = document.querySelector('.navbar-content-right');

	const navBar = document.querySelector('.navbar');

	navBar.classList.toggle('navbar-height');

	navRight.classList.toggle('navbar-toggle');

	navs.forEach(nav => nav.classList.toggle('navbar-toggle'));
}

document.querySelector('.dropdown-link').addEventListener('click', classToggle);
