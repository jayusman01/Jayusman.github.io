<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Jayusman | Personal Portfolio</title>

<meta name="description" content="Website portofolio pribadi Jayusman, pelajar Teknik Komputer dan Jaringan serta aktivis organisasi.">

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    scroll-behavior: smooth;
}

:root {
    --bg: #080f1e;
    --card: #111d31;
    --blue: #38bdf8;
    --white: #ffffff;
    --text: #b8c5d9;
}

body {
    background: var(--bg);
    color: var(--white);
    font-family: 'Segoe UI', Arial, sans-serif;
}

/* NAVBAR */

header {
    position: fixed;
    top: 0;
    width: 100%;
    padding: 20px 8%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: rgba(8,15,30,.95);
    backdrop-filter: blur(12px);
    z-index: 1000;
    border-bottom: 1px solid #1e3049;
}

.logo {
    font-size: 25px;
    font-weight: bold;
    color: var(--blue);
}

nav a {
    color: white;
    text-decoration: none;
    margin-left: 22px;
    font-size: 14px;
    transition: .3s;
}

nav a:hover {
    color: var(--blue);
}

.menu {
    display: none;
    font-size: 27px;
    cursor: pointer;
}

/* HOME */

.home {
    min-height: 100vh;
    padding: 130px 10% 70px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 50px;
}

.home-content {
    max-width: 650px;
}

.home-content .hello {
    color: var(--blue);
    font-size: 19px;
}

.home-content h1 {
    font-size: 65px;
    margin: 15px 0;
}

.home-content h2 {
    font-size: 28px;
    color: var(--blue);
}

.home-content p {
    color: var(--text);
    line-height: 1.9;
    margin: 25px 0;
}

.profile {
    width: 310px;
    height: 310px;
    border-radius: 50%;
    border: 5px solid var(--blue);
    object-fit: cover;
    box-shadow: 0 0 45px #38bdf855;
}

.button {
    display: inline-block;
    padding: 13px 27px;
    background: var(--blue);
    color: #08111f;
    border-radius: 30px;
    text-decoration: none;
    font-weight: bold;
    transition: .3s;
}

.button:hover {
    background: white;
    transform: translateY(-5px);
}

/* GENERAL SECTION */

section {
    padding: 90px 10%;
}

.title {
    text-align: center;
    font-size: 36px;
    margin-bottom: 50px;
}

.title span {
    color: var(--blue);
}

/* ABOUT */

.about {
    background: #0d192b;
}

.about-content {
    max-width: 850px;
    margin: auto;
    text-align: center;
}

.about-content p {
    color: var(--text);
    line-height: 2;
    font-size: 16px;
}

/* SKILLS */

.skills-container {
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(190px,1fr));
    gap: 22px;
}

.skill-card {
    background: var(--card);
    padding: 30px 20px;
    text-align: center;
    border-radius: 15px;
    border: 1px solid #263b55;
    transition: .3s;
}

.skill-card:hover {
    transform: translateY(-8px);
    border-color: var(--blue);
}

.skill-card .icon {
    font-size: 35px;
    margin-bottom: 15px;
}

.skill-card h3 {
    color: var(--blue);
    margin-bottom: 10px;
}

.skill-card p {
    color: var(--text);
    font-size: 14px;
    line-height: 1.7;
}

/* EXPERIENCE */

.experience {
    background: #0d192b;
}

.experience-container {
    max-width: 850px;
    margin: auto;
}

.experience-card {
    background: var(--card);
    padding: 25px;
    margin-bottom: 20px;
    border-left: 4px solid var(--blue);
    border-radius: 10px;
    transition: .3s;
}

.experience-card:hover {
    transform: translateX(7px);
}

.experience-card h3 {
    color: var(--blue);
    margin-bottom: 8px;
}

.experience-card p {
    color: var(--text);
    line-height: 1.7;
}

/* EDUCATION */

.education-container {
    max-width: 750px;
    margin: auto;
    background: var(--card);
    padding: 30px;
    border-radius: 15px;
    border: 1px solid #263b55;
}

.education-container h3 {
    color: var(--blue);
    margin-bottom: 12px;
}

.education-container p {
    color: var(--text);
    line-height: 1.8;
}

/* PROJECT */

.project {
    background: #0d192b;
}

.project-container {
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(230px,1fr));
    gap: 25px;
}

.project-card {
    background: var(--card);
    padding: 28px;
    border-radius: 15px;
    transition: .3s;
}

.project-card:hover {
    transform: translateY(-8px);
}

.project-card h3 {
    color: var(--blue);
    margin-bottom: 12px;
}

.project-card p {
    color: var(--text);
    line-height: 1.8;
}

/* CONTACT */

.contact-content {
    text-align: center;
}

.contact-content p {
    color: var(--text);
    margin-bottom: 25px;
}

.contact-links {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 15px;
}

.contact-links a {
    color: var(--blue);
    border: 1px solid var(--blue);
    text-decoration: none;
    padding: 13px 25px;
    border-radius: 30px;
    transition: .3s;
}

.contact-links a:hover {
    background: var(--blue);
    color: var(--bg);
}

/* FOOTER */

footer {
    padding: 25px;
    text-align: center;
    background: #050a13;
    color: #8fa1b9;
    line-height: 1.8;
}

/* ANIMATION */

.reveal {
    opacity: 0;
    transform: translateY(30px);
    transition: .8s;
}

.reveal.show {
    opacity: 1;
    transform: translateY(0);
}

/* RESPONSIVE */

@media(max-width: 768px) {

    header {
        padding: 18px 6%;
    }

    .menu {
        display: block;
    }

    nav {
        display: none;
        position: absolute;
        top: 70px;
        left: 0;
        width: 100%;
        background: #111d31;
        padding: 20px;
    }

    nav.active {
        display: flex;
        flex-direction: column;
    }

    nav a {
        margin: 13px 0;
    }

    .home {
        flex-direction: column-reverse;
        text-align: center;
        padding-top: 130px;
    }

    .home-content h1 {
        font-size: 43px;
    }

    .home-content h2 {
        font-size: 22px;
    }

    .profile {
        width: 220px;
        height: 220px;
    }

    section {
        padding: 75px 7%;
    }

    .title {
        font-size: 30px;
    }
}
</style>
</head>

<body>

<!-- NAVBAR -->

<header>

    <div class="logo">JAYUSMAN.</div>

    <div class="menu" onclick="toggleMenu()">☰</div>

    <nav id="navbar">
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#skills">Skills</a>
        <a href="#experience">Experience</a>
        <a href="#education">Education</a>
        <a href="#project">Project</a>
        <a href="#contact">Contact</a>
    </nav>

</header>

<!-- HOME -->

<section class="home" id="home">

    <div class="home-content">

        <div class="hello">HELLO, I'M</div>

        <h1>Jayusman</h1>

        <h2>IT Enthusiast & Organization Leader</h2>

        <p>
            Saya adalah pelajar SMK jurusan Teknik Komputer
            dan Jaringan yang memiliki ketertarikan dalam
            bidang teknologi informasi, konfigurasi jaringan,
            serta kepemimpinan organisasi.
        </p>

        <a href="#about" class="button">
            Explore My Profile
        </a>

    </div>

    <img src="foto.jpg"
         alt="Foto Jayusman"
         class="profile">

</section>

<!-- ABOUT -->

<section class="about" id="about">

    <h2 class="title">About <span>Me</span></h2>

    <div class="about-content reveal">

        <p>
            Perkenalkan, nama saya Jayusman.
            Saya berasal dari Indramayu dan merupakan
            pelajar SMK Bangun Bangsa Mandiri Kandanghaur,
            jurusan Teknik Komputer dan Jaringan (TKJ).

            Saya memiliki minat dalam bidang teknologi
            informasi, khususnya jaringan komputer,
            konfigurasi perangkat jaringan, dan fiber optik.

            Selain bidang teknologi, saya juga aktif dalam
            kegiatan organisasi dan kepramukaan.
            Melalui berbagai pengalaman tersebut, saya
            terus mengembangkan kemampuan kepemimpinan,
            kedisiplinan, komunikasi, dan tanggung jawab.
        </p>

    </div>

</section>

<!-- SKILLS -->

<section id="skills">

    <h2 class="title">My <span>Skills</span></h2>

    <div class="skills-container">

        <div class="skill-card reveal">
            <div class="icon">🌐</div>
            <h3>Networking</h3>
            <p>Dasar jaringan komputer dan instalasi jaringan.</p>
        </div>

        <div class="skill-card reveal">
            <div class="icon">⚙️</div>
            <h3>Configuration</h3>
            <p>Konfigurasi dan pengaturan perangkat jaringan.</p>
        </div>

        <div class="skill-card reveal">
            <div class="icon">🔌</div>
            <h3>Fiber Optic</h3>
            <p>Pengenalan, penyambungan, dan pengujian fiber optik.</p>
        </div>

        <div class="skill-card reveal">
            <div class="icon">💻</div>
            <h3>Computer</h3>
            <p>Dasar perawatan dan troubleshooting komputer.</p>
        </div>

        <div class="skill-card reveal">
            <div class="icon">🏕️</div>
            <h3>Scouting</h3>
            <p>Kepemimpinan, kedisiplinan, dan kepramukaan.</p>
        </div>

        <div class="skill-card reveal">
            <div class="icon">🤝</div>
            <h3>Leadership</h3>
            <p>Kerja sama, komunikasi, dan tanggung jawab organisasi.</p>
        </div>

    </div>

</section>

<!-- EXPERIENCE -->

<section class="experience" id="experience">

    <h2 class="title">My <span>Experience</span></h2>

    <div class="experience-container">

        <div class="experience-card reveal">
            <h3>Praktik Kerja Lapangan (PKL)</h3>
            <p>
                Mengembangkan pengalaman kerja dan keterampilan
                teknis di bidang teknologi informasi dan
                jaringan komputer.
            </p>
        </div>

        <div class="experience-card reveal">
            <h3>Pratama Putra</h3>
            <p>
                Pengalaman kepemimpinan dalam kegiatan
                kepramukaan tingkat Penggalang.
            </p>
        </div>

        <div class="experience-card reveal">
            <h3>Pradana Putra</h3>
            <p>
                Mengembangkan kepemimpinan, koordinasi,
                kedisiplinan, dan tanggung jawab dalam
                organisasi Ambalan Pramuka.
            </p>
        </div>

        <div class="experience-card reveal">
            <h3>Bendahara IPNU PAC Kroya</h3>
            <p>
                Berperan dalam bidang pengelolaan keuangan
                dan administrasi organisasi.
            </p>
        </div>

        <div class="experience-card reveal">
            <h3>Anggota KNPI PAC Kroya</h3>
            <p>
                Berpartisipasi dalam kegiatan organisasi
                kepemudaan dan pengembangan potensi generasi muda.
            </p>
        </div>

    </div>

</section>

<!-- EDUCATION -->

<section id="education">

    <h2 class="title">My <span>Education</span></h2>

    <div class="education-container reveal">

        <h3>SMK Bangun Bangsa Mandiri Kandanghaur</h3>

        <p>
            Jurusan: Teknik Komputer dan Jaringan (TKJ)
        </p>

        <p>
            Fokus pembelajaran:
            Jaringan komputer, konfigurasi jaringan,
            perangkat komputer, dan fiber optik.
        </p>

    </div>

</section>

<!-- PROJECT -->

<section class="project" id="project">

    <h2 class="title">My <span>Projects</span></h2>

    <div class="project-container">

        <div class="project-card reveal">
            <h3>Personal Portfolio</h3>
            <p>
                Pengembangan website portofolio pribadi
                menggunakan HTML, CSS, dan JavaScript.
            </p>
        </div>

        <div class="project-card reveal">
            <h3>Fiber Optic Network</h3>
            <p>
                Pembelajaran dan praktik pengujian
                redaman jaringan fiber optik.
            </p>
        </div>

        <div class="project-card reveal">
            <h3>Network Configuration</h3>
            <p>
                Pembelajaran konfigurasi dan pengelolaan
                jaringan komputer.
            </p>
        </div>

    </div>

</section>

<!-- CONTACT -->

<section id="contact">

    <h2 class="title">Contact <span>Me</span></h2>

    <div class="contact-content">

        <p>
            Terima kasih telah mengunjungi portofolio saya.
            Mari terhubung dan berbagi pengalaman.
        </p>

        <div class="contact-links">

            <!-- GANTI LINK DENGAN AKUN MILIKMU -->

            <a href="https://wa.me/083197356237">
                WhatsApp
            </a>

            <a href="https://instagram.com/username">
                Instagram
            </a>

            <a href="email:manjayus209@gmail.com">
                Email
            </a>

        </div>

    </div>

</section>

<!-- FOOTER -->

<footer>

    <p>© 2026 Jayusman | Personal Portfolio</p>

    <p>Designed & Developed by Jayusman</p>

</footer>

<script>

// MENU MOBILE

function toggleMenu() {

    document.getElementById("navbar")
    .classList.toggle("active");

}

// ANIMATION SCROLL

const observer = new IntersectionObserver((entries) => {

    entries.forEach(entry => {

        if(entry.isIntersecting) {

            entry.target.classList.add("show");

        }

    });

}, { threshold: 0.15 });

document.querySelectorAll(".reveal").forEach(element => {

    observer.observe(element);

});

</script>

</body>
</html>