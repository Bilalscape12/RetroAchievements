// Shrek: Swamp Kart Speedway
// #ID = 4895

// $016128: Time [64-bit]
//          +0 = xx:xx:xx:xy
//          +1 = xx:xx:xx:yx
//          +2 = xx:xx:xy:xx
//          +3 = xx:xx:yx:xx
//          +4 = xx:xy:xx:xx
//          +5 = xx:yx:xx:xx
function time() => byte(0x016128)
function timeFull() => dword(0x016128)

// $016130: Place [8-bit]
//          01 = first place
function place() => byte(0x016130)

// $02B048: Map [32-bit]
function map() => dword(0x02B048)

// $02B208: Shrek tokens collected [8-bit]
function shrekTokensCollected() => byte(0x02B208)

// $02B20A: Horseshoes collected [8-bit]
//          max: 7 idk what they do though
function horseshoesCollected() => byte(0x02B20A)

// $02B20E: Lap [8-bit]
function lap() => byte(0x02B20E)

// $02D7F0: main menu = 0x0515 [16-bit]
//          in-game = 8ccd
//          race complete screen = 2835
function mainMenu() => word(0x02D7F0)

// $02FB0A: Difficulty [8-bit]
function difficulty() => byte(0x02FB0A)

// $02FCE8: Donkey unlocked [Bit0]
function donkeyUnlocked() => bit4(0x0E779)

// $02FCEA: Monsieur Hood unlocked [Bit0]
function monsieurHoodUnlocked() => bit5(0x0E779)

// $02FCE9: Big Bad Wolf unlocked [Bit0]
function bigBadWolfUnlocked() => bit6(0x0E779)

// $02FCEB: Lord Farquaad unlocked [Bit0]
function lordFarquaadUnlocked() => bit7(0x0E779)

// $02FD90: Training [32-bit]
function training() => dword(0x02FD90)

function TimeTrial(level, centiseconds) {
    return (time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 + byte(0x01612C) *
               6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000 + 0) <= centiseconds && 
              map() == level && mainMenu() == 36045 && trigger_when((prev(lap()) == 3 && lap() == 4))
}

function beat(location) {
    return mainMenu() == 10293 && ((prev(bitcount(0x02fba0+location)) == 3 && bitcount(0x02fba0+location) == 4) ||
              (prev(bitcount(0x02fba0+location+4)) == 3 && bitcount(0x02fba0+location+4) == 4) ||
               (prev(bitcount(0x02fba0+location+8)) == 3 && bitcount(0x02fba0+location+8) == 4) ||
               (prev(bitcount(0x02fba0+location+12)) == 3 && bitcount(0x02fba0+location+12) == 4) ||
               (prev(bitcount(0x02fba0+location+16)) == 3 && bitcount(0x02fba0+location+16) == 4) ||
               (prev(bitcount(0x02fba0+location+20)) == 3 && bitcount(0x02fba0+location+20) == 4) ||
               (prev(bitcount(0x02fba0+location+24)) == 3 && bitcount(0x02fba0+location+24) == 4) ||
               (prev(bitcount(0x02fba0+location+28)) == 3 && bitcount(0x02fba0+location+28) == 4) ||
               (prev(bitcount(0x02fba0+location+32)) == 3 && bitcount(0x02fba0+location+32) == 4) ||
               (prev(bitcount(0x02fba0+location+36)) == 3 && bitcount(0x02fba0+location+36) == 4) ||
               (prev(bitcount(0x02fba0+location+40)) == 3 && bitcount(0x02fba0+location+40) == 4) ||
               (prev(bitcount(0x02fba0+location+44)) == 3 && bitcount(0x02fba0+location+44) == 4) ||
               (prev(bitcount(0x02fba0+location+48)) == 3 && bitcount(0x02fba0+location+48) == 4) ||
               (prev(bitcount(0x02fba0+location+52)) == 3 && bitcount(0x02fba0+location+52) == 4) ||
               (prev(bitcount(0x02fba0+location+56)) == 3 && bitcount(0x02fba0+location+56) == 4) ||
               (prev(bitcount(0x02fba0+location+60)) == 3 && bitcount(0x02fba0+location+60) == 4) ||
               (prev(bitcount(0x02fba0+location+64)) == 3 && bitcount(0x02fba0+location+64) == 4) ||
               (prev(bitcount(0x02fba0+location+68)) == 3 && bitcount(0x02fba0+location+68) == 4) ||
               (prev(bitcount(0x02fba0+location+72)) == 3 && bitcount(0x02fba0+location+72) == 4) ||
               (prev(bitcount(0x02fba0+location+76)) == 3 && bitcount(0x02fba0+location+76) == 4) ||
               (prev(bitcount(0x02fba0+location+80)) == 3 && bitcount(0x02fba0+location+80) == 4) ||
               (prev(bitcount(0x02fba0+location+84)) == 3 && bitcount(0x02fba0+location+84) == 4) ||
               (prev(bitcount(0x02fba0+location+88)) == 3 && bitcount(0x02fba0+location+88) == 4) ||
               (prev(bitcount(0x02fba0+location+92)) == 3 && bitcount(0x02fba0+location+92) == 4) ||
               (prev(bitcount(0x02fba0+location+96)) == 3 && bitcount(0x02fba0+location+96) == 4) ||
               (prev(bitcount(0x02fba0+location+100)) == 3 && bitcount(0x02fba0+location+100) == 4) ||
               (prev(bitcount(0x02fba0+location+104)) == 3 && bitcount(0x02fba0+location+104) == 4) ||
               (prev(bitcount(0x02fba0+location+108)) == 3 && bitcount(0x02fba0+location+108) == 4) ||
               (prev(bitcount(0x02fba0+location+112)) == 3 && bitcount(0x02fba0+location+112) == 4) ||
               (prev(bitcount(0x02fba0+location+116)) == 3 && bitcount(0x02fba0+location+116) == 4) ||
               (prev(bitcount(0x02fba0+location+120)) == 3 && bitcount(0x02fba0+location+120) == 4) ||
               (prev(bitcount(0x02fba0+location+124)) == 3 && bitcount(0x02fba0+location+124) == 4) ||
               (prev(bitcount(0x02fba0+location+128)) == 3 && bitcount(0x02fba0+location+128) == 4) ||
               (prev(bitcount(0x02fba0+location+132)) == 3 && bitcount(0x02fba0+location+132) == 4) ||
               (prev(bitcount(0x02fba0+location+136)) == 3 && bitcount(0x02fba0+location+136) == 4) ||
               (prev(bitcount(0x02fba0+location+140)) == 3 && bitcount(0x02fba0+location+140) == 4))
}

function Progression(level1, level2, level3, level4) {
    return mainMenu() == 36045 &&
              ((measured(tally(4, 
                    once(difficulty() == 0 && training() == 0 && map() == level1 && place() <= 3
                     && prev(lap()) == 3 && lap() == 4), 
                    once(difficulty() == 0 && training() == 0 && map() == level2 && place() <= 3
                     && prev(lap()) == 3 && lap() == 4), 
                    once(difficulty() == 0 && training() == 0 && map() == level3 && place() <= 3
                     && prev(lap()) == 3 && lap() == 4), 
                    once(difficulty() == 0 && training() == 0 && map() == level4 && place() <= 3
                     && prev(lap()) == 3 && lap() == 4)
                ), when=difficulty() == 0)) ||
               (measured(tally(4, 
                    once(difficulty() == 1 && training() == 0 && map() == level1 && place() <= 2
                     && prev(lap()) == 3 && lap() == 4), 
                    once(difficulty() == 1 && training() == 0 && map() == level2 && place() <= 2
                     && prev(lap()) == 3 && lap() == 4), 
                    once(difficulty() == 1 && training() == 0 && map() == level3 && place() <= 2
                     && prev(lap()) == 3 && lap() == 4), 
                    once(difficulty() == 1 && training() == 0 && map() == level4 && place() <= 2
                     && prev(lap()) == 3 && lap() == 4)
                ), when=difficulty() == 1)) ||
               (measured(tally(4, 
                    once(difficulty() == 2 && training() == 0 && map() == level1 && place() <= 1
                     && prev(lap()) == 3 && lap() == 4), 
                    once(difficulty() == 2 && training() == 0 && map() == level2 && place() <= 1
                     && prev(lap()) == 3 && lap() == 4), 
                    once(difficulty() == 2 && training() == 0 && map() == level3 && place() <= 1
                     && prev(lap()) == 3 && lap() == 4), 
                    once(difficulty() == 2 && training() == 0 && map() == level4 && place() <= 1
                     && prev(lap()) == 3 && lap() == 4)
                ), when=difficulty() == 2)))
}

achievement(
    title = "Fabled Ability", points = 1,
    description = "Gather 4 Shrek Tokens and unlock your character's special abililty",
    trigger = prev(shrekTokensCollected()) == 3 && shrekTokensCollected() == 4 && mainMenu() == 36045
)

achievement(
    title = "Gathering Luck", points = 1,
    description = "Collect 7 horseshoes",
    trigger = prev(horseshoesCollected()) == 6 && horseshoesCollected() == 7 && mainMenu() == 36045
)

achievement(
    title = "Get Out of MY Swamp", points = 5,
    description = "Complete Swamp Fever in Story mode",
    trigger = beat(0)
)

achievement(
    title = "A Quick Run Through the Forest", points = 5,
    description = "Complete Forest Run in Story mode",
    trigger = beat(1)
)

achievement(
    title = "Sowing the Seeds of Speed", points = 5,
    description = "Complete Country Hustle in Story mode",
    trigger = beat(2)
)

achievement(
    title = "Jousting on Wheels", points = 10,
    description = "Complete Dragon Strip in Story mode",
    trigger = beat(3)
)

achievement(
    title = "Donkey Is One Cool Donkey", points = 5,
    description = "Complete Swamp Rally in Story mode on Medium or higher and unlock Donkey",
    trigger = prev(donkeyUnlocked()) == 0 && donkeyUnlocked() == 1 && difficulty() >= 1 && mainMenu() == 10293
)

achievement(
    title = "A Thief, Crook, and Hero", points = 5,
    description = "Complete Forest Run in Story mode on Medium or higher and unlock Monsieur Hood",
    trigger = prev(monsieurHoodUnlocked()) == 0 && monsieurHoodUnlocked() == 1 && difficulty() >= 1 && mainMenu() == 10293
)

achievement(
    title = "Granny Is Looking a Little Angry Today", points = 5,
    description = "Complete Country Hustle in Story mode on Hard and unlock the Big Bad Wolf",
    trigger = prev(bigBadWolfUnlocked()) == 0 && bigBadWolfUnlocked() == 1 && difficulty() == 2 && mainMenu() == 10293
)

achievement(
    title = "Ruler of Duloc", points = 25,
    description = "Complete Dragon Strip in Story mode on Hard and unlock Lord Farquaad",
    trigger = prev(lordFarquaadUnlocked()) == 0 && lordFarquaadUnlocked() == 1 && difficulty() == 2 && mainMenu() == 10293
)

achievement(
    title = "Shrek's Boggin' Bayou - Time Trial", points = 3,
    description = "Complete the track in under 1:13:00",
    trigger = TimeTrial(0, 7300)
)

achievement(
    title = "Swamp Fever - Time Trial", points = 3,
    description = "Complete the track in under 1:30:00",
    trigger = TimeTrial(1, 9000)
)

achievement(
    title = "Deadwood Dash - Time Trial", points = 3,
    description = "Complete the track in under 1:48:00",
    trigger = TimeTrial(2, 10800)
)

achievement(
    title = "Donkey's Giant Log Morass - Time Trial", points = 3,
    description = "Complete the track in under 2:06:00",
    trigger = TimeTrial(3, 12600)
)

achievement(
    title = "Three Pigs a Squealin' - Time Trial", points = 3,
    description = "Complete the track in under 1:36:00",
    trigger = TimeTrial(4, 9600)
)

achievement(
    title = "Little Red's Raceway - Time Trial", points = 3,
    description = "Complete the track in under 1:17:00",
    trigger = TimeTrial(5, 7700)
)

achievement(
    title = "Gingerbread Village Dash - Time Trial", points = 3,
    description = "Complete the track in under 2:06:00",
    trigger = TimeTrial(6, 12600)
)

achievement(
    title = "Monsieur's Tree Top Hood - Time Trial", points = 3,
    description = "Complete the track in under 2:20:00",
    trigger = TimeTrial(7, 14000)
)

achievement(
    title = "Sunflower Lane - Time Trial", points = 3,
    description = "Complete the track in under 2:03:00",
    trigger = TimeTrial(8, 12300)
)

achievement(
    title = "Windmill Alley - Time Trial", points = 3,
    description = "Complete the track in under 2:20:00",
    trigger = TimeTrial(9, 14000)
)

achievement(
    title = "Goldilock's Way - Time Trial", points = 3,
    description = "Complete the track in under 2:28:00",
    trigger = TimeTrial(10, 14800)
)

achievement(
    title = "Big Bad Autobahn - Time Trial", points = 3,
    description = "Complete the track in under 2:38:00",
    trigger = TimeTrial(11, 15800)
)

achievement(
    title = "Badlands - Time Trial", points = 3,
    description = "Complete the track in under 2:15:00",
    trigger = TimeTrial(12, 13500)
)

achievement(
    title = "Off-Road Suspension Bridge - Time Trial", points = 3,
    description = "Complete the track in under 3:00:00",
    trigger = TimeTrial(13, 18000)
)

achievement(
    title = "Courtyard Lariat - Time Trial", points = 3,
    description = "Complete the track in under 3:05:00",
    trigger = TimeTrial(14, 18500)
)

achievement(
    title = "Parapet Peril - Time Trial", points = 3,
    description = "Complete the track in under 3:40:00",
    trigger = TimeTrial(15, 22000)
)

leaderboard(
    id = 111000001, title = "Shrek's Boggin' Bayou",
    description = "Best time",
    start  = map() == 0 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000002, title = "Swamp Fever",
    description = "Best time",
    start  = map() == 1 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000003, title = "Deadwood Dash",
    description = "Best time",
    start  = map() == 2 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000004, title = "Donkey's Giant Log Morass",
    description = "Best time",
    start  = map() == 3 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000005, title = "Three Pigs a Squealin'",
    description = "Best time",
    start  = map() == 4 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000006, title = "Little Red's Raceway",
    description = "Best time",
    start  = map() == 5 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000007, title = "Gingerbread Village Dash",
    description = "Best time",
    start  = map() == 6 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000008, title = "Monsieur's Tree Top Hood",
    description = "Best time",
    start  = map() == 7 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000009, title = "Sunflower Lane",
    description = "Best time",
    start  = map() == 8 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000010, title = "Windmill Alley",
    description = "Best time",
    start  = map() == 9 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000011, title = "Goldilock's Way",
    description = "Best time",
    start  = map() == 10 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000012, title = "Big Bad Autobahn",
    description = "Best time",
    start  = map() == 11 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000013, title = "Badlands",
    description = "Best time",
    start  = map() == 12 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000014, title = "Off-Road Suspension Bridge",
    description = "Best time",
    start  = map() == 13 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000015, title = "Courtyard Lariat",
    description = "Best time",
    start  = map() == 14 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 111000016, title = "Parapet Peril",
    description = "Best time",
    start  = map() == 15 && lap() == 1 && timeFull() == 0 && word(0x01612C) == 0,
    cancel = mainMenu() == 1301,
    submit = lap() == 4,
    value = measured((time() + byte(0x016129) * 10 + byte(0x01612A) * 100 + byte(0x01612B) * 1000 +
             byte(0x01612C) * 6000 + byte(0x01612D) * 60000 + byte(0x01612E) * 360000 + byte(0x01612F) * 3600000)),
    format = "MILLISECS", lower_is_better = true
)
