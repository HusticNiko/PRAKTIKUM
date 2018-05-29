<!DOCTYPE html>
<html>
<title>Menjava sličic</title>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="Style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
    <div class="w3-bar w3-white w3-wide w3-padding w3-card">
        <a href="Index" id="underline" class="w3-bar-item w3-button"><b>Menjava sličic</b></a>
        <!-- Float links to the right. Hide them on small screens -->
        <input class="w3-input w3-border" type="text" placeholder="Search.." id="searchbar">
        <div class="div-select">
            <select name="kat" class="w3-select" id="sel1">
                <option>- Filter -</option>
                <option value="fif">FIFA</option>
                <option value="nba">NBA</option>
                <option value="hrp">Harry Potter</option>
                <option value="pep">Pujsa Pepa</option>
                <option value="pkm">Pokémon</option>
                <option value="dgm">Digimon</option>
                <option value="grf">Garfield</option>
                <option value="stw">Star Wars</option>
            </select>
        </div>
        <div class="w3-right w3-hide-small" style="margin-top:-40px">
            <a href="Kategorije" class="w3-bar-item w3-button">Kategorije</a>
            <a href="mojeZbirke" class="w3-bar-item w3-button">Moje zbirke</a>
            <a href="Sporocila" class="w3-bar-item w3-button">Sporočila</a>
            <a href="mojProfil" class="w3-bar-item w3-button">Moj profil</a>
            <a href="Registracija" class="w3-bar-item w3-button">Prijava/Registracija</a>
        </div>
    </div>
</div>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
    <img class="w3-image" src="/w3images/architect.jpg" alt="Architecture" width="1500" height="800">
    <div class="w3-display-middle w3-margin-top w3-center">
        <h1 class="w3-xxlarge w3-text-white"> <span class="w3-hide-small w3-text-light-grey">Architects</span></h1>
    </div>
</header>

<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1564px">

    <!-- Project Section -->
    <div class="w3-container w3-padding-32" id="projects">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Projects</h3>
    </div>

    <div class="w3-row-padding">
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding">Summer House</div>
                <img src="/w3images/house5.jpg" alt="House" style="width:100%">
            </div>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding">Brick House</div>
                <img src="/w3images/house2.jpg" alt="House" style="width:100%">
            </div>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding">Renovated</div>
                <img src="/w3images/house3.jpg" alt="House" style="width:100%">
            </div>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding">Barn House</div>
                <img src="/w3images/house4.jpg" alt="House" style="width:100%">
            </div>
        </div>
    </div>

    <div class="w3-row-padding">
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding">Summer House</div>
                <img src="/w3images/house2.jpg" alt="House" style="width:99%">
            </div>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding">Brick House</div>
                <img src="/w3images/house5.jpg" alt="House" style="width:99%">
            </div>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding">Renovated</div>
                <img src="/w3images/house4.jpg" alt="House" style="width:99%">
            </div>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding">Barn House</div>
                <img src="/w3images/house3.jpg" alt="House" style="width:99%">
            </div>
        </div>
    </div>

    <!-- About Section -->
    <div class="w3-container w3-padding-32" id="about">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">About</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint
            occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
            laboris nisi ut aliquip ex ea commodo consequat.
        </p>
    </div>

    <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
            <img src="/w3images/team2.jpg" alt="John" style="width:100%">
            <h3>John Doe</h3>
            <p class="w3-opacity">CEO & Founder</p>
            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
            <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <img src="/w3images/team1.jpg" alt="Jane" style="width:100%">
            <h3>Jane Doe</h3>
            <p class="w3-opacity">Architect</p>
            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
            <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <img src="/w3images/team3.jpg" alt="Mike" style="width:100%">
            <h3>Mike Ross</h3>
            <p class="w3-opacity">Architect</p>
            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
            <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <img src="/w3images/team4.jpg" alt="Dan" style="width:100%">
            <h3>Dan Star</h3>
            <p class="w3-opacity">Architect</p>
            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
            <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
    </div>

    <!-- Contact Section -->
    <div class="w3-container w3-padding-32" id="contact">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Contact</h3>
        <p>Lets get in touch and talk about your next project.</p>

        <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
        <input class="w3-input w3-section w3-border" type="text" placeholder="Email" required name="Email">
        <input class="w3-input w3-section w3-border" type="text" placeholder="Subject" required name="Subject">
        <input class="w3-input w3-section w3-border" type="text" placeholder="Comment" required name="Comment">
        <button class="w3-button w3-black w3-section" type="submit">
            <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>

    </div>

    <!-- End page content -->
</div>

<footer class="w3-center w3-black w3-padding-16">

</footer>


</body>
</html>