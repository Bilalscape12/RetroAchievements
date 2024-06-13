// Godzilla: Destroy all Monsters Melee
// #ID = 25444

// $2089AC: Game Mode [32-bit BE]
//          1 = Versus/Gallery/Options
//          2 = Team Battle
//          3 = Melee
//          4 = Destruction
//          5 = Adventure
//          6 = Survival
function gameMode() => dword_be(0x2089AC)

// $2089B0: Demo/Attract mode = 0x01 [8-bit]
function demoAttractMode() => byte(0x2089B0)

// $2089B1: Game Mode [ASCII]
//          Gallery
//          Options
function gameModeAscii() => 0x2089B1

// $208ABC: Adventure round [32-bit BE]
//          flickers a lot between rounds
//          starts at 1 and story is completed at 9
function adventureRound() => dword_be(0x208ABC)

// $208AC0: Survival kills [32-bit BE]
//          flickers a lot between rounds
function survivalKills() => dword_be(0x208AC0)

// $208AD8: City [ASCII]
//          add _Day at the end for day (LA uses lowercase day)
//          Seattle
//          Tokyo
//          SanFrancisco
//          Los_Angeles
//          London
//          Osaka
//          MonsterIsle
//          MotherShip
function cityAscii() => 0x208AD8

// $208BDC: Current map number [32-bit BE]
//          0 = (map) 1
//          1 = (map) 2 north seattle, north SF, east osaka
//          2 = (map) 3 south seattle, east SF, west osaka
function currentMapNumber() => dword_be(0x208BDC)

// $208C7C: Survival score [32-bit BE]
function survivalScore() => dword_be(0x208C7C)

// $208CC0: Character [ASCII]
//          godzilla90s
//          anguirus
//          rodan
//          godzilla2k
//          gigan
//          megalon
//          ghidorah
//          destoroyah
//          mghidorah
//          orga
//          mechazilla
function characterAscii() => 0x208CC0

// $208DE8: P1 team [32-bit BE]
//          1 = blue
//          2 = red
function p1Team() => dword_be(0x208DE8)

// $208F84: P2 team [32-bit BE]
function p2Team() => dword_be(0x208F84)

// $209120: P3 team [32-bit BE]
function p3Team() => dword_be(0x209120)

// $2092BC: P4 team [32-bit BE]
function p4Team() => dword_be(0x2092BC)

// $2092ED: Cheats [Bitflags]
//          Bit0 = DebugSoundLog (743816, doesn't do anything)
//          Bit1 = Black and White mode
//          Bit2 = Technicolor mode
//          Bit3 = 12 continue Adventure
//          Bit4 = Display version of game and time of completion in Options
function cheats1() => byte(0x2092ED)

// $2092EE: Cheats [Bitflags]
//          Bit0 = Unlock Orga
//          Bit1 = Unlock Monster Island
//          Bit2 = Unlock Mothership
//          Bit3 = Unlock all cities
//          Bit4 = P1 mini sized
//          Bit5 = P2 mini sized
//          Bit6 = P3 mini sized
//          Bit7 = P4 mini sized
function cheats2() => byte(0x2092EE)

// $2092EF: Cheats [Bitflags]
//          Bit0 = Unlock Gallery
//          Bit1 = Unlock Godzilla 2000
//          Bit2 = Unlock Gigan
//          Bit3 = Unlock King Ghidorah
//          Bit4 = Unlock Rodan
//          Bit5 = Unlock Destoroyah
//          Bit6 = Unlock Mecha-King Ghidorah
//          Bit7 = Unlock Mechagodzilla
function cheats3() => byte(0x2092EF)

// $2092F1: Cheats [Bitflags]
//          Bit0 = P2 invisible
//          Bit1 = P3 invisible
//          Bit2 = P4 invisible
//          Bit3 = All buildings indestructible
//          Bit4 = Military off
//          Bit5 = Player indicators always on
//          Bit6 = Energy doesn't regenerate
//          Bit7 = Energy weapons do 4x damage (No code for this)
function cheats4() => byte(0x2092F1)

// $2092F2: Cheats [Bitflags]
//          Bit0 = No status HUD
//          Bit1 = Health regenerates
//          Bit2 = Military deals 4x damage
//          Bit3 = All buildings and objects become throwable
//          Bit4 = FreeCam (Not usable I think and no code for it)
//          Bit5 = No Hedorah
//          Bit6 = All levels have Hedorah
//          Bit7 = P1 invisible
function cheats5() => byte(0x2092F2)

// $2092F3: Cheats [Bitflags]
//          Bit0 = P1 invincible
//          Bit1 = P2 invincible
//          Bit2 = P3 invincible
//          Bit3 = P4 invincible
//          Bit4 = Player 1 deals 4x damage
//          Bit5 = Player 2 deals 4x damage
//          Bit6 = Player 3 deals 4x damage
//          Bit7 = Player 4 deals 4x damage
function cheats6() => byte(0x2092F3)

// $2092F6: Cheats [Bitflags]
//          Bit0 = No maser cannons (DAG-MB96)
//          Bit1 = P1 permanent rage
//          Bit2 = P2 permanent rage
//          Bit3 = P3 permanent rage
//          Bit4 = P4 permanent rage
function cheats7() => byte(0x2092F6)

// $2092F7: Cheats [Bitflags]
//          Bit0 = P1 infinite energy
//          Bit1 = P2 infinite energy
//          Bit2 = P3 infinite energy
//          Bit3 = P4 infinite energy
//          Bit4 = No health power-ups
//          Bit5 = No Mothra power-ups
//          Bit6 = No energy power-ups
//          Bit7 = No rage power-ups
function cheats8() => byte(0x2092F7)

// $2092F8: Cheat activated display [8 Bytes]
function cheatActivatedDisplay() => byte(0x2092F8)

// $20946C: Versus/Survival/Melee/Team Battle/Destruction P1 wins [32-bit BE]
function versusSurvP1Wins() => dword_be(0x20946C)

// $209480: Versus/Survival/Melee/Team Battle/Destruction P2 wins [32-bit BE]
function versusSurvP2Wins() => dword_be(0x209480)

// $209494: Versus/Melee/Team Battle/Destruction P3 wins [32-bit BE]
function versusP3Wins() => dword_be(0x209494)

// $2094A8: Versus/Melee/Team Battle/Destruction P4 wins [32-bit BE]
function versusP4Wins() => dword_be(0x2094A8)

// $2094BC: Versus/Survival/Melee/Team Battle/Destruction rounds completed [32-bit BE]
function versusSurvRoundsCompleted() => dword_be(0x2094BC)

// $282E38: Match total time [Float BE]
//          updates on enemy defeat
function matchTime() => float_be(0x2094C8)

// $282EA8: Melee/Team Battle P1 kills [32-bit BE]
function meleeTeamBattleP1Kills() => dword_be(0x282EA8)

// $282EC0: Melee/Team Battle/Destruction P1 score [32-bit BE]
function meleeTeamBattleDestructionP1Score() => dword_be(0x282EC0)

// $282EE8: Melee/Team Battle P2 kills [32-bit BE]
function meleeTeamBattleP2Kills() => dword_be(0x282EE8)

// $282F00: Melee/Team Battle/Destruction P2 score [32-bit BE]
function meleeTeamBattleDestructionP2Score() => dword_be(0x282F00)

// $282F28: Melee/Team Battle P3 kills [32-bit BE]
function meleeTeamBattleP3Kills() => dword_be(0x282F28)

// $282F40: Melee/Team Battle/Destruction P3 score [32-bit BE]
function meleeTeamBattleDestructionP3Score() => dword_be(0x282F40)

// $282F68: Melee/Team Battle P4 kills [32-bit BE]
function meleeTeamBattleP4Kills() => dword_be(0x282F68)

// $282F80: Melee/Team Battle/Destruction P4 score [32-bit BE]
function meleeTeamBattleDestructionP4Score() => dword_be(0x282F80)

// $28420C: P1 health [Float BE]
function p1Health() => float_be(0x28420C)

// $284230: P1 Rage timer [Float BE]
function p1RageTimer() => float_be(0x284230)

// $284234: P1 Rage active [8-bit]
function p1Rage() => byte(0x284234)

// $28C80C: P2 health [Float BE]
function p2Health() => float_be(0x28C80C)

// $294E0C: P3 health [Float BE]
function p3Health() => float_be(0x294E0C)

// $29D40C: P4 health [Float BE]
function p4Health() => float_be(0x29D40C)

// $316B2C: Difficulty [32-bit BE]
//          0 = Easy
//          1 = Medium
//          2 = Hard
function difficulty() => dword_be(0x316B2C)

// $316B30: Rounds [32-bit BE]
//          3 = 3 rounds/default
//          1 = 1 round
//          5 = 5 rounds
function rounds() => dword_be(0x316B30)

// $316B34: Round Time [Float BE]
function roundTime() => float_be(0x316B34)

// $316B38: Reset Arenas [32-bit BE]
//          0x01000000 = Yes
//          0x00 = No
function resetArenas() => dword_be(0x316B38)

// $316B3C: Melee win condition [32-bit BE]
//          0 = First to x wins
//          1 = x minute K.O.-a-thon
function meleeWinCondition() => dword_be(0x316B3C)

// $316B40: Melee KOathon minutes [Float BE]
function meleeKoathonMinutes() => float_be(0x316B40)

// $316B44: Melee wins needed [32-bit BE]
function meleeWinsNeeded() => dword_be(0x316B44)

// $316B48: Team Battle win condition [32-bit BE]
//          0 = First to x wins
//          1 = x minute game
function teamBattleWinCondition() => dword_be(0x316B48)

// $316B4C: Team Battle x minute game [Float BE]
function teamBattleXMinuteGame() => float_be(0x316B4C)

// $316B50: Team Battle wins needed [32-bit BE]
function teamBattleWinsNeeded() => dword_be(0x316B50)

// $316B54: Destruction win condition [32-bit BE]
//          0 = First to x wins
//          1 = x minute game
function destructionWinCondition() => dword_be(0x316B54)

// $316B58: Destruction wins needed [32-bit BE]
function destructionWinsNeeded() => dword_be(0x316B58)

// $316B5C: Destruction x minute game [Float BE]
function destructionXMinuteGame() => float_be(0x316B5C)

// $317544: Gallery arts unlocked [32-bit BE]
function galleryArtsUnlocked() => dword_be(0x317544)

// $317549: Godzilla 2000 locked [8-bit]
//          2 = hidden
//          1 = locked
//          0 = unlocked
function godzilla2000Locked() => byte(0x317549)

// $31754A: Ghidorah locked [8-bit]
function ghidorahLocked() => byte(0x31754A)

// $31754B: Mecha-King Ghidorah locked [8-bit]
function mechaKingGhidorahLocked() => byte(0x31754B)

// $31754C: Rodan locked [8-bit]
function rodanLocked() => byte(0x31754C)

// $31754D: Gigan locked [8-bit]
function giganLocked() => byte(0x31754D)

// $31754E: Megalon locked [8-bit]
function megalonLocked() => byte(0x31754E)

// $31754F: Destoroyah locked [8-bit]
function destoroyahLocked() => byte(0x31754F)

// $317550: Orga locked [8-bit]
function orgaLocked() => byte(0x317550)

// $317551: Godzilla 90's locked [8-bit]
function godzilla90SLocked() => byte(0x317551)

// $317552: Anguirus locked [8-bit]
function anguirusLocked() => byte(0x317552)

// $317553: Mechagodzilla locked [8-bit]
function mechagodzillaLocked() => byte(0x317553)

// $317554: North San Francisco locked [8-bit]
function northSanFranciscoLocked() => byte(0x317554)

// $317555: East San Francisco locked [8-bit]
function eastSanFranciscoLocked() => byte(0x317555)

// $317556: San Francisco locked [8-bit]
function sanFranciscoLocked() => byte(0x317556)

// $317557: East Osaka locked [8-bit]
function eastOsakaLocked() => byte(0x317557)

// $317558: West Osaka locked [8-bit]
function westOsakaLocked() => byte(0x317558)

// $317559: Osaka locked [8-bit]
function osakaLocked() => byte(0x317559)

// $31755A: North Seattle locked [8-bit]
function northSeattleLocked() => byte(0x31755A)

// $31755B: South Seattle locked [8-bit]
function southSeattleLocked() => byte(0x31755B)

// $31755C: Seattle locked [8-bit]
function seattleLocked() => byte(0x31755C)

// $31755D: London 2 locked [8-bit]
function london2Locked() => byte(0x31755D)

// $31755E: London 3 locked [8-bit]
function london3Locked() => byte(0x31755E)

// $31755F: London locked [8-bit]
function londonLocked() => byte(0x31755F)

// $317560: Tokyo 2 locked [8-bit]
function tokyo2Locked() => byte(0x317560)

// $317561: Tokyo 3 locked [8-bit]
function tokyo3Locked() => byte(0x317561)

// $317562: Tokyo locked [8-bit]
function tokyoLocked() => byte(0x317562)

// $317563: Los Angeles 2 locked [8-bit]
function losAngeles2Locked() => byte(0x317563)

// $317564: Los Angeles 3 locked [8-bit]
function losAngeles3Locked() => byte(0x317564)

// $317565: Los Angeles locked [8-bit]
function losAngelesLocked() => byte(0x317565)

// $317568: Monster Island locked [8-bit]
function monsterIslandLocked() => byte(0x317568)

// $317569: Mothership locked [8-bit]
function mothershipLocked() => byte(0x317569)

Chars = [
    "godzilla90s", 
    "anguirus", 
    "megalon", 
    "gigan", 
    "godzilla2k", 
    "ghidorah", 
    "rodan", 
    "mghidorah", 
    "destoroyah", 
    "mechazilla", 
    "orga", 
    "kiryu"
]

Arenas = [
    northSanFranciscoLocked(), 
    eastSanFranciscoLocked(), 
    sanFranciscoLocked(), 
    eastOsakaLocked(), 
    westOsakaLocked(), 
    osakaLocked(), 
    northSeattleLocked(), 
    southSeattleLocked(), 
    seattleLocked(), 
    london2Locked(), 
    london3Locked(), 
    londonLocked(), 
    tokyo2Locked(), 
    tokyo3Locked(), 
    tokyoLocked(), 
    losAngeles2Locked(), 
    losAngeles3Locked(), 
    losAngelesLocked(), 
    monsterIslandLocked(), 
    mothershipLocked()
]

function Cheats() {
    return bit3(0x2092ED) == 0 && cheats2() == 0 && cheats3() == 0 && cheats4() == 0 && 
        cheats5() == 0 && cheats6() == 0 && cheats7() == 0 && cheats8() == 0
}

function Demo() {
    return demoAttractMode() == 0
}

function Progression(Title, Name, ID) {
    achievement(
        title = Title, 
        description = "Complete Adventure Mode with " + Name + ".", 
        points = 5,
        trigger = Demo() && Cheats() && gameMode() == 5 && 
        prev(adventureRound()) == 8 && adventureRound() == 9 && 
        ascii_string_equals(characterAscii(), Chars[ID])
    )
}

Progression("Return of Godzilla", "Godzilla 90's", 0)

function AdventureHard(Title, Name, ID) {
    achievement(
        title = Title, 
        description = "Complete Adventure Mode with " + Name + " on Hard.", 
        points = 10,
        trigger = Demo() && Cheats() && gameMode() == 5 && difficulty() == 2 && 
        prev(adventureRound()) == 8 && adventureRound() == 9 && 
        ascii_string_equals(characterAscii(), Chars[ID])
    )
}

AdventureHard("Return", "Godzilla 90's", 0)

function AdventureLB(Title, DiffID, ID) {
    leaderboard(
        "Adventure Mode: " + Title, 
        "Complete Adventure Mode in the fastest time", 
        Demo() && Cheats() && gameMode() == 5 && difficulty() == DiffID && 
        prev(adventureRound()) == 8 && adventureRound() == 9 && 
        ascii_string_equals(characterAscii(), Chars[ID]), 
        always_false(), 
        always_true(), 
        matchTime(), 
        format = "FLOAT2", 
        lower_is_better = true
    )
}

AdventureLB("Easy - Godzilla 90's", 0, 0)

function Survival(Title, Name, ID) {
    achievement(
        title = Title, 
        description = "Get 8 kills in Survival Mode.", 
        points = 5,
        trigger = Demo() && Cheats() && gameMode() == 6 && 
        prev(survivalKills()) == 7 && survivalKills() == 8
    )
}

Survival("BasicSurvival", "Godzilla 90's", 0)

function SurvivalHard(Title, Name, ID) {
    achievement(
        title = Title, 
        description = "Get 8 kills in Survival Mode with " + Name + " on Hard.", 
        points = 10,
        trigger = Demo() && Cheats() && gameMode() == 6 && difficulty() == 2 && 
        prev(survivalKills()) == 7 && survivalKills() == 8 && 
        ascii_string_equals(characterAscii(), Chars[ID])
    )
}

SurvivalHard("HardSurv", "Godzilla 90's", 0)

function SurvivalLB(Title, DiffID, ID) {
    leaderboard(
        "Survival Mode: " + Title, 
        "Earn the highest score (submits on game over)", 
        Demo() && Cheats() && gameMode() == 6 && difficulty() == DiffID && 
        versusSurvP1Wins() == 0 && prev(versusSurvRoundsCompleted()) == 0 && 
        versusSurvRoundsCompleted() == 1 && 
        ascii_string_equals(characterAscii(), Chars[ID]), 
        always_false(), 
        always_true(), 
        survivalScore(), 
        format = "VALUE", 
        lower_is_better = true
    )
}

SurvivalLB("Easy - Godzilla 90's", 0, 0)

achievement(
    title = "Rage", 
    description = "Unleash a Rage attack.", 
    points = 1, 
    trigger = Demo() && Cheats() && gameMode() != 0 && 
    prev(p1RageTimer()) >= 0.03125 && p1RageTimer() == 0
)

achievement(
    title = "Monster of Man", 
    description = "Unlock Mechagodzilla or Kiryu.", 
    points = 2, 
    trigger = Demo() && Cheats() && gameMode() == 5 && 
    prev(mechagodzillaLocked()) == 1 && mechagodzillaLocked() == 0
)
achievement(
    title = "G-Cell Devourer", 
    description = "Unlock Orga.", 
    points = 2, 
    trigger = Demo() && Cheats() && gameMode() == 5 && 
    __ornext(prev(orgaLocked()) == 1 || prev(orgaLocked()) == 2) && orgaLocked() == 0
)

achievement(
    title = "Arena Gladiator", 
    description = "Unlock all Arenas.", 
    points = 2, 
    trigger = Demo() && Cheats() && gameMode() == 5 && 
    sum_of(Arenas, a => prev(a)) <= 3 && 
    sum_of(Arenas, a => prev(a)) > 0 && 
    sum_of(Arenas, a => a) == 0
)

function Gallery(Title, Points, Amount) {
    achievement(
        title = Title, 
        description = "Collect " + Amount + " Gallery pieces.", 
        points = Points,
        trigger = Demo() && Cheats() && gameMode() == 5 && 
        prev(galleryArtsUnlocked()) == Amount - 1 && galleryArtsUnlocked() == Amount
    )
}

Gallery("Novice", 3, 8)
