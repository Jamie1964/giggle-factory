<!DOCTYPE html>
<html lang="en">
<!-- giggle-factory.com/oops/index.html -->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Oops! Page Not Found | Giggle Factory</title>
  <link href="https://fonts.googleapis.com/css2?family=Bubblegum+Sans&family=Fredoka:wght@400;600&display=swap" rel="stylesheet">
  <style>
    :root {
        --comic-yellow: #fff3cd;
        --comic-border: #2c3e50;
        --card-bg: #ffffff;
        --card-border: #e74c3c;
        --accent-orange: #f39c12;
    }

    body {
        background-color: var(--comic-yellow);
        background-image: radial-gradient(#e67e22 15%, transparent 16%), radial-gradient(#3498db 15%, transparent 16%);
        background-size: 60px 60px;
        background-position: 0 0, 30px 30px;
        background-attachment: fixed;
        font-family: 'Fredoka', sans-serif;
        margin: 0;
        padding: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
        color: var(--comic-border);
        min-height: 100vh;
        box-sizing: border-box;
    }

    header {
        text-align: center;
        margin-bottom: 20px;
        width: 100%;
    }

    .banner-container {
        background: #ffffff;
        border: 4px solid var(--comic-border);
        border-radius: 20px;
        padding: 10px 15px;
        box-shadow: 6px 6px 0px var(--comic-border);
        display: inline-block;
        transform: rotate(-1deg);
        max-width: 100%;
        text-decoration: none;
    }

    .banner-container img {
        max-width: 100%;
        height: auto;
        display: block;
        border-radius: 12px;
    }

    .nav-container {
        max-width: 700px;
        width: 100%;
        margin-bottom: 20px;
    }

    .btn-back {
        display: inline-block;
        background-color: #ffffff;
        color: var(--comic-border);
        text-decoration: none;
        padding: 8px 16px;
        border-radius: 50px;
        border: 3px solid var(--comic-border);
        font-weight: 600;
        box-shadow: 4px 4px 0px var(--comic-border);
        transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .btn-back:hover {
        transform: translateY(-2px);
        box-shadow: 6px 6px 0px var(--comic-border);
    }

    main {
        max-width: 700px;
        width: 100%;
        margin-bottom: 40px;
        display: flex;
        justify-content: center;
    }

    .error-card {
        background-color: var(--card-bg);
        border: 4px solid var(--card-border);
        border-radius: 24px;
        padding: 40px 30px;
        box-shadow: 6px 6px 0px var(--comic-border);
        text-align: center;
        width: 100%;
        box-sizing: border-box;
    }

    .error-code {
        font-family: 'Bubblegum+Sans', cursive;
        font-size: 5rem;
        color: #e74c3c;
        margin: 0;
        letter-spacing: 2px;
        text-shadow: 3px 3px 0px var(--comic-border);
    }

    .error-card h1 {
        font-family: 'Bubblegum+Sans', cursive;
        font-size: 2.2rem;
        color: #2980b9;
        margin: 10px 0 20px 0;
        letter-spacing: 1px;
    }

    .error-card p {
        font-size: 1.15rem;
        line-height: 1.5;
        color: #333;
        margin-bottom: 30px;
    }

    .home-btn {
        display: inline-block;
        text-align: center;
        background-color: var(--accent-orange);
        color: #ffffff;
        padding: 12px 28px;
        text-decoration: none;
        font-weight: 600;
        font-size: 1.1rem;
        border-radius: 50px;
        border: 3px solid var(--comic-border);
        box-shadow: 4px 4px 0px var(--comic-border);
        transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .home-btn:hover {
        transform: translateY(-2px);
        box-shadow: 6px 6px 0px var(--comic-border);
        background-color: #e67e22;
    }

    #footer-container {
        margin-top: auto;
        display: flex;
        justify-content: center;
        width: 100%;
    }
  </style>
</head>
<body>

  <header>
    <a href="https://giggle-factory.com/index.html" class="banner-container">
      <img src="https://giggle-factory.com/images/giggle-factory-logo.jpg" alt="Giggle Factory Banner" />
    </a>
  </header>

  <div class="nav-container">
    <a href="https://giggle-factory.com/index.html" class="btn-back">&larr; Back to Main Menu</a>
  </div>

  <main>
    <div class="error-card">
      <div class="error-code">404</div>
      <h1>Oops! That Page Slipped Away</h1>
      <p>Looks like this joke fell flat or the page took a detour into the comedy vault. Don't worry, there are plenty of laughs left back on the main stage!</p>
      <a href="https://giggle-factory.com/index.html" class="home-btn">Return to Giggle Factory</a>
    </div>
  </main>

  <!-- Dynamic Footer Anchor -->
  <div id="footer-container">
    <div id="footer"></div>
  </div>

  <script>
    fetch('/footer.html')
      .then(r => r.text())
      .then(html => {
        document.getElementById('footer').innerHTML = html;

        // Run the local storage page counter
        const domain = window.location.hostname.replace(/\./g, "_");
        const page = window.location.pathname.replace(/\//g, "_") || "home";
        const counterKey = "pv_" + domain + "_" + page;

        let views = localStorage.getItem(counterKey);
        views = views ? parseInt(views) + 1 : 1;
        localStorage.setItem(counterKey, views);

        const counterElement = document.getElementById("viewCounter");
        if (counterElement) {
            counterElement.innerText = "Views: " + views;
        }
      })
      .catch(err => console.error("Footer failed to load:", err));
  </script>

</body>
</html>
