<!DOCTYPE html>
<html lang="en">
<!-- giggle-factory.com/homevideos/index.html -->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Funny Home Videos | Giggle Factory</title>
  <link href="https://fonts.googleapis.com/css2?family=Bubblegum+Sans&family=Fredoka:wght@400;600&display=swap" rel="stylesheet">
  <style>
    :root {
        --comic-yellow: #fff3cd;
        --comic-border: #2c3e50;
        --card-bg: #ffffff;
        --card-border: #4a90e2;
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
        max-width: 1100px;
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
        max-width: 1100px;
        width: 100%;
        margin-bottom: 40px;
    }

    .page-title-box {
        background-color: var(--card-bg);
        border: 4px solid var(--comic-border);
        border-radius: 24px;
        padding: 25px 30px;
        box-shadow: 6px 6px 0px var(--comic-border);
        text-align: center;
        margin-bottom: 30px;
    }

    .page-title-box h1 {
        font-family: 'Bubblegum+Sans', cursive;
        font-size: 2.5rem;
        color: #2980b9;
        margin: 0 0 10px 0;
        letter-spacing: 1px;
    }

    .page-title-box p {
        font-size: 1.15rem;
        color: #333;
        margin: 0;
    }

    .video-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
        gap: 25px;
    }

    .video-card {
        background-color: var(--card-bg);
        border: 4px solid var(--card-border);
        border-radius: 24px;
        padding: 25px;
        box-shadow: 6px 6px 0px var(--comic-border);
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        height: 100%;
        box-sizing: border-box;
        transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .video-card:hover {
        transform: translateY(-4px);
        box-shadow: 8px 10px 0px var(--comic-border);
    }

    .video-card h3 {
        font-family: 'Bubblegum+Sans', cursive;
        font-size: 1.6rem;
        color: #2980b9;
        margin-top: 0;
        margin-bottom: 12px;
        letter-spacing: 1px;
    }

    .meta-info {
        font-size: 0.9rem;
        color: #555;
        margin-bottom: 12px;
        background: #f8f9fa;
        padding: 6px 10px;
        border-radius: 8px;
        border: 2px dashed #cbd5e1;
    }

    .description {
        font-size: 1.05rem;
        line-height: 1.4;
        color: #333;
        margin-bottom: 20px;
        flex-grow: 1;
    }

    .watch-btn {
        display: inline-block;
        text-align: center;
        background-color: var(--accent-orange);
        color: #ffffff;
        padding: 10px 18px;
        text-decoration: none;
        font-weight: 600;
        border-radius: 50px;
        border: 3px solid var(--comic-border);
        box-shadow: 4px 4px 0px var(--comic-border);
        transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .watch-btn:hover {
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
    <div class="page-title-box">
      <h1>Funny Home Videos</h1>
      <p>Explore our curated collection of hilarious family bloopers, security camera chaos, and pet antics!</p>
    </div>

    <div class="video-grid">
      <!-- VIDEO ENTRY 1 -->
      <div class="video-card">
        <div>
          <h3>Fails You Can Feel – Classic Home Bloopers</h3>
          <div class="meta-info"><strong>Duration:</strong> 6:51 | <strong>Source:</strong> AFV</div>
          <div class="description">A timeless collection of classic backyard mishaps, slip-and-slides gone wrong, and hilarious lawn games.</div>
        </div>
        <a href="https://giggle-factory.com/homevideos/aNSWjJZudI0.html" class="watch-btn">Watch Video</a>
      </div>

      <!-- VIDEO ENTRY 2 -->
      <div class="video-card">
        <div>
          <h3>Best Security Camera Fails</h3>
          <div class="meta-info"><strong>Duration:</strong> 10:34 | <strong>Source:</strong> AFV</div>
          <div class="description">Real doorbell camera footage capturing pets taking over, awkward deliveries, and neighborhood slips on ice.</div>
        </div>
        <a href="https://giggle-factory.com/homevideos/b5KJzhd9yYc.html" class="watch-btn">Watch Video</a>
      </div>

      <!-- VIDEO ENTRY 3 -->
      <div class="video-card">
        <div>
          <h3>Caught in 4K – Funniest Home Security Moments</h3>
          <div class="meta-info"><strong>Duration:</strong> 20:06 | <strong>Source:</strong> AFV Official</div>
          <div class="description">High-definition home footage showing unscripted family reactions, surprise guests, and porch mix-ups.</div>
        </div>
        <a href="https://giggle-factory.com/homevideos/fpQ2iHnHRxQ.html" class="watch-btn">Watch Video</a>
      </div>

      <!-- VIDEO ENTRY 4 -->
      <div class="video-card">
        <div>
          <h3>Funniest Fails of the Year Review</h3>
          <div class="meta-info"><strong>Duration:</strong> 12:45 | <strong>Source:</strong> AFV</div>
          <div class="description">An extensive countdown featuring birthday party pinata chaos, pool jumps, and unexpected pet antics.</div>
        </div>
        <a href="https://giggle-factory.com/homevideos/1SEE8ZlK6yY.html" class="watch-btn">Watch Video</a>
      </div>

      <!-- VIDEO ENTRY 5 -->
      <div class="video-card">
        <div>
          <h3>Kids Doing the Funniest Things</h3>
          <div class="meta-info"><strong>Duration:</strong> 5:20 | <strong>Source:</strong> Family Archive</div>
          <div class="description">Hilarious moments of toddlers reacting to sour lemons, messy ice cream cones, and game nights.</div>
        </div>
        <a href="https://giggle-factory.com/homevideos/pz9Q6TorjhM.html" class="watch-btn">Watch Video</a>
      </div>

      <!-- VIDEO ENTRY 6 -->
      <div class="video-card">
        <div>
          <h3>Unstoppable Pet Madness</h3>
          <div class="meta-info"><strong>Duration:</strong> 4:15 | <strong>Source:</strong> Pet Bloopers</div>
          <div class="description">Cats mistaking mirrors for rivals and dogs getting caught red-handed taking food off kitchen counters.</div>
        </div>
        <a href="https://giggle-factory.com/homevideos/DN-kgOqPouo.html" class="watch-btn">Watch Video</a>
      </div>

      <!-- VIDEO ENTRY 7 -->
      <div class="video-card">
        <div>
          <h3>Backyard BBQ Disasters</h3>
          <div class="meta-info"><strong>Duration:</strong> 7:30 | <strong>Source:</strong> Home Clips</div>
          <div class="description">Grilling fails, lawn furniture collapses, and trampoline flips caught live on camera.</div>
        </div>
        <a href="https://giggle-factory.com/homevideos/Dml0SmQ9WrA.html" class="watch-btn">Watch Video</a>
      </div>
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
