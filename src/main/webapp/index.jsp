<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<style>
:root {
    --primary:#0a2540;
    --accent:#00d4ff;
    --bg:#f5f7fb;
}

body {
    margin:0;
    font-family:Poppins, sans-serif;
    background:var(--bg);
}

/* HEADER */
header {
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:15px 30px;
    background:rgba(255,255,255,0.9);
    backdrop-filter: blur(10px);
    box-shadow:0 5px 15px rgba(0,0,0,0.05);
}

.logo {
    font-size:22px;
    font-weight:600;
}

.search {
    display:flex;
    background:#eee;
    padding:8px 12px;
    border-radius:30px;
}

.search input {
    border:none;
    outline:none;
    background:transparent;
}

/* HERO */
.hero {
    text-align:center;
    padding:60px 20px;
    color:white;
    background:linear-gradient(135deg, rgba(0,0,0,0.6), rgba(0,119,255,0.6)),
    url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a') center/cover;
}

.hero h1 {
    font-size:40px;
}

/* PRODUCTS */
.container {
    padding:30px;
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
    gap:20px;
}

.product {
    background:white;
    border-radius:16px;
    overflow:hidden;
    box-shadow:0 10px 25px rgba(0,0,0,0.08);
    transition:0.3s;
}

.product:hover {
    transform:translateY(-8px) scale(1.02);
    box-shadow:0 20px 40px rgba(0,0,0,0.15);
}

.product img {
    width:100%;
    height:200px;
    object-fit:cover;
}

.product-body {
    padding:15px;
}

.price {
    font-weight:600;
}

/* BUTTON */
.btn {
    width:100%;
    padding:10px;
    border:none;
    border-radius:10px;
    background:linear-gradient(135deg,#00d4ff,#0077ff);
    color:white;
    cursor:pointer;
    transition:0.3s;
}

.btn:hover {
    transform:scale(1.05);
}

/* ANIMATION */
.product {
    animation:fadeIn 0.6s ease;
}

@keyframes fadeIn {
    from {opacity:0; transform:translateY(20px);}
    to {opacity:1; transform:translateY(0);}
}
</style>
</head>

<body>

<header>
    <div class="logo">NexusShop</div>
    <div class="search">
        <input type="text" placeholder="Search products...">
    </div>
</header>

<section class="hero">
    <h1>Shop Smart. Shop Fast.</h1>
    <p>Best deals on electronics, fashion & more</p>
</section>

<div class="container" id="products"></div>

<script>
const products = [
 {name:"iPhone 14", price:70000, img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
 {name:"Laptop", price:50000, img:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8"},
 {name:"Headphones", price:3000, img:"https://images.unsplash.com/photo-1518449037947-9bde5c7d7d26"},
 {name:"Shoes", price:2500, img:"https://images.unsplash.com/photo-1542291026-7eec264c27ff"}
];

const container = document.getElementById("products");

products.forEach(p=>{
    container.innerHTML += `
    <div class="product">
        <img src="${p.img}">
        <div class="product-body">
            <h3>${p.name}</h3>
            <p class="price">₹${p.price}</p>
            <button class="btn" onclick="addCart('${p.name}')">Add to Cart</button>
        </div>
    </div>`;
});

function addCart(name){
    alert(name + " added to cart!");
}
</script>

</body>
</html>
