const aboutButton = document.getElementById("about-button");
aboutButton.addEventListener("click", showAbout);

const gameButton = document.getElementById("game-button");
gameButton.addEventListener("click", showGame);

const statsButton = document.getElementById("stats-button");
statsButton.addEventListener("click", showStats);

showGame();

function showAbout() {
    console.log("showing about");
    $("#about").show();
    $("#game").hide();
    $("#stats").hide();
}

function showGame() {
    console.log("showing game");
    $("#about").hide();
    $("#game").show();
    $("#stats").hide();
}

function showStats() {
    console.log("showing stats");
    $("#about").hide();
    $("#game").hide();
    $("#stats").show();
}
