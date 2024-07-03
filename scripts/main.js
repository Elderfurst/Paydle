const aboutButton = document.getElementById("about-button");
aboutButton.addEventListener("click", showAbout);

const gameButton = document.getElementById("game-button");
gameButton.addEventListener("click", showGame);

const statsButton = document.getElementById("stats-button");
statsButton.addEventListener("click", showStats);

function showAbout() {
    $("#about").show();
    $("#game").hide();
    $("#stats").hide();
}

function showGame() {
    $("#about").hide();
    $("#game").show();
    $("#stats").hide();
}

function showStats() {
    $("#about").hide();
    $("#game").hide();
    $("#stats").show();
}
