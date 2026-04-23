<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DevopsShop Pro</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

<style>
:root{
    --bg:#0f172a;
    --card:#1e293b;
    --primary:#6366f1;
    --accent:#22c55e;
    --text:#ffffff;
    --muted:#94a3b8;
}

*{margin:0;padding:0;box-sizing:border-box;}

body{
    font-family:Poppins;
    background:var(--bg);
    color:var(--text);
}

/* HEADER */
header{
    display:flex;
    justify-content:space-between;
    padding:15px 40px;
    background:rgba(15,23,42,0.7);
    backdrop-filter:blur(10px);
    position:sticky;
    top:0;
}

.logo{
    font-size:22px;
    font-weight:700;
}

nav a{
    margin:0 10px;
    color:var(--text);
    text-decoration:none;
}

.search{
    padding:8px;
    border-radius:20px;
    border:none;
}

/* HERO */
.hero{
    text-align:center;
    padding:80px 20px;
}

.hero h1{
    font-size:48px;
    background:linear-gradient(to right,#6366f1,#22c55e);
    -webkit-background-clip:text;
    color:transparent;
}

.btn{
    margin-top:20px;
    padding:12px 25px;
    border:none;
    border-radius:25px;
    background:linear-gradient(135deg,#6366f1,#22c55e);
    color:white;
    cursor:pointer;
}

/* PRODUCTS */
.products{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:20px;
    padding:40px;
}

.card{
    background:var(--card);
    border-radius:15px;
    overflow:hidden;
    transition:0.3s;
}

.card:hover{
    transform:translateY(-10px) scale(1.03);
}

.card img{
    width:100%;
    height:200px;
    object-fit:cover;
}

.card-body{
    padding:15px;
}

.price{
    color:var(--accent);
    font-weight:bold;
}

/* FOOTER */
footer{
    text-align:center;
    padding:20px;
    color:var(--muted);
}
</style>
</head>

<body>

<header>
    <div class="logo">DevopsShop</div>
    <nav>
        <a href="#">Home</a>
        <a href="#">Products</a>
        <a href="#">Deals</a>
    </nav>
    <input class="search" placeholder="Search...">
</header>

<section class="hero">
    <h1>Premium Shopping Experience</h1>
    <p>Modern UI with smooth design</p>
    <button class="btn">Shop Now</button>
</section>

<section class="products">

<div class="card">
<img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb">
<div class="card-body">
<h3>iPhone 14</h3>
<p class="price">$999</p>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45">
<div class="card-body">
<h3>MacBook Pro</h3>
<p class="price">$1999</p>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f">
<div class="card-body">
<h3>Sony Camera</h3>
<p class="price">$2499</p>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1542272604-787c3835535d">
<div class="card-body">
<h3>Nike Shoes</h3>
<p class="price">$150</p>
</div>
</div>

</section>

<footer>
© 2026 DevopsShop | Modern UI
</footer>

</body>
</html>
