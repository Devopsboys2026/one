<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Mini Amazon Clone</title>

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f3f3f3;
}

/* Navbar */
.navbar {
    background: #131921;
    color: white;
    display: flex;
    align-items: center;
    padding: 10px;
}

.logo {
    font-size: 22px;
    font-weight: bold;
    margin-right: 20px;
}

.search-box {
    flex: 1;
    display: flex;
}

.search-box input {
    width: 100%;
    padding: 8px;
    border: none;
}

.search-box button {
    padding: 8px;
    background: orange;
    border: none;
}

/* Products */
.container {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 15px;
    padding: 20px;
}

.product {
    background: white;
    padding: 10px;
    border-radius: 5px;
    text-align: center;
}

.product img {
    width: 100%;
    height: 150px;
    object-fit: cover;
}

.product button {
    background: #ffd814;
    border: none;
    padding: 8px;
    margin-top: 10px;
    cursor: pointer;
}
</style>
</head>

<body>

<!-- Navbar -->
<div class="navbar">
    <div class="logo">MiniAmazon</div>
    <div class="search-box">
        <input type="text" placeholder="Search products...">
        <button>Search</button>
    </div>
</div>

<!-- Product Section -->
<div class="container" id="products"></div>

<script>
const products = [
    {name: "Laptop", price: 50000, img: "https://via.placeholder.com/200"},
    {name: "Mobile", price: 20000, img: "https://via.placeholder.com/200"},
    {name: "Headphones", price: 2000, img: "https://via.placeholder.com/200"},
    {name: "Watch", price: 3000, img: "https://via.placeholder.com/200"}
];

const container = document.getElementById("products");

products.forEach(p => {
    container.innerHTML += `
        <div class="product">
            <img src="${p.img}">
            <h3>${p.name}</h3>
            <p>₹${p.price}</p>
            <button onclick="addToCart('${p.name}')">Add to Cart</button>
        </div>
    `;
});

function addToCart(name) {
    alert(name + " added to cart!");
}
</script>

</body>
</html>
