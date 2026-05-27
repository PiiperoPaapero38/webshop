<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="We have a wide collection of electronics, phones, books and games">
    <meta name="keywords" content="phones, books, games, electronics">
    <link rel="stylesheet" href="css/styles.css">
    <title>Our store</title>
</head>
<body>
    
<?php include "includes/nav.php" ?>
<?php include "includes/header.php" ?>


<main>

    <div class="left">
        <div class="section-title">Product categories</div>
        <?php $categories = getCategories() ?>
        <?php
            foreach($categories as $category) {
                ?>

                <a href="category.php?category=<?php echo urlencode($category['category']) ?>">
                    <?php echo ucfirst($category['category']) ?>
                </a>
            <?php

            }
            
            ?>

    </div>

    <div class="right">
        <div class="section-title">Home page</div>
            <div class="product">
                <div class="product-left">
                    <img src="products/coding.jpg" alt="">
                </div>
                <div class="product-right">
                    <p class="title">
                        <a href="">Coding is fun</a>
                    </p>
                    <p class="description">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae eius a, qui fugit rerum veniam neque optio voluptatibus, eligendi praesentium ea aut nam in inventore expedita. Obcaecati sapiente quos nulla.
                    </p>
                    <p class="price">
                        29.99 &euro;
                    </p>
                </div>
            </div>

    </div>
</main>

<?php include "includes/footer.php" ?>

    <script src="javascript/script.js"></script>
</body>
</html>