// Ballistic: Ecks vs. Sever
// #ID = 3702

// $007F7E: Playing and not paused = 0x20 [8-bit]
//          otherwise 0x01
function playingAndNotPaused() => byte(0x007F7E)

// $0082C0: main menu = 0xc1 [16-bit]
function mainMenu() => word(0x0082C0)

// $009BD8: Player Pointer [24-bit]
//          +0x7f20 = Health [16-bit]
//          default = 0x64
//          +0x7f22 = Armor rating [16-bit]
//          pickup = 0x32
//          +0x7f2a = Equipped weapon [16-bit]
//          0 = Knife
//          1 = Sever Pistol
//          2 = Ecks Pistol
//          3 = Frag grenade
//          4 = EMP Grenade
//          7 = Sniper
//          8 = Sniper scope
//          9 = Missile
//          b = Smart missile
//          c = MP7
//          d = Neosted
//          e = M16K
//          f = DICW
//          12 = Missile scope
//          14 = Smart missile scope
//          +0x7f34 = Weapon attacking [16-bit]
//          +0x7f3c = Knife "ammo" [16-bit]
//          +0x7f3e = Sever Pistol ammo [16-bit]
//          +0x7f40 = Ecks Pistol ammo [16-bit]
//          +0x7f42 = Frag grenade ammo [16-bit]
//          +0x7f44 = EMP grenade ammo [16-bit]
//          +0x7f4a = Sniper ammo [16-bit]
//          +0x7f4e = Missile ammo [16-bit]
//          +0x7f52 = Smart missile ammo [16-bit]
//          +0x7f54 = MP7 ammo [16-bit]
//          +0x7f56 = Neosted ammo [16-bit]
//          +0x7f58 = M16K ammo [16-bit]
//          +0x7f5a = DICW ammo [16-bit]
//          +0x7f68 = Knife "reloads" [16-bit]
//          +0x7f6a = Sever Pistol reloads [16-bit]
//          +0x7f6c = Ecks Pistol reloads [16-bit]
//          +0x7f6e = Frag grenade reloads [16-bit]
//          +0x7f70 = EMP grenade reloads [16-bit]
//          +0x7f76 = Sniper reloads [16-bit]
//          +0x7f7a = Missile reloads [16-bit]
//          +0x7f7e = Smart missile reloads [16-bit]
//          +0x7f80 = MP7 reloads [16-bit]
//          +0x7f82 = Neosted reloads [16-bit]
//          +0x7f84 = M16K reloads [16-bit]
//          +0x7f86 = DICW reloads [16-bit]
function playerPointer() => word(0x009BD8)
function playerPointer() => tbyte(0x009BD8)

// $00CD90: Enemies remaining [16-bit]
function enemiesRemaining() => word(0x00CD90)

// $00CD9C: Hostages saved [16-bit]
function hostagesSaved() => word(0x00CD9C)

// $00CE04: 01 = Ecks, 02 = Sever [8-bit]
function ecks02Sever() => byte(0x00CE04)

// $00CE36: Level ID [8-bit]
function levelId() => byte(0x00CE36)

// $00D26C: Level timer [32-bit]
function levelTimer() => dword(0x00D26C)

// $00D270: Cheats [8-bit flag]
//          bit0=deathwish
//          bit1=bigpocket
//          bit2=tooledup
//          bit3=coldfeet
//          bit4=oohstopit
//          bit5=mybigun
//          bit6=acmebangs
//          bit7=hornblow
function cheatsDeathwish() => bit0(0x00D270)
function cheatsBigpocket() => bit1(0x00D270)
function cheatsTooledup() => bit2(0x00D270)
function cheatsColdfeet() => bit3(0x00D270)
function cheatsOohstopit() => bit4(0x00D270)
function cheatsMybigun() => bit5(0x00D270)
function cheatsAcmebangs() => bit6(0x00D270)
function cheats() => byte(0x00D270)

// $00D271: Cheats [8-bit]
//          bit0=doyoucme
function cheatsDoyoucme() => bit0(0x00D271)
function cheats() => byte(0x00D271)

// $0145D8: Bullet display [32-bit]
function bulletDisplay() => dword(0x0145D8)

// $01464C: Cartridge display [32-bit]
function cartridgeDisplay() => dword(0x01464C)

// $014AB0: Alarm = 01 [8-bit]
function alarm() => byte(0x014AB0)

// $0153F5: Level complete = 0xb9 [8-bit]
function levelComplete() => byte(0x0153F5)

// $016AD0: Game speed? lol [16-bit]
function gameSpeedLol() => word(0x016AD0)

// $024FCA: Cheat 2 collected [16-bit]
function cheat2Collected() => word(0x024FCA)

// $02B642: Cheat 3 collected [16-bit]
function cheat3Collected() => word(0x02B642)

// $02D776: Cheat 5 collected [16-bit]
function cheat5Collected() => word(0x02D776)

// $02E18A: Cheat 4 collected [16-bit]
function cheat4Collected() => word(0x02E18A)

// $0361A2: Cheat 9 collected [16-bit]
function cheat9Collected() => word(0x0361A2)

// $0383EE: Cheat 8 collected [16-bit]
function cheat8Collected() => word(0x0383EE)

// $039DBE: Cheat 6 collected [16-bit]
function cheat6Collected() => word(0x039DBE)

// $03AAB2: IR goggles collected [16-bit]
function irGogglesCollected() => word(0x03AAB2)

// $03AC2A: Cheat 1 collected [16-bit]
function cheat1Collected() => word(0x03AC2A)

// $03B6B6: Missile stash center [16-bit]
function missileStashCenter() => word(0x03B6B6)

// $03B6FA: Missile stash right [16-bit]
function missileStashRight() => word(0x03B6FA)

// $03B73E: Missile stash left [16-bit]
function missileStashLeft() => word(0x03B73E)

// $03BEBC: Missile stash right pot broken [16-bit]
function missileStashRightPotBroken() => word(0x03BEBC)

// $03BF88: Missile stash middle pot broken [16-bit]
function missileStashMiddlePotBroken() => word(0x03BF88)

// $03BFCC: Missile stash left pot broken [16-bit]
function missileStashLeftPotBroken() => word(0x03BFCC)

// $03DD12: Cheat 7 collected [16-bit]
function cheat7Collected() => word(0x03DD12)

function Password1() => byte(0x015450)
function Password2() => byte(0x015451)
function Password3() => byte(0x015452)
function Password4() => byte(0x015453)
function Password5() => byte(0x015454)
function Password6() => byte(0x015455)
function Password7() => byte(0x015456)
function Password8() => byte(0x015457)
function Password9() => byte(0x015458)

function CheatProtection() {
    return cheatsDeathwish() == 0 && cheatsBigpocket() == 0 &&
               cheatsTooledup() == 0 && cheatsColdfeet() == 0 && cheatsOohstopit() == 0 && cheatsMybigun() == 0 &&
               cheatsAcmebangs() == 0 && cheatsDoyoucme() == 0
}

function Password() {
    return Password4() != 108 && Password4() != 121 && Password5() == 0
}

//function Password(first, second, third, fourth, fifth, sixth, seventh, eighth, ninth) {
//    return Password1() == first && Password2() == second && Password3() == third && Password4() == fourth 
//    && Password5() == fifth && Password6() == sixth && Password7() == seventh && Password8() == eighth
//    && Password9() == ninth
//}

function Progression(level) {
    return repeated(5, levelId() == level) && levelComplete() == 185 && never(levelId() != level) && never(mainMenu() == 193) && CheatProtection()
}

function ParTime(level, time) {
    return repeated(5, levelId() == level) && trigger_when(levelComplete() == 185) && levelTimer() < time && never(levelId() != level) && never(mainMenu() == 193) && CheatProtection()
}

function SniperBullets(level, shots) {
    return repeated(5, levelId() == level) && trigger_when((prev(enemiesRemaining()) == 1 && enemiesRemaining()
               == 0)) && disable_when((word(playerPointer() + 0x007F2A) != 8) && dword(playerPointer() + 0x007F34) == 1,
               until=levelTimer() == 0) && disable_when(repeated(shots + 1, (prev(dword(playerPointer() + 0x007F34)) == 0)
               && dword(playerPointer() + 0x007F34) == 1), until=levelTimer() == 0) && never(levelId() != level) && never(mainMenu() == 193) && CheatProtection()
}

function KnifeOnly(level) {
    return repeated(5, levelId() == level) && trigger_when(levelComplete() == 185) && disable_when((word(playerPointer() +
               0x007F2A) != 0) && dword(playerPointer() + 0x007F34) == 1, until=levelTimer() == 0) && never(levelId() != level) && never(mainMenu() == 193) && CheatProtection()
}

function NoAlarm(level) {
    return repeated(5, levelId() == level) && trigger_when(levelComplete() == 185) && disable_when(alarm() == 1,
               until=levelTimer() == 0) && never(levelId() != level) && never(mainMenu() == 193) && CheatProtection()
}

function KillAll(level) {
    return repeated(5, levelId() == level) && trigger_when(levelComplete() == 185) && enemiesRemaining() == 0 && never(levelId() != level) && never(mainMenu() == 193) && CheatProtection()
}

function LimitedMissiles(level, shots) {
    return repeated(5, levelId() == level) && trigger_when(levelComplete() == 185) && unless(repeated(shots + 1, (word(playerPointer() +
               0x007F2A) == 20) && (prev(word(playerPointer() + 0x007F34)) == 0) && word(playerPointer() + 0x007F34) ==
               1)) && never(levelId() != level) && never(mainMenu() == 193) && CheatProtection()
}

function LBStart(level) {
    return levelId() == level && levelTimer() > 0 && CheatProtection()
}

achievement(
    title = "Many Players Gave Up, but Not You!", points = 5,
    description = "Infiltrate the mansion",
    trigger = Progression(0)
)

achievement(
    title = "Hostage Liberation", points = 5,
    description = "Rescue Agent Kaos and the three hostages",
    trigger = Progression(1)
)

achievement(
    title = "Goggled Guardian", points = 5,
    description = "Rescue the ambassador",
    trigger = Progression(2)
)

achievement(
    title = "Hostile Housecleaning", points = 5,
    description = "Clear the mansion of all terrorists",
    trigger = Progression(3)
)

achievement(
    title = "Cameras. Everywhere.", points = 5,
    description = "Meet with Agent Kaos at the boardroom",
    trigger = Progression(4)
)

achievement(
    title = "Ecks: Elevator Explorer", points = 5,
    description = "Disable the lockdown mechanisms",
    trigger = Progression(5)
)

achievement(
    title = "Just Taking This Out for a Spin", points = 5,
    description = "Escape the headquarters",
    trigger = Progression(6)
)

achievement(
    title = "Why Are These Stored in the Public", points = 5,
    description = "Destroy the ammo caches and board the subway",
    trigger = Progression(7)
)

achievement(
    title = "After Him!", points = 5,
    description = "Chase after the terrorist leader",
    trigger = Progression(8)
)

achievement(
    title = "Locked Doors Within Locked Doors", points = 5,
    description = "Defuse the bomb and exit to the roof",
    trigger = Progression(9)
)

achievement(
    title = "Agent of Kaos", points = 25,
    description = "Defeat the leader of G.O.D.S.",
    trigger = Progression(10)
)

achievement(
    title = "Bazaar Rescue", points = 5,
    description = "Rescue Agent Merren",
    trigger = Progression(20)
)

achievement(
    title = "Too Many Grenades", points = 5,
    description = "Find the location of the inner compound",
    trigger = Progression(21)
)

achievement(
    title = "Run!", points = 5,
    description = "Escape to the aqueduct",
    trigger = Progression(22)
)

achievement(
    title = "Dogs and Missiles", points = 5,
    description = "Collect the information disk",
    trigger = Progression(23)
)

achievement(
    title = "Missile Valley", points = 5,
    description = "Enter the cave complex",
    trigger = Progression(24)
)

achievement(
    title = "Dog Pits", points = 5,
    description = "Navigate the tunnels",
    trigger = Progression(25)
)

achievement(
    title = "Remote Bomber", points = 5,
    description = "Halt progress on the bio-chemical weapons",
    trigger = Progression(26)
)

achievement(
    title = "One Woman Elite Squad", points = 5,
    description = "Find the location of the missile silo",
    trigger = Progression(27)
)

achievement(
    title = "More Tunnels", points = 5,
    description = "Enter the nuclear bunker",
    trigger = Progression(28)
)

achievement(
    title = "Tracks of Death", points = 5,
    description = "Reach the central silos",
    trigger = Progression(29)
)

achievement(
    title = "Nuclear Launch Averted", points = 25,
    description = "Prevent the missile launch",
    trigger = Progression(30)
)

achievement(
    title = "Quick Infiltration", points = 5,
    description = "Complete Ecks's first mission in 1 minute and 45 seconds",
    trigger = ParTime(0, 6360)
)

achievement(
    title = "Operation Salvation", points = 5,
    description = "Complete SMOKEY in 2 minutes and 30 seconds",
    trigger = ParTime(1, 9060)
)

achievement(
    title = "Rescue in the Dark", points = 5,
    description = "Complete BUTTERFLY in 1 minute and 45 seconds",
    trigger = ParTime(2, 6360)
)

achievement(
    title = "Mansion Maelstrom", points = 5,
    description = "Complete COVEY in 2 minutes and 45 seconds",
    trigger = ParTime(3, 9960)
)

achievement(
    title = "Headquarter Hustle", points = 10,
    description = "Complete TIGER in 2 minutes and 30 seconds",
    trigger = ParTime(4, 9060)
)

achievement(
    title = "Vent Velociraptor", points = 10,
    description = "Complete HORNET in 4 minutes and 30 seconds",
    trigger = ParTime(5, 16260)
)

achievement(
    title = "Need for Speed", points = 5,
    description = "Complete LITTERBUG in 2 minutes and 30 seconds",
    trigger = ParTime(6, 9060)
)

achievement(
    title = "Subway Scuffle", points = 10,
    description = "Complete MUSTANG in 4 minutes",
    trigger = ParTime(7, 14460)
)

achievement(
    title = "On His Tail", points = 5,
    description = "Complete SPECTRE in 2 minutes",
    trigger = ParTime(8, 7260)
)

achievement(
    title = "Demolition Expert", points = 5,
    description = "Complete NIMROD in 3 minutes",
    trigger = ParTime(9, 10860)
)

achievement(
    title = "Hitman", points = 10,
    description = "Complete SPOOKY in 2 minutes",
    trigger = ParTime(10, 7260)
)

achievement(
    title = "Bazaar Barrage", points = 5,
    description = "Complete Sever's first mission in 2 minutes",
    trigger = ParTime(20, 7260)
)

achievement(
    title = "Grenadeproof", points = 5,
    description = "Complete RAVEN in 1 minute and 30 seconds",
    trigger = ParTime(21, 5460)
)

achievement(
    title = "Run! Faster!", points = 3,
    description = "Complete FIREFLY in 1 minute",
    trigger = ParTime(22, 3660)
)

achievement(
    title = "General's Downfall", points = 2,
    description = "Complete BULLDOG in 1 minute and 30 seconds",
    trigger = ParTime(23, 5460)
)

achievement(
    title = "Rocket Runner", points = 5,
    description = "Complete DRAGON in 1 minute",
    trigger = ParTime(24, 3660)
)

achievement(
    title = "Ms. Mole", points = 5,
    description = "Complete LOUDMOUTH in 2 minutes",
    trigger = ParTime(25, 7260)
)

achievement(
    title = "Chemical Stinger", points = 10,
    description = "Complete STINGER in 5 minutes",
    trigger = ParTime(26, 18060)
)

achievement(
    title = "Escort", points = 10,
    description = "Complete NAIL in 6 minutes",
    trigger = ParTime(27, 21660)
)

achievement(
    title = "Crevice Commander", points = 5,
    description = "Complete ZORRO in 2 minutes",
    trigger = ParTime(28, 7260)
)

achievement(
    title = "Human Minecart", points = 5,
    description = "Complete XRAY in 2 minutes",
    trigger = ParTime(29, 7260)
)

achievement(
    title = "Robot Rush", points = 10,
    description = "Complete REDDOG in 2 minutes and 30 seconds",
    trigger = ParTime(30, 9060)
)

achievement(
    title = "Present 1", points = 3,
    description = "Uncover cheat 1",
    trigger = levelId() == 0 && prev(cheat1Collected()) == 1 && cheat1Collected() == 0 
    && levelTimer() > 0 && CheatProtection()
)

achievement(
    title = "Present 2", points = 3,
    description = "Uncover cheat 2",
    trigger = levelId() == 4 && prev(cheat2Collected()) == 1 && cheat2Collected() == 0 
    && levelTimer() > 0 && CheatProtection()
)

achievement(
    title = "Present 3", points = 3,
    description = "Uncover cheat 3",
    trigger = levelId() == 5 && prev(cheat3Collected()) == 1 && cheat3Collected() == 0 
    && levelTimer() > 0 && CheatProtection()
)

achievement(
    title = "Present 4", points = 3,
    description = "Uncover cheat 4",
    trigger = levelId() == 7 && prev(cheat4Collected()) == 1 && cheat4Collected() == 0 
    && levelTimer() > 0 && CheatProtection()
)

achievement(
    title = "Present 5", points = 3,
    description = "Uncover cheat 5",
    trigger = levelId() == 9 && prev(cheat5Collected()) == 1 && cheat5Collected() == 0 
    && levelTimer() > 0 && CheatProtection()
)

achievement(
    title = "Present 6", points = 3,
    description = "Uncover cheat 6",
    trigger = levelId() == 20 && prev(cheat6Collected()) == 1 && cheat6Collected() == 0 
    && levelTimer() > 0 && CheatProtection()
)

achievement(
    title = "Present 7", points = 3,
    description = "Uncover cheat 7",
    trigger = levelId() == 22 && prev(cheat7Collected()) == 1 && cheat7Collected() == 0 
    && levelTimer() > 0 && CheatProtection()
)

achievement(
    title = "Present 8", points = 3,
    description = "Uncover cheat 8",
    trigger = levelId() == 25 && prev(cheat8Collected()) == 1 && cheat8Collected() == 0 
    && levelTimer() > 0 && CheatProtection()
)

achievement(
    title = "Present 9", points = 3,
    description = "Uncover cheat 9",
    trigger = levelId() == 28 && prev(cheat9Collected()) == 1 && cheat9Collected() == 0 
    && levelTimer() > 0 && CheatProtection()
)

achievement(
    title = "Tactical Gear", points = 2,
    description = "Reach a full armor rating",
    trigger = prev(word(playerPointer() + 0x007F22)) >= 50 && word(playerPointer() + 0x007F22) == 100 && CheatProtection()
)

achievement(
    title = "Eyes of Liberation", points = 1,
    description = "Take the IR Goggles",
    trigger = levelId() == 2 && prev(irGogglesCollected()) == 1 && irGogglesCollected() == 0 
    && levelTimer() > 0 && CheatProtection()
)

achievement(
    title = "One Shot, One Kill", points = 5,
    description = "Defeat all enemies in Ecks's first mission using the Hecate and without missing a shot",
    trigger = SniperBullets(0, 9)
)

achievement(
    title = "Assassin", points = 5,
    description = "Complete Sever's first mission only using the knife",
    trigger = KnifeOnly(20)
)

achievement(
    title = "Solid Ecks", points = 5,
    description = "Complete TIGER without tripping an alarm",
    trigger = NoAlarm(4)
)

achievement(
    title = "Terrorist Sweep", points = 5,
    description = "Complete HORNET with no enemies remaining",
    trigger = KillAll(5)
)

achievement(
    title = "Missile Aficionado", points = 10,
    description = "Complete STINGER in 8 missiles or less",
    trigger = LimitedMissiles(26, 8)
)

achievement(
    title = "MISSILE LAUN... IN CAV...", points = 3,
    description = "Take the missile stash in DRAGON",
    trigger = levelId() == 24 && levelTimer() > 0 && missileStashRightPotBroken() == 1 && missileStashMiddlePotBroken() == 1 && 
              missileStashLeftPotBroken() == 1 && missileStashRight() == 0 && missileStashCenter() == 0 && missileStashLeft() == 0 && CheatProtection()
)

leaderboard(
    id = 111000013, title = "ECKS",
    description = "Par time - 1:45",
    start  = LBStart(0),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000014, title = "SMOKEY",
    description = "Par time - 2:30",
    start  = LBStart(1),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000015, title = "BUTTERFLY",
    description = "Par time - 1:45",
    start  = LBStart(2),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000016, title = "COVEY",
    description = "Par time - 2:45",
    start  = LBStart(3),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000017, title = "TIGER",
    description = "Par time - 2:30",
    start  = LBStart(4),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000018, title = "HORNET",
    description = "Par time - 4:30",
    start  = LBStart(5),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000019, title = "LITTERBUG",
    description = "Par time - 2:30",
    start  = LBStart(6),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000020, title = "MUSTANG",
    description = "Par time - 4:00",
    start  = LBStart(7),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000021, title = "SPECTRE",
    description = "Par time - 2:00",
    start  = LBStart(8),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000022, title = "NIMROD",
    description = "Par time - 3:00",
    start  = LBStart(9),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000023, title = "SPOOKY",
    description = "Par time - 2:00",
    start  = LBStart(10),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000024, title = "SEVER",
    description = "Par time - 2:00",
    start  = LBStart(20),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000025, title = "RAVEN",
    description = "Par time - 1:30",
    start  = LBStart(21),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000026, title = "FIREFLY",
    description = "Par time - 1:00",
    start  = LBStart(22),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000027, title = "BULLDOG",
    description = "Par time - 1:30",
    start  = LBStart(23),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000028, title = "DRAGON",
    description = "Par time - 1:00",
    start  = LBStart(24),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000029, title = "LOUDMOUTH",
    description = "Par time - 2:00",
    start  = LBStart(25),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000030, title = "STINGER",
    description = "Par time - 5:00",
    start  = LBStart(26),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000031, title = "NAIL",
    description = "Par time - 6:00",
    start  = LBStart(27),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000032, title = "ZORRO",
    description = "Par time - 2:00",
    start  = LBStart(28),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000033, title = "XRAY",
    description = "Par time - 2:00",
    start  = LBStart(29),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 111000034, title = "REDDOG",
    description = "Par time - 2:30",
    start  = LBStart(30),
    cancel = mainMenu() == 193,
    submit = levelComplete() == 185,
    value = measured(levelTimer()),
    format = "FRAMES", lower_is_better = true
)
