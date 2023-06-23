// Pleiades
// #ID = 21604

// $0000: Score: x0000 [Lower4]
function scoreX0000() => low4(0x000000)

// $0001: Score: 0x000 [Lower4]
function scoreX000() => low4(0x000001)

// $0002: Score: 00x00 [Lower4]
function scoreX00() => low4(0x000002)

// $0003: Score: 000x0 [Lower4]
function scoreX0() => low4(0x000003)

// $0004: Score: 0000x [Lower4]
function scoreX() => low4(0x000004)

// $0006: Lives [Lower4]
function lives() => low4(0x000006)

// $0007: Not in menu = 00 [8-bit]
function notInMenu() => byte(0x000007)

// $0008: Enemies remaining: x0 {Lower4]
function enemiesX0() => low4(0x000008)

// $0009: Enemies remaining: 0x {Lower4]
function enemiesX() => low4(0x000009)

// $00E7: Demo timer [8-bit]
function demoTimer() => byte(0x0000E7)

// $02E6: Demo mode = 0 [8-bit]
//        30 = start of main menu
function demoMode() => byte(0x0002E6)

// $02F1: Round [8-bit]
function round() => byte(0x0002F1)

// $02F2: Game mode [8-bit]
//        0 = regular game
//        1 = only stage 1
//        2 = only stage 2
//        3 = only stage 3
//        4 = only stage 4
function gameMode() => byte(0x0002F2)

function lbScore() {
    measured((scoreX0000() * 10000 + scoreX000() * 1000 + scoreX00() * 100 + scoreX0() * 10 +
             scoreX()))
}

function lbRounds() {
    measured((1 + round()))
}

function demo() {
    return unless(once(notInMenu() != 0 && demoTimer() == 255 && demoMode() == 1)) && 
        (always_false() || (never((notInMenu() != 0 && demoMode() == 48))))
}

function score(x5) {
    return gameMode() == 0 && prev(scoreX0000()) == (x5 - 1) && scoreX0000() == x5
}

function beatLevel(mode, loop) {
    return gameMode() == mode && prev(round()) == (loop - 1) && round() == loop
}

function deathless(mode, loop) {
    return gameMode() == mode && prev(round()) == (loop - 1) && round() == loop && unless(once(prev(lives()) > lives()))
}

ModeLookup = {
    0: "Protecting the solar system",
    1: "Defending Earth from Martian attackers",
    2: "Defeating space monsters",
    3: "Destroying the Martian battleship",
    4: "Returning to Earth",
}

achievement(
    title = "Rookie", points = 2,
    description = "[Mode 0] Complete Round 1",
    trigger = beatLevel(0, 1) && demo()
)

achievement(
    title = "Pilot", points = 5,
    description = "[Mode 0] Complete Round 1 without losing a spaceship",
    trigger = deathless(0, 1) && demo()
)

achievement(
    title = "Survivor", points = 5,
    description = "[Mode 0] Complete Rounds 1 and 2 without losing a spaceship",
    trigger = deathless(0, 2) && demo()
)

achievement(
    title = "Commander", points = 10,
    description = "[Mode 0] Earn a score of 20000",
    trigger = score(2) && demo()
)

achievement(
    title = "General", points = 25,
    description = "[Mode 0] Earn a score of 30000",
    trigger = score(3) && demo()
)

achievement(
    title = "Earth Defender", points = 10,
    description = "[Mode 1] Complete Round A",
    trigger = beatLevel(1, 10) && demo()
)

achievement(
    title = "Expert Martian Hunter", points = 25,
    description = "[Mode 2] Complete Round A",
    trigger = beatLevel(2, 10) && demo()
)

achievement(
    title = "Mars Menace", points = 10,
    description = "[Mode 3] Complete Round A",
    trigger = beatLevel(3, 10) && demo()
)

achievement(
    title = "Crowded Star Ways", points = 25,
    description = "[Mode 4] Complete Round B",
    trigger = beatLevel(4, 11) && demo()
)

leaderboard(
    id = 67897, title = "High Score (Mode 0)",
    description = "Get a high score",
    start  = prev(lives()) == 1 && lives() == 0 && gameMode() == 0,
    cancel = always_false(),
    submit = always_true(),
    value = lbScore(),
    format = "VALUE"
)

leaderboard(
    id = 67898, title = "Rounds (Mode 0)",
    description = "Reach the highest round",
    start  = prev(lives()) == 1 && lives() == 0 && gameMode() == 0,
    cancel = always_false(),
    submit = always_true(),
    value = lbRounds(),
    format = "VALUE"
)

leaderboard(
    id = 67899, title = "High Score (Mode 1)",
    description = "Get a high score",
    start  = prev(lives()) == 1 && lives() == 0 && gameMode() == 1,
    cancel = always_false(),
    submit = always_true(),
    value = lbScore(),
    format = "VALUE"
)

leaderboard(
    id = 67900, title = "Rounds (Mode 1)",
    description = "Reach the highest round",
    start  = prev(lives()) == 1 && lives() == 0 && gameMode() == 1,
    cancel = always_false(),
    submit = always_true(),
    value = lbRounds(),
    format = "VALUE"
)

leaderboard(
    id = 67901, title = "High Score (Mode 2)",
    description = "Get a high score",
    start  = prev(lives()) == 1 && lives() == 0 && gameMode() == 2,
    cancel = always_false(),
    submit = always_true(),
    value = lbScore(),
    format = "VALUE"
)

leaderboard(
    id = 67902, title = "Rounds (Mode 2)",
    description = "Reach the highest round",
    start  = prev(lives()) == 1 && lives() == 0 && gameMode() == 2,
    cancel = always_false(),
    submit = always_true(),
    value = lbRounds(),
    format = "VALUE"
)

leaderboard(
    id = 67903, title = "High Score (Mode 3)",
    description = "Get a high score",
    start  = prev(lives()) == 1 && lives() == 0 && gameMode() == 3,
    cancel = always_false(),
    submit = always_true(),
    value = lbScore(),
    format = "VALUE"
)

leaderboard(
    id = 67904, title = "Rounds (Mode 3)",
    description = "Reach the highest round",
    start  = prev(lives()) == 1 && lives() == 0 && gameMode() == 3,
    cancel = always_false(),
    submit = always_true(),
    value = lbRounds(),
    format = "VALUE"
)

leaderboard(
    id = 67905, title = "High Score (Mode 4)",
    description = "Get a high score",
    start  = prev(lives()) == 1 && lives() == 0 && gameMode() == 4,
    cancel = always_false(),
    submit = always_true(),
    value = lbScore(),
    format = "VALUE"
)

leaderboard(
    id = 67906, title = "Rounds (Mode 4)",
    description = "Reach the highest round",
    start  = prev(lives()) == 1 && lives() == 0 && gameMode() == 4,
    cancel = always_false(),
    submit = always_true(),
    value = lbRounds(),
    format = "VALUE"
)

rich_presence_conditional_display(once(notInMenu() != 0 && demoTimer() == 255 && demoMode() == 1) && never((notInMenu() != 0 &&
     demoMode() == 48)), "In Demo")

rich_presence_display("{0} | Round {1} | {2} Lives | Score: {3}",
    rich_presence_lookup("Mode", gameMode(), ModeLookup),
    rich_presence_value("Number", round() + 1),
    rich_presence_value("Number", lives()),
    rich_presence_value("Number", scoreX0000() * 10000 + scoreX000() * 1000 + scoreX00() * 100 + scoreX0() * 10 + scoreX())
)
