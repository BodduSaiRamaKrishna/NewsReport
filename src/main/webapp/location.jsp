<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Locations</title>
</head>
<style>
 div.location-container {
        padding: 12px 16px;
      }

      .location-container h3, location-container p {
        margin: 4px;
      }
</style>
<body>
 <amp-accordion id="navigationAccordion">
        <section id="locations">
          <h2>New Report Locations</h2>
          <div>
            <div class="flex-container">
              <div class="location-container">
                <h3>SAROOR NAGAR</h3>
                <p>SAROOR NAGAR</p>
                <!-- Add Maps Embed -->
              </div>
              <div class="location-container">
                <h3>SECUNDERABAD</h3>
                <p>25 37th Ave</p>
              </div>
              <div class="location-container">
                <h3>HI-TECH City</h3>
                <p>2601 Spring St</p>
              </div>
              <div class="location-container">
                <h3>MIYAPUR</h3>
                <p>290 Santa Rosa Ave</p>
              </div>
              <div class="location-container">
                <h3>DILSHUKH NAGAR</h3>
                <p>10268 Bandley Dr</p>
              </div>
              <div class="location-container">
                <h3>KUKATPALLY</h3>
                <p>1083 S De Anza Blvd</p>
              </div>
            </div>
            <amp-iframe width="640"
              title="News Report Locations"
              height="480"
              layout="responsive"
              sandbox="allow-scripts allow-same-origin allow-popups"
              allowfullscreen
              frameborder="0"
              src="https://www.google.com/maps/d/embed?mid=1t9PIlchAYUzZ5DrXOGz529RGaI4">
              <amp-img layout="fill"
                placeholder></amp-img>
            </amp-iframe>
          </div>
          </section>
</body>
</html>