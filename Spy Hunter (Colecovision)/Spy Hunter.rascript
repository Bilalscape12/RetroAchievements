// Spy Hunter
// #ID = 22895

// $0142: Lives [8-bit]
//        0xff = game over
function lives() => byte(0x000142)

LivesLookup = {
    0xff: "Game Over!",
    0x00: "Last Life",
    0x01: "1 Life",
    0x02: "2 Lives",
    0x03: "3 Lives",
    0x04: "4 Lives",
    0x05: "5 Lives",
    0x06: "6 Lives",
}

// $0143: Score [24-bit]
function score() => tbyte(0x000143)

// $0146: Timer [16-bit]
function timer() => word(0x000146)

// $015A: Icy road slowdown = 0x202 [16-bit]
function icyRoad() => word(0x00015A)

// $015C: Boat = 0x02 [8-bit]
function boat() => byte(0x00015C)

// $0188: Skill level [8-bit]
function skillLevel() => byte(0x000188)

LevelLookup = {
    0x00: "",
    0x01: "[Skill Level 1]",
    0x02: "[Skill Level 2]",
    0x03: "[Skill Level 3]",
    0x04: "[Skill Level 4]",
}

// $0196: Oil obtained = 0x03 [8-bit]
function oilObtained() => byte(0x000196)

OilLookup = {
    0x00: "",
    0x03: " | Oil",
}

// $01B4: Speed [8-bit]
//        max = 0x0b
function speed() => byte(0x0001B4)

// $0207: Amount of missile weapon [8-bit]
function amountOfMissileWeapon() => byte(0x000207)

MissileLookup = {
    0x00: "",
    0x01: " | 1 Missile",
    0x02: " | 2 Missiles",
    0x03: " | 3 Missiles",
}

// $020E: Amount of smoke weapon [8-bit]
function amountOfSmokeWeapon() => byte(0x00020E)

SmokeLookup = {
    0x00: "",
    0x01: " | 1 Smoke Screen",
    0x02: " | 2 Smoke Screen",
    0x03: " | 3 Smoke Screen",
}

TerrainLookup = {
    0x00: "",
    0x01: " | Speedboat",
    0x02: " | Icy Roads",
}

achievement(
    title = "Slip 'N Slide", points = 2,
    description = "Obtain the Oil Slick",
    id = 300836, badge = "333987", published = "3/17/2023 9:05:46 AM", modified = "3/17/2023 9:08:13 AM",
    trigger = prev(oilObtained()) == 0 && oilObtained() == 3
)

achievement(
    title = "Quick Getaway", points = 2,
    description = "Obtain the Smoke Screen",
    id = 300837, badge = "333988", published = "3/17/2023 9:05:46 AM", modified = "3/17/2023 9:08:13 AM",
    trigger = prev(amountOfSmokeWeapon()) == 0 && amountOfSmokeWeapon() == 3
)

achievement(
    title = "Firepower", points = 2,
    description = "Obtain the Missile",
    id = 300838, badge = "333989", published = "3/17/2023 9:05:47 AM", modified = "3/17/2023 9:08:13 AM",
    trigger = prev(amountOfMissileWeapon()) == 0 && amountOfMissileWeapon() == 3
)

achievement(
    title = "Full Arsenal", points = 10,
    description = "Obtain all weapons",
    id = 300849, badge = "334000", published = "3/17/2023 9:05:50 AM", modified = "3/17/2023 9:08:14 AM",
    trigger = oilObtained() == 3 && amountOfMissileWeapon() > 0 && amountOfSmokeWeapon() > 0
)

achievement(
    title = "Time for a Vehicle Change", points = 5,
    description = "Get in the Spy Hunter speedboat",
    id = 300839, badge = "333990", published = "3/17/2023 9:05:47 AM", modified = "3/18/2023 12:25:45 AM",
    trigger = prev(boat()) != 2 && boat() == 2
)

achievement(
    title = "Icy Terrain", points = 3,
    description = "Drive on icy roads",
    id = 300840, badge = "333991", published = "3/17/2023 9:05:47 AM", modified = "3/17/2023 11:56:29 PM",
    trigger = icyRoad() == 514 && lives() != 255
)

achievement(
    title = "Speed Freak", points = 10,
    description = "Maintain max speed for 30 seconds",
    id = 300846, badge = "333997", published = "3/17/2023 9:05:49 AM", modified = "3/17/2023 9:05:49 AM",
    trigger = repeated(1800, speed() == 11) && never(speed() != 11)
)

achievement(
    title = "Speedy Cleanup", points = 5,
    description = "Score 10k points before the timer runs out",
    id = 300841, badge = "334003", published = "3/17/2023 9:05:48 AM", modified = "3/17/2023 11:49:24 AM",
    trigger = timer() > 0 && prev(score()) < 10000 && trigger_when(score() >= 10000)
)

achievement(
    title = "Top Ranking Agent", points = 5,
    description = "Score 18k points before the timer runs out",
    id = 300842, badge = "334004", published = "3/17/2023 9:05:48 AM", modified = "3/17/2023 11:49:25 AM",
    trigger = timer() > 0 && prev(score()) < 18000 && trigger_when(score() >= 18000)
)

achievement(
    title = "Spy Investigator", points = 5,
    description = "Attain a score of 30k points",
    id = 300843, badge = "333994", published = "3/17/2023 9:05:48 AM", modified = "3/17/2023 9:05:48 AM",
    trigger = prev(score()) < 30000 && score() >= 30000
)

achievement(
    title = "Spy Tracker", points = 10,
    description = "Attain a score of 60k points",
    id = 300844, badge = "333995", published = "3/17/2023 9:05:49 AM", modified = "3/17/2023 9:05:49 AM",
    trigger = prev(score()) < 60000 && score() >= 60000
)

achievement(
    title = "Defender of the Nation", points = 25,
    description = "Attain a score of 75k points on skill level 4",
    id = 300845, badge = "333996", published = "3/17/2023 9:05:49 AM", modified = "3/17/2023 9:05:49 AM",
    trigger = skillLevel() == 4 && prev(score()) < 75000 && score() >= 75000
)

achievement(
    title = "Spy Destroyer", points = 25,
    description = "Attain a score of 90k points",
    id = 300847, badge = "333998", published = "3/17/2023 9:05:50 AM", modified = "3/17/2023 9:05:50 AM",
    trigger = prev(score()) < 90000 && score() >= 90000
)

achievement(
    title = "Spy Assassin", points = 50,
    description = "Attain a score of 120k points",
    id = 300848, badge = "333999", published = "3/17/2023 9:05:50 AM", modified = "3/17/2023 9:05:50 AM",
    trigger = prev(score()) < 120000 && score() >= 120000
)

leaderboard(
    id = 61294, title = "High Score (Skill Level 1)",
    description = "Attain the highest score",
    start  = timer() == 999 && skillLevel() == 1,
    cancel = always_false(),
    submit = lives() == 255,
    value = score(),
    format = "VALUE"
)

leaderboard(
    id = 61300, title = "High Score (Skill Level 2)",
    description = "Attain the highest score",
    start  = timer() == 999 && skillLevel() == 2,
    cancel = always_false(),
    submit = lives() == 255,
    value = score(),
    format = "VALUE"
)

leaderboard(
    id = 61301, title = "High Score (Skill Level 3)",
    description = "Attain the highest score",
    start  = timer() == 999 && skillLevel() == 3,
    cancel = always_false(),
    submit = lives() == 255,
    value = score(),
    format = "VALUE"
)

leaderboard(
    id = 61302, title = "High Score (Skill Level 4)",
    description = "Attain the highest score",
    start  = timer() == 999 && skillLevel() == 4,
    cancel = always_false(),
    submit = lives() == 255,
    value = score(),
    format = "VALUE"
)

rich_presence_conditional_display(skillLevel() != 0, "{0} {1} | {2}{3}{4} {5} {6}",
    rich_presence_lookup("Level", skillLevel(), LevelLookup),
    rich_presence_lookup("Lives", lives(), LivesLookup),
    rich_presence_value("Number", score()),
    rich_presence_lookup("Terrain", byte(0x00015B), TerrainLookup),
    rich_presence_lookup("Oil", oilObtained(), OilLookup),
    rich_presence_lookup("Smoke", amountOfSmokeWeapon(), SmokeLookup),
    rich_presence_lookup("Missile", amountOfMissileWeapon(), MissileLookup)
)

rich_presence_display("Hunting spies")
