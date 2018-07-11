function classToggle() {
	const navs = document.querySelectorAll('.navbar-content')

	navs.forEach(nav => nav.classList.toggle('navbar-toggle'));
}

document.querySelector('.dropdown-link').addEventListener('click', classToggle);