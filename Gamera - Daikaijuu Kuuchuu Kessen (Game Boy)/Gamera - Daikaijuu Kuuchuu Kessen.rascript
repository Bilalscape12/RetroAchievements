// Gamera: Daikaijuu Kuuchuu Kessen | Gamera: Guardian of the Universe
// #ID = 22424

// $980F: Main menu = 0x0d [8-bit]
function mainMenu() => byte(0x00980F)

// $C700: Round [8-bit]
function round() => byte(0x00C700)

// $C701: Main menu highlighted option [8-bit]
//        0xff = story
//        0x00 = battle
function menuOption() => byte(0x00C701)

ModeLookup = {
    0xff: "[Story]",
    0x00: "[Battle]",
}

// $C702: Fight ID [8-bit]
//        0 = vs. Gyaos
//        1 = vs. Viras
//        2 = vs. Guiron
//        3 = vs. Super Gyaos
//        4 = vs. Gamera
function fightId() => byte(0x00C702)

// $C712: P1 flying [8-bit]
function p1Flying() => byte(0x00C712)

// $C714: P1 character [8-bit]
//        0 = Gamera
//        1 = Gyaos
//        2 = Viras
//        3 = Guiron
function p1Character() => byte(0x00C714)

// $C715: P2 character [8-bit]
//        0 = Gamera
//        1 = Gyaos
//        2 = Viras
//        3 = Guiron
function p2Character() => byte(0x00C715)

// $C716: P1 rounds won [8-bit]
function p1RoundsWon() => byte(0x00C716)

// $C717: P2 rounds won [8-bit]
function p2RoundsWon() => byte(0x00C717)

// $C718: P1 position [8-bit]
//        upper left: 80
//        upper right: 40
//        bottom left: 28
//        bottom right: 14
function p1Position() => byte(0x00C718)

// $C72C: P1 health [8-bit]
//        max: 24
function p1Health() => byte(0x00C72C)

// $C72D: P2 health [8-bit]
//        max: 24
function p2Health() => byte(0x00C72D)

CharacterLookup = {
    0x00: "Gamera",
    0x01: "Gyaos",
    0x02: "Viras",
    0x03: "Guiron",
}

function defeatBoss(bossId)
{
    return fightId() == bossId && menuOption() == 255 && p2Health() == 0 && prev(p1RoundsWon()) == 1 && 
              p1RoundsWon() == 2
}

function battle(p1, p2)
{
    return menuOption() == 0 && p1Character() == p1 && p2Character() == p2 && prev(p1RoundsWon()) == 1 && 
              p1RoundsWon() == 2
}

achievement(
    title = "Blastoise Can't Do This", points = 1,
    description = "Fly!",
    id = 297972, badge = "331165", published = "3/11/2023 2:04:47 AM", modified = "3/12/2023 3:10:30 AM",
    trigger = (p1Position() == 128 || p1Position() == 64) && prev(p1Flying()) < p1Flying()
)

achievement(
    title = "Not Rodan", points = 3,
    description = "Defeat Gyaos.",
    id = 297973, badge = "331166", published = "3/11/2023 2:04:56 AM", modified = "3/12/2023 3:10:31 AM",
    trigger = defeatBoss(0)
)

achievement(
    title = "It Came from Outer Space!", points = 5,
    description = "Defeat Viras.",
    id = 297974, badge = "331167", published = "3/11/2023 2:05:01 AM", modified = "3/12/2023 3:10:31 AM",
    trigger = defeatBoss(1)
)

achievement(
    title = "The Ultimate Guard Dog", points = 5,
    description = "Defeat Guiron.",
    id = 297975, badge = "331168", published = "3/11/2023 2:05:05 AM", modified = "3/12/2023 3:10:31 AM",
    trigger = defeatBoss(2)
)

achievement(
    title = "The Archenemy Returns", points = 5,
    description = "Defeat Super Gyaos.",
    id = 297976, badge = "331169", published = "3/11/2023 2:05:09 AM", modified = "3/12/2023 3:10:32 AM",
    trigger = defeatBoss(3)
)

achievement(
    title = "At Last, a Worthy Opponent!", points = 10,
    description = "Defeat Gamera.",
    id = 297977, badge = "331170", published = "3/11/2023 2:05:13 AM", modified = "3/12/2023 3:10:32 AM",
    trigger = defeatBoss(4)
)

achievement(
    title = "Evil Triumphs", points = 1,
    description = "[Player 1] Defeat Gamera as Gyaos in Battle mode.",
    id = 297978, badge = "331171", published = "3/11/2023 2:05:22 AM", modified = "3/14/2023 6:40:28 AM",
    trigger = battle(1, 0)
)

achievement(
    title = "Pest Control", points = 1,
    description = "[Player 1] Defeat Gyaos as Viras in Battle mode.",
    id = 297979, badge = "331172", published = "3/11/2023 2:05:26 AM", modified = "3/14/2023 6:40:28 AM",
    trigger = battle(2, 1)
)

achievement(
    title = "Sliced Ika", points = 1,
    description = "[Player 1] Defeat Viras as Guiron in Battle mode.",
    id = 297980, badge = "331173", published = "3/11/2023 2:05:30 AM", modified = "3/14/2023 6:40:29 AM",
    trigger = battle(3, 2)
)

achievement(
    title = "Quick Feet", points = 10,
    description = "Win a round without taking damage.",
    id = 297981, badge = "331174", published = "3/11/2023 2:05:35 AM", modified = "3/12/2023 3:10:34 AM",
    trigger = menuOption() == 255 && p1Health() == 36 && prev(p2Health()) > 0 && trigger_when(p2Health()
               == 0)
)

achievement(
    title = "Guardian of the Universe", points = 10,
    description = "Win the game without losing a match.",
    id = 297982, badge = "331175", published = "3/11/2023 2:05:39 AM", modified = "3/12/2023 6:03:49 AM",
    trigger = menuOption() == 255 && trigger_when((fightId() == 4 && p1RoundsWon() == 2)) && 
              disable_when(p2RoundsWon() == 2, until=fightId() == 0)
)

leaderboard(
    id = 60934, title = "The Invincible Gamera",
    description = "Get the least number of deaths in a playthrough!",
    start  = menuOption() == 255 && p1Health() == 36 && p2Health() == 36,
    cancel = mainMenu() == 13,
    submit = fightId() == 4 && prev(p1RoundsWon()) == 1 && p1RoundsWon() == 2,
    value = measured(tally(0,(prev(p1Health()) > 0 && p1Health() == 0))),
    format = "VALUE", lower_is_better = true
)

rich_presence_conditional_display(mainMenu() != 13, "{0} {1} vs. {2} | Round {3} | {4}-{5}",
    rich_presence_lookup("Mode", menuOption(), ModeLookup),
    rich_presence_lookup("Character", p1Character(), CharacterLookup),
    rich_presence_lookup("Character", p2Character(), CharacterLookup),
    rich_presence_value("Number", round()),
    rich_presence_value("Number", p1RoundsWon()),
    rich_presence_value("Number", p2RoundsWon())
)

rich_presence_display("Gamera is here!")
