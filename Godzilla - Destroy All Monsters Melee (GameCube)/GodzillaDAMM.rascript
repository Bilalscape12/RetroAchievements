// Godzilla: Destroy all Monsters Melee
// #ID = 25444

// $0000: Disk Serial [32-bit BE]
//          US = 0x475a4445
//          EU = 0x475a4450
//          JP = 0x475a444a
function diskSerial() => dword_be(0x0000)

// $2089AC: Game Mode [32-bit BE]
//          1 = Versus/Gallery/Options
//          2 = Team Battle
//          3 = Melee
//          4 = Destruction
//          5 = Adventure
//          6 = Survival
function gameMode(offset) => dword_be(0x2089AC + offset)

// $2089B0: Demo/Attract mode = 0x01 [8-bit]
function demoAttractMode(offset) => byte(0x2089B0 + offset)

// $2089B1: Game Mode [ASCII]
//          Gallery
//          Options
function gameModeAscii(offset) => 0x2089B1 + offset

// $208ABC: Adventure round [32-bit BE]
//          flickers a lot between rounds
//          starts at 1 and story is completed at 9
function adventureRound(offset) => dword_be(0x208ABC + offset)

// $208AC0: Survival kills [32-bit BE]
//          flickers a lot between rounds
function survivalKills(offset) => dword_be(0x208AC0 + offset)

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
function cityAscii(offset) => 0x208AD8 + offset

// $208BDC: Current map number [32-bit BE]
//          0 = (map) 1
//          1 = (map) 2 north seattle, north SF, east osaka
//          2 = (map) 3 south seattle, east SF, west osaka
function currentMapNumber(offset) => dword_be(0x208BDC + offset)

// $208C7C: Survival score [32-bit BE]
function survivalScore(offset) => dword_be(0x208C7C + offset)

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
//          mechazilla2k
function characterAscii(offset) => 0x208CC0 + offset

function characterP2Ascii(offset) => 0x208E5C + offset

// $2092ED: Cheats [Bitflags]
//          Bit0 = DebugSoundLog (743816, doesn't do anything)
//          Bit1 = Black and White mode
//          Bit2 = Technicolor mode
//          Bit3 = 12 continue Adventure
//          Bit4 = Display version of game and time of completion in Options
function cheats1(offset) => byte(0x2092ED + offset)

// $2092EE: Cheats [Bitflags]
//          Bit0 = Unlock Orga
//          Bit1 = Unlock Monster Island
//          Bit2 = Unlock Mothership
//          Bit3 = Unlock all cities
//          Bit4 = P1 mini sized
//          Bit5 = P2 mini sized
//          Bit6 = P3 mini sized
//          Bit7 = P4 mini sized
function cheats2(offset) => byte(0x2092EE + offset)

// $2092EF: Cheats [Bitflags]
//          Bit0 = Unlock Gallery
//          Bit1 = Unlock Godzilla 2000
//          Bit2 = Unlock Gigan
//          Bit3 = Unlock King Ghidorah
//          Bit4 = Unlock Rodan
//          Bit5 = Unlock Destoroyah
//          Bit6 = Unlock Mecha-King Ghidorah
//          Bit7 = Unlock Mechagodzilla
function cheats3(offset) => byte(0x2092EF + offset)

// $2092F1: Cheats [Bitflags]
//          Bit0 = P2 invisible
//          Bit1 = P3 invisible
//          Bit2 = P4 invisible
//          Bit3 = All buildings indestructible
//          Bit4 = Military off
//          Bit5 = Player indicators always on
//          Bit6 = Energy doesn't regenerate
//          Bit7 = Energy weapons do 4x damage (No code for this)
function cheats4(offset) => byte(0x2092F1 + offset)

// $2092F2: Cheats [Bitflags]
//          Bit0 = No status HUD
//          Bit1 = Health regenerates
//          Bit2 = Military deals 4x damage
//          Bit3 = All buildings and objects become throwable
//          Bit4 = FreeCam (Not usable I think and no code for it)
//          Bit5 = No Hedorah
//          Bit6 = All levels have Hedorah
//          Bit7 = P1 invisible
function cheats5(offset) => byte(0x2092F2 + offset)

// $2092F3: Cheats [Bitflags]
//          Bit0 = P1 invincible
//          Bit1 = P2 invincible
//          Bit2 = P3 invincible
//          Bit3 = P4 invincible
//          Bit4 = Player 1 deals 4x damage
//          Bit5 = Player 2 deals 4x damage
//          Bit6 = Player 3 deals 4x damage
//          Bit7 = Player 4 deals 4x damage
function cheats6(offset) => byte(0x2092F3 + offset)

// $2092F6: Cheats [Bitflags]
//          Bit0 = No maser cannons (DAG-MB96)
//          Bit1 = P1 permanent rage
//          Bit2 = P2 permanent rage
//          Bit3 = P3 permanent rage
//          Bit4 = P4 permanent rage
function cheats7(offset) => byte(0x2092F6 + offset)

// $2092F7: Cheats [Bitflags]
//          Bit0 = P1 infinite energy
//          Bit1 = P2 infinite energy
//          Bit2 = P3 infinite energy
//          Bit3 = P4 infinite energy
//          Bit4 = No health power-ups
//          Bit5 = No Mothra power-ups
//          Bit6 = No energy power-ups
//          Bit7 = No rage power-ups
function cheats8(offset) => byte(0x2092F7 + offset)

// $20946C: Versus/Survival/Melee/Team Battle/Destruction P1 wins [32-bit BE]
function versusSurvP1Wins(offset) => dword_be(0x20946C + offset)

// $209480: Versus/Survival/Melee/Team Battle/Destruction P2 wins [32-bit BE]
function versusSurvP2Wins(offset) => dword_be(0x209480 + offset)

// $2094BC: Versus/Survival/Melee/Team Battle/Destruction rounds completed [32-bit BE]
function versusSurvRoundsCompleted(offset) => dword_be(0x2094BC + offset)

// $282E38: Match total time [Float BE]
//          updates on enemy defeat
function matchTime(offset) => float_be(0x2094C8 + offset)

// $282EC0: Melee/Team Battle/Destruction P1 score [32-bit BE]
function meleeTeamBattleDestructionP1Score(offset) => dword_be(0x282EC0 + offset)

// $282F00: Melee/Team Battle/Destruction P2 score [32-bit BE]
function meleeTeamBattleDestructionP2Score(offset) => dword_be(0x282F00 + offset)

// $282F40: Melee/Team Battle/Destruction P3 score [32-bit BE]
function meleeTeamBattleDestructionP3Score(offset) => dword_be(0x282F40 + offset)

// $282F80: Melee/Team Battle/Destruction P4 score [32-bit BE]
function meleeTeamBattleDestructionP4Score(offset) => dword_be(0x282F80 + offset)

// $28420C: P1 health [Float BE]
function p1Health(offset) => float_be(0x28420C + offset)

// $284230: P1 Rage timer [Float BE]
function p1RageTimer(offset) => float_be(0x284230 + offset)

// $28C80C: P2 health [Float BE]
function p2Health(offset) => float_be(0x28C80C + offset)

// $316B2C: Difficulty [32-bit BE]
//          0 = Easy
//          1 = Medium
//          2 = Hard
function difficulty(offset) => dword_be(0x316B2C + offset)

// $316B30: Rounds [32-bit BE]
//          2 = 3 rounds/default
//          1 = 1 round
//          3 = 5 rounds
function rounds(offset) => dword_be(0x316B30 + offset)

// $316B34: Round Time in seconds [Float BE]
//          5 rounds = 0x43967333 or 300.9/300.899994 seconds
function roundTime(offset) => float_be(0x316B34 + offset)

// $316B54: Destruction win condition [32-bit BE]
//          0 = First to x wins
//          1 = x minute game
function destructionWinCondition(offset) => dword_be(0x316B54 + offset)

// $316B58: Destruction wins needed [32-bit BE]
function destructionWinsNeeded(offset) => dword_be(0x316B58 + offset)

// $316B5C: Destruction x minute game [Float BE]
function destructionXMinuteGame(offset) => float_be(0x316B5C + offset)

// $317544: Gallery arts unlocked [32-bit BE]
function galleryArtsUnlocked(offset) => dword_be(0x317544 + offset)

// $317550: Orga locked [8-bit]
function orgaLocked(offset) => byte(0x317550 + offset)

// $317553: Mechagodzilla locked [8-bit]
function mechagodzillaLocked(offset) => byte(0x317553 + offset)

// $317554: North San Francisco locked [8-bit]
function northSanFranciscoLocked(offset) => byte(0x317554 + offset)

// $317555: East San Francisco locked [8-bit]
function eastSanFranciscoLocked(offset) => byte(0x317555 + offset)

// $317556: San Francisco locked [8-bit]
function sanFranciscoLocked(offset) => byte(0x317556 + offset)

// $317557: East Osaka locked [8-bit]
function eastOsakaLocked(offset) => byte(0x317557 + offset)

// $317558: West Osaka locked [8-bit]
function westOsakaLocked(offset) => byte(0x317558 + offset)

// $317559: Osaka locked [8-bit]
function osakaLocked(offset) => byte(0x317559 + offset)

// $31755A: North Seattle locked [8-bit]
function northSeattleLocked(offset) => byte(0x31755A + offset)

// $31755B: South Seattle locked [8-bit]
function southSeattleLocked(offset) => byte(0x31755B + offset)

// $31755C: Seattle locked [8-bit]
function seattleLocked(offset) => byte(0x31755C + offset)

// $31755D: London 2 locked [8-bit]
function london2Locked(offset) => byte(0x31755D + offset)

// $31755E: London 3 locked [8-bit]
function london3Locked(offset) => byte(0x31755E + offset)

// $31755F: London locked [8-bit]
function londonLocked(offset) => byte(0x31755F + offset)

// $317560: Tokyo 2 locked [8-bit]
function tokyo2Locked(offset) => byte(0x317560 + offset)

// $317561: Tokyo 3 locked [8-bit]
function tokyo3Locked(offset) => byte(0x317561 + offset)

// $317562: Tokyo locked [8-bit]
function tokyoLocked(offset) => byte(0x317562 + offset)

// $317563: Los Angeles 2 locked [8-bit]
function losAngeles2Locked(offset) => byte(0x317563 + offset)

// $317564: Los Angeles 3 locked [8-bit]
function losAngeles3Locked(offset) => byte(0x317564 + offset)

// $317565: Los Angeles locked [8-bit]
function losAngelesLocked(offset) => byte(0x317565 + offset)

// $317568: Monster Island locked [8-bit]
function monsterIslandLocked(offset) => byte(0x317568 + offset)

// $317569: Mothership locked [8-bit]
function mothershipLocked(offset) => byte(0x317569 + offset)

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
    "mechazilla2k"
]

ArenasUS = [
    northSanFranciscoLocked(0), 
    eastSanFranciscoLocked(0), 
    sanFranciscoLocked(0), 
    eastOsakaLocked(0), 
    westOsakaLocked(0), 
    osakaLocked(0), 
    northSeattleLocked(0), 
    southSeattleLocked(0), 
    seattleLocked(0), 
    london2Locked(0), 
    london3Locked(0), 
    londonLocked(0), 
    tokyo2Locked(0), 
    tokyo3Locked(0), 
    tokyoLocked(0), 
    losAngeles2Locked(0), 
    losAngeles3Locked(0), 
    losAngelesLocked(0), 
    monsterIslandLocked(0), 
    mothershipLocked(0)
]

ArenasEU = [
    northSanFranciscoLocked(-1081344), 
    eastSanFranciscoLocked(-1081344), 
    sanFranciscoLocked(-1081344), 
    eastOsakaLocked(-1081344), 
    westOsakaLocked(-1081344), 
    osakaLocked(-1081344), 
    northSeattleLocked(-1081344), 
    southSeattleLocked(-1081344), 
    seattleLocked(-1081344), 
    london2Locked(-1081344), 
    london3Locked(-1081344), 
    londonLocked(-1081344), 
    tokyo2Locked(-1081344), 
    tokyo3Locked(-1081344), 
    tokyoLocked(-1081344), 
    losAngeles2Locked(-1081344), 
    losAngeles3Locked(-1081344), 
    losAngelesLocked(-1081344), 
    monsterIslandLocked(-1081344), 
    mothershipLocked(-1081344)
]

ArenasJP = [
    northSanFranciscoLocked(32000), 
    eastSanFranciscoLocked(32000), 
    sanFranciscoLocked(32000), 
    eastOsakaLocked(32000), 
    westOsakaLocked(32000), 
    osakaLocked(32000), 
    northSeattleLocked(32000), 
    southSeattleLocked(32000), 
    seattleLocked(32000), 
    london2Locked(32000), 
    london3Locked(32000), 
    londonLocked(32000), 
    tokyo2Locked(32000), 
    tokyo3Locked(32000), 
    tokyoLocked(32000), 
    losAngeles2Locked(32000), 
    losAngeles3Locked(32000), 
    losAngelesLocked(32000), 
    monsterIslandLocked(32000), 
    mothershipLocked(32000)
]

function USHash() {
    return diskSerial() == 1197098053
}

function EUHash() {
    return diskSerial() == 1197098064
}

function JPHash() {
    return diskSerial() == 1197098058
}

function ContinueCheat(offset) {
    return bit3(0x2092ED + offset)
}

function Cheats(offset) {
    return ContinueCheat(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function CheatsSkill(offset) {
    return ContinueCheat(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && low4(0x2092F1 + offset) == 0 && high4(0x2092F1 + offset) == 1 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && low4(0x2092F6 + offset) == 1 && high4(0x2092F6 + offset) == 0 && 
        low4(0x2092F7 + offset) == 0 && high4(0x2092F7 + offset) == 15
}

function CheatsEnergy(offset) {
    return ContinueCheat(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && low4(0x2092F7 + offset) == 2 && high4(0x2092F7 + offset) == 0
}

function CheatsInvis(offset) {
    return ContinueCheat(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && low4(0x2092F1 + offset) == 1 && high4(0x2092F1 + offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function CheatsP2Mini(offset) {
    return ContinueCheat(offset) == 0 && low4(0x2092EE + offset) == 0 && high4(0x2092EE + offset) == 2 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function CheatsMini(offset) {
    return ContinueCheat(offset) == 0 && low4(0x2092EE + offset) == 0 && high4(0x2092EE + offset) == 1 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function CheatsRage(offset) {
    return ContinueCheat(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && low4(0x2092F6 + offset) == 4 && high4(0x2092F6 + offset) == 0 && cheats8(offset) == 0
}

function CheatsTechni(offset) {
    return bit2(0x2092ED + offset) == 1 && ContinueCheat(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function CheatsBW(offset) {
    return bit1(0x2092ED + offset) == 1 && ContinueCheat(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function ContinueCheatJP(offset) {
    return bit4(0x2092ED + offset)
}

function CheatsJP(offset) {
    return ContinueCheatJP(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function CheatsSkillJP(offset) {
    return ContinueCheatJP(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && low4(0x2092F1 + offset) == 0 && high4(0x2092F1 + offset) == 1 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && low4(0x2092F6 + offset) == 1 && high4(0x2092F6 + offset) == 0 && 
        low4(0x2092F7 + offset) == 0 && high4(0x2092F7 + offset) == 15
}

function CheatsEnergyJP(offset) {
    return ContinueCheatJP(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && low4(0x2092F7 + offset) == 2 && high4(0x2092F7 + offset) == 0
}

function CheatsInvisJP(offset) {
    return ContinueCheatJP(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && low4(0x2092F1 + offset) == 1 && high4(0x2092F1 + offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function CheatsP2MiniJP(offset) {
    return ContinueCheatJP(offset) == 0 && low4(0x2092EE + offset) == 0 && high4(0x2092EE + offset) == 4 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function CheatsMiniJP(offset) {
    return ContinueCheatJP(offset) == 0 && low4(0x2092EE + offset) == 0 && high4(0x2092EE + offset) == 2 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function CheatsRageJP(offset) {
    return ContinueCheatJP(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && low4(0x2092F6 + offset) == 4 && high4(0x2092F6 + offset) == 0 && cheats8(offset) == 0
}

function CheatsTechniJP(offset) {
    return bit3(0x2092ED + offset) == 1 && ContinueCheatJP(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function CheatsBWJP(offset) {
    return bit2(0x2092ED + offset) == 1 && ContinueCheatJP(offset) == 0 && cheats2(offset) == 0 && cheats3(offset) == 0 && cheats4(offset) == 0 && 
        cheats5(offset) == 0 && cheats6(offset) == 0 && cheats7(offset) == 0 && cheats8(offset) == 0
}

function Demo(offset) {
    return demoAttractMode(offset) == 0
}

achievement(
    title = "RRAAAAAGGGEEE!", 
    description = "Unleash a Rage attack.", 
    points = 1, 
    trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) != 0 && 
    prev(p1RageTimer(0)) >= 0.03125 && p1RageTimer(0) == 0 || EUHash() && Demo(0) && Cheats(0) && gameMode(0) != 0 && 
    prev(p1RageTimer(14976)) >= 0.03125 && p1RageTimer(14976) == 0 || JPHash() && Demo(15968) && CheatsJP(15968) && gameMode(15968) != 0 && 
    prev(p1RageTimer(32000)) >= 0.03125 && p1RageTimer(32000) == 0)
)

function Progression(Title, Name, ID) {
    achievement(
        title = Title, 
        description = "Complete Adventure Mode with " + Name + ".", 
        points = 5,
        trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || JPHash() && Demo(15968) && CheatsJP(15968) && gameMode(15968) == 5 && 
        prev(adventureRound(15968)) == 8 && adventureRound(15968) == 9 && 
        ascii_string_equals(characterAscii(15968), Chars[ID]))
    )
}

Progression("Hey, Anguirus!", "Godzilla 90's", 0)
Progression("What Do Ya Want?", "Anguirus", 1)
Progression("Fun Fact: Roaches Don't Actually Have Drills for Hands", "Megalon", 2)
Progression("M Space Hunter Nebula", "Gigan", 3)
Progression("Up from the Depths", "Godzilla 2000", 4)
Progression("Venusian Demon of the Galaxy", "King Ghidorah", 5)
Progression("Titan of Winged Fury", "Rodan", 6)
Progression("Cyborg Super Monster", "Mecha-King Ghidorah", 7)
Progression("Oxygen Destroyer Incarnate", "Destoroyah", 8)
Progression("Mechagodzilla 90's", "Mechagodzilla", 9)
Progression("Millennian Collective", "Orga", 10)
Progression("Mechagodzilla 2000", "メカゴジラ", 11)

function AdventureHard(Title, Name, ID) {
    achievement(
        title = Title, 
        description = "Complete Adventure Mode with " + Name + " on Hard.", 
        points = 10,
        trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && difficulty(0) == 2 && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && difficulty(-1081344) == 2 && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || JPHash() && Demo(15968) && CheatsJP(15968) && gameMode(15968) == 5 && difficulty(32000) == 2 && 
        prev(adventureRound(15968)) == 8 && adventureRound(15968) == 9 && 
        ascii_string_equals(characterAscii(15968), Chars[ID]))
    )
}

AdventureHard("Something Funny Going On, You Better Check!", "Godzilla 90's", 0)
AdventureHard("OK", "Anguirus", 1)
AdventureHard("Roaches Also Can't Spit Bombs", "Megalon", 2)
AdventureHard("Cyborg Chicken", "Gigan", 3)
AdventureHard("Doom Inevitable", "Godzilla 2000", 4)
AdventureHard("The Death Song of Three Storms", "King Ghidorah", 5)
AdventureHard("The Fire Demon", "Rodan", 6)
AdventureHard("A Weapon to Surpass Godzilla", "Mecha-King Ghidorah", 7)
AdventureHard("A Monument to All Your Sins", "Destoroyah", 8)
AdventureHard("Terror of Mechagodzilla", "Mechagodzilla", 9)
AdventureHard("Organizer G1 Addict", "Orga", 10)
AdventureHard("Synthetic War Monster", "メカゴジラ", 11)

achievement(
    title = "Monster Beater", 
    description = "Complete Adventure Mode on Hard within 15 minutes.", 
    points = 25, 
    trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && difficulty(0) == 2 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && matchTime(0) <= 900.0 || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && difficulty(-1081344) == 2 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && matchTime(0) <= 900.0 || JPHash() && Demo(15968) && CheatsJP(15968) && gameMode(15968) == 5 && difficulty(32000) == 2 && 
    prev(adventureRound(15968)) == 8 && adventureRound(15968) == 9 && matchTime(15968) <= 900.0)
)

achievement(
    title = "No Nonsense, Let's Fight!", 
    description = "Complete Adventure Mode on Hard with all power-ups and military disabled (Use 779886, 256806, and 841720 cheats).", 
    points = 10, 
    trigger = always_true() && (USHash() && Demo(0) && CheatsSkill(0) && gameMode(0) == 5 && difficulty(0) == 2 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 || EUHash() && Demo(0) && CheatsSkill(0) && gameMode(0) == 5 && difficulty(-1081344) == 2 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 || JPHash() && Demo(15968) && CheatsSkillJP(15968) && gameMode(15968) == 5 && difficulty(32000) == 2 && 
    prev(adventureRound(15968)) == 8 && adventureRound(15968) == 9)
)

achievement(
    title = "Never-Ending Beam Attacks", 
    description = "Complete Adventure Mode on Hard against opponents with unlimited energy (Use 435976 cheat).", 
    points = 10, 
    trigger = always_true() && (USHash() && Demo(0) && CheatsEnergy(0) && gameMode(0) == 5 && difficulty(0) == 2 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 || EUHash() && Demo(0) && CheatsEnergy(0) && gameMode(0) == 5 && difficulty(-1081344) == 2 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 || JPHash() && Demo(15968) && CheatsEnergyJP(15968) && gameMode(15968) == 5 && difficulty(32000) == 2 && 
    prev(adventureRound(15968)) == 8 && adventureRound(15968) == 9)
)

achievement(
    title = "Schizophrenia", 
    description = "Complete Adventure Mode on Medium or Hard against invisible opponents (Use 459113 cheat).", 
    points = 10, 
    trigger = always_true() && (USHash() && Demo(0) && CheatsInvis(0) && gameMode(0) == 5 && difficulty(0) > 0 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 || EUHash() && Demo(0) && CheatsInvis(0) && gameMode(0) == 5 && difficulty(-1081344) > 0 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 || JPHash() && Demo(15968) && CheatsInvisJP(15968) && gameMode(15968) == 5 && difficulty(32000) > 0 && 
    prev(adventureRound(15968)) == 8 && adventureRound(15968) == 9)
)

achievement(
    title = "Monstrous Mosquitos", 
    description = "Complete Adventure Mode on Medium or Hard against mini opponents (Use 971934 cheat).", 
    points = 10, 
    trigger = always_true() && (USHash() && Demo(0) && CheatsP2Mini(0) && gameMode(0) == 5 && difficulty(0) > 0 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 || EUHash() && Demo(0) && CheatsP2Mini(0) && gameMode(0) == 5 && difficulty(-1081344) > 0 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 || JPHash() && Demo(15968) && CheatsP2MiniJP(15968) && gameMode(15968) == 5 && difficulty(32000) > 0 && 
    prev(adventureRound(15968)) == 8 && adventureRound(15968) == 9)
)

achievement(
    title = "Tiny Terror", 
    description = "Complete Adventure Mode on Medium or Hard as a mini monster (Use 986875 cheat).", 
    points = 10, 
    trigger = always_true() && (USHash() && Demo(0) && CheatsMini(0) && gameMode(0) == 5 && difficulty(0) > 0 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 || EUHash() && Demo(0) && CheatsMini(0) && gameMode(0) == 5 && difficulty(-1081344) > 0 && 
    prev(adventureRound(0)) == 8 && adventureRound(0) == 9 || JPHash() && Demo(15968) && CheatsMiniJP(15968) && gameMode(15968) == 5 && difficulty(32000) > 0 && 
    prev(adventureRound(15968)) == 8 && adventureRound(15968) == 9)
)

function AdventureLB(Title, DiffID, ID) {
    leaderboard(
        "Adventure Mode: " + Title, 
        "Complete Adventure Mode in the fastest time.", 
        always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && difficulty(0) == DiffID && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && difficulty(-1081344) == DiffID && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || JPHash() && Demo(15968) && CheatsJP(15968) && gameMode(15968) == 5 && difficulty(32000) == DiffID && 
        prev(adventureRound(15968)) == 8 && adventureRound(15968) == 9 && 
        ascii_string_equals(characterAscii(15968), Chars[ID])), 
        always_false(), 
        always_true(), 
        max_of(
                 measured(matchTime(0), when=USHash()),
                 measured(matchTime(0), when=EUHash()),
                 measured(matchTime(15968), when=JPHash())
             ), 
        format = "SECS", 
        lower_is_better = true
    )
}

AdventureLB("Easy - Godzilla 90's", 0, 0)
AdventureLB("Easy - Anguirus", 0, 1)
AdventureLB("Easy - Megalon", 0, 2)
AdventureLB("Easy - Gigan", 0, 3)
AdventureLB("Easy - Godzilla 2000", 0, 4)
AdventureLB("Easy - King Ghidorah", 0, 5)
AdventureLB("Easy - Rodan", 0, 6)
AdventureLB("Easy - Mecha-King Ghidorah", 0, 7)
AdventureLB("Easy - Destoroyah", 0, 8)
AdventureLB("Easy - Mechagodzilla", 0, 9)
AdventureLB("Easy - Orga", 0, 10)
AdventureLB("Easy - メカゴジラ", 0, 11)
AdventureLB("Medium - Godzilla 90's", 1, 0)
AdventureLB("Medium - Anguirus", 1, 1)
AdventureLB("Medium - Megalon", 1, 2)
AdventureLB("Medium - Gigan", 1, 3)
AdventureLB("Medium - Godzilla 2000", 1, 4)
AdventureLB("Medium - King Ghidorah", 1, 5)
AdventureLB("Medium - Rodan", 1, 6)
AdventureLB("Medium - Mecha-King Ghidorah", 1, 7)
AdventureLB("Medium - Destoroyah", 1, 8)
AdventureLB("Medium - Mechagodzilla", 1, 9)
AdventureLB("Medium - Orga", 1, 10)
AdventureLB("Medium - メカゴジラ", 1, 11)
AdventureLB("Hard - Godzilla 90's", 2, 0)
AdventureLB("Hard - Anguirus", 2, 1)
AdventureLB("Hard - Megalon", 2, 2)
AdventureLB("Hard - Gigan", 2, 3)
AdventureLB("Hard - Godzilla 2000", 2, 4)
AdventureLB("Hard - King Ghidorah", 2, 5)
AdventureLB("Hard - Rodan", 2, 6)
AdventureLB("Hard - Mecha-King Ghidorah", 2, 7)
AdventureLB("Hard - Destoroyah", 2, 8)
AdventureLB("Hard - Mechagodzilla", 2, 9)
AdventureLB("Hard - Orga", 2, 10)
AdventureLB("Hard - メカゴジラ", 2, 11)

function Survival(Title) {
    achievement(
        title = Title, 
        description = "Get 8 wins in Survival Mode.", 
        points = 5,
        trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && 
        prev(survivalKills(0)) == 7 && survivalKills(0) == 8 || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && 
        prev(survivalKills(0)) == 7 && survivalKills(0) == 8 || JPHash() && Demo(15968) && CheatsJP(15968) && gameMode(15968) == 6 && 
        prev(survivalKills(15968)) == 7 && survivalKills(15968) == 8)
    )
}

Survival("Survival of the Fittest")

function SurvivalHard(Title, Name, ID) {
    achievement(
        title = Title, 
        description = "Get 8 wins in Survival Mode with " + Name + " on Hard.", 
        points = 10,
        trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && difficulty(0) == 2 && 
        prev(survivalKills(0)) == 7 && survivalKills(0) == 8 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && difficulty(-1081344) == 2 && 
        prev(survivalKills(0)) == 7 && survivalKills(0) == 8 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || JPHash() && Demo(15968) && CheatsJP(15968) && gameMode(15968) == 6 && difficulty(32000) == 2 && 
        prev(survivalKills(15968)) == 7 && survivalKills(15968) == 8 && 
        ascii_string_equals(characterAscii(15968), Chars[ID]))
    )
}

SurvivalHard("There's a Lot of Trouble up Ahead, We Must Hurry!", "Godzilla 90's", 0)
SurvivalHard("OK...", "Anguirus", 1)
SurvivalHard("They Don't Have Magnetic Horns Either", "Megalon", 2)
SurvivalHard("Let Me Give You A Hug", "Gigan", 3)
SurvivalHard("Ruin Reborn", "Godzilla 2000", 4)
SurvivalHard("Kneel before the Keizer", "King Ghidorah", 5)
SurvivalHard("Rock Monster Eagle", "Rodan", 6)
SurvivalHard("Kneel before the Cyber Keizer", "Mecha-King Ghidorah", 7)
SurvivalHard("Micro-Oxygen Progeny", "Destoroyah", 8)
SurvivalHard("Mecha-King Godzilla", "Mechagodzilla", 9)
SurvivalHard("The Power of the Sun in the Base of My Shoulder", "Orga", 10)
SurvivalHard("Multipurpose Fighting System Type-3", "メカゴジラ", 11)

function SurvivalLB(Title, DiffID, ID) {
    leaderboard(
        "Survival Mode: " + Title, 
        "Earn the highest score (submits on game over).", 
        always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && difficulty(0) == DiffID && 
        versusSurvP1Wins(0) == 0 && prev(versusSurvRoundsCompleted(0)) == 0 && 
        versusSurvRoundsCompleted(0) == 1 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && difficulty(-1081344) == DiffID && 
        versusSurvP1Wins(0) == 0 && prev(versusSurvRoundsCompleted(0)) == 0 && 
        versusSurvRoundsCompleted(0) == 1 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || JPHash() && Demo(15968) && CheatsJP(15968) && gameMode(15968) == 6 && difficulty(32000) == DiffID && 
        versusSurvP1Wins(15968) == 0 && prev(versusSurvRoundsCompleted(15968)) == 0 && 
        versusSurvRoundsCompleted(15968) == 1 && 
        ascii_string_equals(characterAscii(15968), Chars[ID])), 
        always_false(), 
        always_true(), 
        max_of(
                 measured(survivalScore(0), when=USHash()),
                 measured(survivalScore(0), when=EUHash()),
                 measured(survivalScore(15968), when=JPHash())
             ), 
        format = "VALUE", 
        lower_is_better = true
    )
}

SurvivalLB("Easy - Godzilla 90's", 0, 0)
SurvivalLB("Easy - Anguirus", 0, 1)
SurvivalLB("Easy - Megalon", 0, 2)
SurvivalLB("Easy - Gigan", 0, 3)
SurvivalLB("Easy - Godzilla 2000", 0, 4)
SurvivalLB("Easy - King Ghidorah", 0, 5)
SurvivalLB("Easy - Rodan", 0, 6)
SurvivalLB("Easy - Mecha-King Ghidorah", 0, 7)
SurvivalLB("Easy - Destoroyah", 0, 8)
SurvivalLB("Easy - Mechagodzilla", 0, 9)
SurvivalLB("Easy - Rodan", 0, 10)
SurvivalLB("Easy - メカゴジラ", 0, 11)
SurvivalLB("Medium - Godzilla 90's", 1, 0)
SurvivalLB("Medium - Anguirus", 1, 1)
SurvivalLB("Medium - Megalon", 1, 2)
SurvivalLB("Medium - Gigan", 1, 3)
SurvivalLB("Medium - Godzilla 2000", 1, 4)
SurvivalLB("Medium - King Ghidorah", 1, 5)
SurvivalLB("Medium - Rodan", 1, 6)
SurvivalLB("Medium - Mecha-King Ghidorah", 1, 7)
SurvivalLB("Medium - Destoroyah", 1, 8)
SurvivalLB("Medium - Mechagodzilla", 1, 9)
SurvivalLB("Medium - Rodan", 1, 10)
SurvivalLB("Medium - メカゴジラ", 1, 11)
SurvivalLB("Hard - Godzilla 90's", 2, 0)
SurvivalLB("Hard - Anguirus", 2, 1)
SurvivalLB("Hard - Megalon", 2, 2)
SurvivalLB("Hard - Gigan", 2, 3)
SurvivalLB("Hard - Godzilla 2000", 2, 4)
SurvivalLB("Hard - King Ghidorah", 2, 5)
SurvivalLB("Hard - Rodan", 2, 6)
SurvivalLB("Hard - Mecha-King Ghidorah", 2, 7)
SurvivalLB("Hard - Destoroyah", 2, 8)
SurvivalLB("Hard - Mechagodzilla", 2, 9)
SurvivalLB("Hard - Rodan", 2, 10)
SurvivalLB("Hard - メカゴジラ", 2, 11)

achievement(
    title = "Spikey Ball of Death", 
    description = "Win a 3 Round, 5 Minute Versus match on Hard against unlimited Rage Anguirus (Use 122224 cheat).", 
    points = 5, 
    trigger = always_true() && (USHash() && Demo(0) && CheatsRage(0) && gameMode(0) == 1 && difficulty(0) == 2 && rounds(0) == 2 && roundTime(0) == 300.9 && 
    prev(versusSurvP1Wins(0)) == 1 && versusSurvP1Wins(0) == 2 && ascii_string_equals(characterP2Ascii(0), Chars[1]) || 
    EUHash() && Demo(0) && CheatsRage(0) && gameMode(0) == 1 && difficulty(-1081344) == 2 && rounds(-1081344) == 2 && roundTime(-1081344) == 300.9 && 
    prev(versusSurvP1Wins(0)) == 1 && versusSurvP1Wins(0) == 2 && ascii_string_equals(characterP2Ascii(0), Chars[1]) || 
    JPHash() && Demo(15968) && CheatsRageJP(15968) && gameMode(15968) == 1 && difficulty(32000) == 2 && rounds(32000) == 2 && roundTime(32000) == 300.9 && 
    prev(versusSurvP1Wins(15968)) == 1 && versusSurvP1Wins(15968) == 2 && ascii_string_equals(characterP2Ascii(15968), Chars[1]))
)

achievement(
    title = "Annihilation", 
    description = "Win a 3 Round, 5 Minute Versus match as Orga against Destoroyah using the Technicolor cheat (Use 661334 cheat).", 
    points = 2, 
    trigger = always_true() && (USHash() && Demo(0) && CheatsTechni(0) && gameMode(0) == 1 && rounds(0) == 2 && roundTime(0) == 300.9 && 
    prev(versusSurvP1Wins(0)) == 1 && versusSurvP1Wins(0) == 2 && ascii_string_equals(characterAscii(0), Chars[10]) && ascii_string_equals(characterP2Ascii(0), Chars[8]) || 
    EUHash() && Demo(0) && CheatsTechni(0) && gameMode(0) == 1 && rounds(-1081344) == 2 && roundTime(-1081344) == 300.9 && 
    prev(versusSurvP1Wins(0)) == 1 && versusSurvP1Wins(0) == 2 && ascii_string_equals(characterAscii(0), Chars[10]) && ascii_string_equals(characterP2Ascii(0), Chars[8]) || 
    JPHash() && Demo(15968) && CheatsTechniJP(15968) && gameMode(15968) == 1 && rounds(32000) == 2 && roundTime(32000) == 300.9 && 
    prev(versusSurvP1Wins(15968)) == 1 && versusSurvP1Wins(15968) == 2 && ascii_string_equals(characterAscii(15968), Chars[10]) && ascii_string_equals(characterP2Ascii(15968), Chars[8]))
)

achievement(
    title = "Godzilla Raids Again", 
    description = "Win a 3 Round, 5 Minute Versus match as Godzilla 90's against Anguirus in Osaka using the Black & White cheat (Use 567980 cheat).", 
    points = 2, 
    trigger = always_true() && (USHash() && Demo(0) && CheatsBW(0) && gameMode(0) == 1 && rounds(0) == 2 && roundTime(0) == 300.9 && 
    prev(versusSurvP1Wins(0)) == 1 && versusSurvP1Wins(0) == 2 && ascii_string_equals(characterAscii(0), Chars[0]) && 
    ascii_string_equals(characterP2Ascii(0), Chars[1]) && ascii_string_equals(cityAscii(0), "Osaka") || 
    EUHash() && Demo(0) && CheatsBW(0) && gameMode(0) == 1 && rounds(-1081344) == 2 && roundTime(-1081344) == 300.9 && 
    prev(versusSurvP1Wins(0)) == 1 && versusSurvP1Wins(0) == 2 && ascii_string_equals(characterAscii(0), Chars[0]) && 
    ascii_string_equals(characterP2Ascii(0), Chars[1]) && ascii_string_equals(cityAscii(0), "Osaka") || 
    JPHash() && Demo(15968) && CheatsBWJP(15968) && gameMode(15968) == 1 && rounds(32000) == 2 && roundTime(32000) == 300.9 && 
    prev(versusSurvP1Wins(15968)) == 1 && versusSurvP1Wins(15968) == 2 && ascii_string_equals(characterAscii(15968), Chars[0]) && 
    ascii_string_equals(characterP2Ascii(15968), Chars[1]) && ascii_string_equals(cityAscii(15968), "Osaka"))
)

achievement(
    title = "G-Cell Devourer", 
    description = "Unlock Orga.", 
    points = 1, 
    trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && prev(gameMode(0)) == 5 && gameMode(0) == 5 && 
    __ornext(prev(orgaLocked(0)) == 1 || prev(orgaLocked(0)) == 2) && orgaLocked(0) == 0 || EUHash() && Demo(0) && Cheats(0) && prev(gameMode(0)) == 5 && gameMode(0) == 5 && 
    __ornext(prev(orgaLocked(-1081344)) == 1 || prev(orgaLocked(-1081344)) == 2) && orgaLocked(-1081344) == 0 || JPHash() && Demo(15968) && CheatsJP(15968) && prev(gameMode(15968)) == 5 && gameMode(15968) == 5 && 
    __ornext(prev(orgaLocked(32000)) == 1 || prev(orgaLocked(32000)) == 2) && orgaLocked(32000) == 0)
)

achievement(
    title = "Arena Champion", 
    description = "Unlock all arenas.", 
    points = 2, 
    trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && prev(gameMode(0)) == 5 && gameMode(0) == 5 && 
    //sum_of(ArenasUS, a => prev(a)) <= 3 && 
    sum_of(ArenasUS, a => prev(a)) > 0 && 
    sum_of(ArenasUS, a => a) == 0 || EUHash() && Demo(0) && Cheats(0) && prev(gameMode(0)) == 5 && gameMode(0) == 5 && 
    //sum_of(ArenasEU, a => prev(a)) <= 3 && 
    sum_of(ArenasEU, a => prev(a)) > 0 && 
    sum_of(ArenasEU, a => a) == 0 || JPHash() && Demo(15968) && CheatsJP(15968) && prev(gameMode(15968)) == 5 && gameMode(15968) == 5 && 
    //sum_of(ArenasJP, a => prev(a)) <= 3 && 
    sum_of(ArenasJP, a => prev(a)) > 0 && 
    sum_of(ArenasJP, a => a) == 0)
)

function Gallery(Title, Points, Amount) {
    achievement(
        title = Title, 
        description = "Collect " + Amount + " Gallery images.", 
        points = Points,
        trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
        prev(galleryArtsUnlocked(0)) == Amount - 1 && galleryArtsUnlocked(0) == Amount || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
        prev(galleryArtsUnlocked(-1081344)) == Amount - 1 && galleryArtsUnlocked(-1081344) == Amount || JPHash() && Demo(15968) && CheatsJP(15968) && gameMode(15968) == 5 && 
        prev(galleryArtsUnlocked(32000)) == Amount - 1 && galleryArtsUnlocked(32000) == Amount)
    )
}

Gallery("Atari Logo Collector", 3, 8)
Gallery("Gallery Enthusiast", 3, 16)
Gallery("Monster Historian", 3, 24)
Gallery("Monster Researcher", 3, 32)
Gallery("Pipeworks Fanatic", 5, 40)

G90 = {
    1 : "Godzilla 90's is fighting Anguirus",
    2 : "Godzilla 90's is fighting Megalon",
    3 : "Godzilla 90's is fighting King Ghidorah",
    4 : "Godzilla 90's is fighting Rodan",
    5 : "Godzilla 90's is fighting Gigan",
    6 : "Godzilla 90's is fighting Destoroyah",
    7 : "Godzilla 90's is fighting Mecha-King Ghidorah",
    8 : "Godzilla 90's is fighting Mechagodzilla"
}
G90JP = {
    1 : "Godzilla 90's is fighting Anguirus",
    2 : "Godzilla 90's is fighting Megalon",
    3 : "Godzilla 90's is fighting King Ghidorah",
    4 : "Godzilla 90's is fighting Rodan",
    5 : "Godzilla 90's is fighting Gigan",
    6 : "Godzilla 90's is fighting Destoroyah",
    7 : "Godzilla 90's is fighting Mecha-King Ghidorah",
    8 : "Godzilla 90's is fighting メカゴジラ"
}
Ang = {
    1 : "Anguirus is fighting Megalon",
    2 : "Anguirus is fighting Godzilla 90's",
    3 : "Anguirus is fighting Gigan",
    4 : "Anguirus is fighting King Ghidorah",
    5 : "Anguirus is fighting Rodan",
    6 : "Anguirus is fighting Destoroyah",
    7 : "Anguirus is fighting Mecha-King Ghidorah",
    8 : "Anguirus is fighting Mechagodzilla"
}
AngJP = {
    1 : "Anguirus is fighting Megalon",
    2 : "Anguirus is fighting Godzilla 90's",
    3 : "Anguirus is fighting Gigan",
    4 : "Anguirus is fighting King Ghidorah",
    5 : "Anguirus is fighting Rodan",
    6 : "Anguirus is fighting Destoroyah",
    7 : "Anguirus is fighting Mecha-King Ghidorah",
    8 : "Anguirus is fighting メカゴジラ"
}
Mega = {
    1:"Megalon is fighting Godzilla 90's",
    2:"Megalon is fighting Anguirus",
    3:"Megalon is fighting King Ghidorah",
    4:"Megalon is fighting Gigan",
    5:"Megalon is fighting Rodan",
    6:"Megalon is fighting Destoroyah",
    7:"Megalon is fighting Mecha-King Ghidorah",
    8:"Megalon is fighting Mechagodzilla"
}
MegaJP = {
    1:"Megalon is fighting Godzilla 90's",
    2:"Megalon is fighting Anguirus",
    3:"Megalon is fighting King Ghidorah",
    4:"Megalon is fighting Gigan",
    5:"Megalon is fighting Rodan",
    6:"Megalon is fighting Destoroyah",
    7:"Megalon is fighting Mecha-King Ghidorah",
    8:"Megalon is fighting メカゴジラ"
}
Giga = {
    1:"Gigan is fighting Rodan",
    2:"Gigan is fighting Godzilla 90's",
    3:"Gigan is fighting Megalon",
    4:"Gigan is fighting King Ghidorah",
    5:"Gigan is fighting Anguirus",
    6:"Gigan is fighting Destoroyah",
    7:"Gigan is fighting Mecha-King Ghidorah",
    8:"Gigan is fighting Mechagodzilla"
}
GigaJP = {
    1:"Gigan is fighting Rodan",
    2:"Gigan is fighting Godzilla 90's",
    3:"Gigan is fighting Megalon",
    4:"Gigan is fighting King Ghidorah",
    5:"Gigan is fighting Anguirus",
    6:"Gigan is fighting Destoroyah",
    7:"Gigan is fighting Mecha-King Ghidorah",
    8:"Gigan is fighting メカゴジラ"
}
G2K = {
    1:"Godzilla 2000 is fighting King Ghidorah",
    2:"Godzilla 2000 is fighting Megalon",
    3:"Godzilla 2000 is fighting Anguirus",
    4:"Godzilla 2000 is fighting Gigan",
    5:"Godzilla 2000 is fighting Rodan",
    6:"Godzilla 2000 is fighting Destoroyah",
    7:"Godzilla 2000 is fighting Mecha-King Ghidorah",
    8:"Godzilla 2000 is fighting Mechagodzilla"
}
G2KJP = {
    1:"Godzilla 2000 is fighting King Ghidorah",
    2:"Godzilla 2000 is fighting Megalon",
    3:"Godzilla 2000 is fighting Anguirus",
    4:"Godzilla 2000 is fighting Gigan",
    5:"Godzilla 2000 is fighting Rodan",
    6:"Godzilla 2000 is fighting Destoroyah",
    7:"Godzilla 2000 is fighting Mecha-King Ghidorah",
    8:"Godzilla 2000 is fighting メカゴジラ"
}
KGH = {
    1:"King Ghidorah is fighting Godzilla 90's",
    2:"King Ghidorah is fighting Anguirus",
    3:"King Ghidorah is fighting Megalon",
    4:"King Ghidorah is fighting Rodan",
    5:"King Ghidorah is fighting Gigan",
    6:"King Ghidorah is fighting Destoroyah",
    7:"King Ghidorah is fighting Mecha-King Ghidorah",
    8:"King Ghidorah is fighting Mechagodzilla"
}
KGHJP = {
    1:"King Ghidorah is fighting Godzilla 90's",
    2:"King Ghidorah is fighting Anguirus",
    3:"King Ghidorah is fighting Megalon",
    4:"King Ghidorah is fighting Rodan",
    5:"King Ghidorah is fighting Gigan",
    6:"King Ghidorah is fighting Destoroyah",
    7:"King Ghidorah is fighting Mecha-King Ghidorah",
    8:"King Ghidorah is fighting メカゴジラ"
}
Rod = {
    1:"Rodan is fighting Anguirus",
    2:"Rodan is fighting Megalon",
    3:"Rodan is fighting King Ghidorah",
    4:"Rodan is fighting Godzilla 90's",
    5:"Rodan is fighting Gigan",
    6:"Rodan is fighting Mecha-King Ghidorah",
    7:"Rodan is fighting Destoroyah",
    8:"Rodan is fighting Mechagodzilla"
}
RodJP = {
    1:"Rodan is fighting Anguirus",
    2:"Rodan is fighting Megalon",
    3:"Rodan is fighting King Ghidorah",
    4:"Rodan is fighting Godzilla 90's",
    5:"Rodan is fighting Gigan",
    6:"Rodan is fighting Mecha-King Ghidorah",
    7:"Rodan is fighting Destoroyah",
    8:"Rodan is fighting メカゴジラ"
}
MKGH = {
    1:"Mecha-King Ghidorah is fighting Destoroyah",
    2:"Mecha-King Ghidorah is fighting Anguirus",
    3:"Mecha-King Ghidorah is fighting Godzilla 90's",
    4:"Mecha-King Ghidorah is fighting Gigan",
    5:"Mecha-King Ghidorah is fighting Rodan",
    6:"Mecha-King Ghidorah is fighting Megalon",
    7:"Mecha-King Ghidorah is fighting King Ghidorah",
    8:"Mecha-King Ghidorah is fighting Mechagodzilla"
}
MKGHJP = {
    1:"Mecha-King Ghidorah is fighting Destoroyah",
    2:"Mecha-King Ghidorah is fighting Anguirus",
    3:"Mecha-King Ghidorah is fighting Godzilla 90's",
    4:"Mecha-King Ghidorah is fighting Gigan",
    5:"Mecha-King Ghidorah is fighting Rodan",
    6:"Mecha-King Ghidorah is fighting Megalon",
    7:"Mecha-King Ghidorah is fighting King Ghidorah",
    8:"Mecha-King Ghidorah is fighting メカゴジラ"
}
Des = {
    1:"Destoroyah is fighting Anguirus",
    2:"Destoroyah is fighting Rodan",
    3:"Destoroyah is fighting King Ghidorah",
    4:"Destoroyah is fighting Megalon",
    5:"Destoroyah is fighting Gigan",
    6:"Destoroyah is fighting Godzilla 90's",
    7:"Destoroyah is fighting Mecha-King Ghidorah",
    8:"Destoroyah is fighting Mechagodzilla"
}
DesJP = {
    1:"Destoroyah is fighting Anguirus",
    2:"Destoroyah is fighting Rodan",
    3:"Destoroyah is fighting King Ghidorah",
    4:"Destoroyah is fighting Megalon",
    5:"Destoroyah is fighting Gigan",
    6:"Destoroyah is fighting Godzilla 90's",
    7:"Destoroyah is fighting Mecha-King Ghidorah",
    8:"Destoroyah is fighting メカゴジラ"
}
MechaG = {
    1:"Mechagodzilla is fighting Anguirus",
    2:"Mechagodzilla is fighting Gigan",
    3:"Mechagodzilla is fighting Rodan",
    4:"Mechagodzilla is fighting King Ghidorah",
    5:"Mechagodzilla is fighting Megalon",
    6:"Mechagodzilla is fighting Destoroyah",
    7:"Mechagodzilla is fighting Godzilla 90's",
    8:"Mechagodzilla is fighting Mecha-King Ghidorah"
}
Kiryu = {
    1:"メカゴジラ is fighting Anguirus",
    2:"メカゴジラ is fighting Gigan",
    3:"メカゴジラ is fighting Rodan",
    4:"メカゴジラ is fighting King Ghidorah",
    5:"メカゴジラ is fighting Megalon",
    6:"メカゴジラ is fighting Destoroyah",
    7:"メカゴジラ is fighting Godzilla 90's",
    8:"メカゴジラ is fighting Mecha-King Ghidorah"
}
Org = {
    1:"Orga is fighting Megalon",
    2:"Orga is fighting Rodan",
    3:"Orga is fighting Mecha-King Ghidorah",
    4:"Orga is fighting Destoroyah",
    5:"Orga is fighting Gigan",
    6:"Orga is fighting Godzilla 2000",
    7:"Orga is fighting King Ghidorah",
    8:"Orga is fighting Mechagodzilla"
}
OrgJP = {
    0:"Orga is fighting Megalon",
    1:"Orga is fighting Rodan",
    2:"Orga is fighting Mecha-King Ghidorah",
    3:"Orga is fighting Destoroyah",
    4:"Orga is fighting Gigan",
    5:"Orga is fighting Godzilla 2000",
    6:"Orga is fighting King Ghidorah",
    7:"Orga is fighting メカゴジラ"
}
DiffLookup = {
    0 : "Easy",
    1 : "Medium",
    2 : "Hard"
}
BWScreen = {
    0 : "",
    1 : "Black & White Mode"
}
TechScreen = {
    0 : "",
    1 : "Technicolor Mode"
}
Mini = {
    0 : "",
    1 : "Mini "
}
Rage = {
    0 : "", 
    1 : "Enraged "
}
Invisible = {
    0 : "", 
    1 : "Invisible "
}
Energy = {
    0 : "", 
    1 : "Energized "
}

G90Fight = rich_presence_lookup("AdventureEnemy", adventureRound(0), G90)
Difficulty = rich_presence_lookup("Diffi", difficulty(0), DiffLookup)
AdventureTime = rich_presence_value("AdvTime", matchTime(0), "SECS")
BWCheat = rich_presence_lookup("BlackWhite", cheats1(0), BWScreen)
TechCheat = rich_presence_lookup("Technicolor", cheats1(0), TechScreen)
MiniCheat = rich_presence_lookup("Mini", cheats1(0), Mini)
RageCheat = rich_presence_lookup("Rage", cheats1(0), Rage)
InvisCheat = rich_presence_lookup("Invis", cheats1(0), Invisible)
EnergyCheat = rich_presence_lookup("Energy", cheats1(0), Energy)
SurvWins = rich_presence_macro("Number", survivalKills(0))
SurvScore = rich_presence_macro("Number", survivalScore(0))

rich_presence_conditional_display(always_true() && (USHash() && demoAttractMode(0) == 1 || 
    EUHash() && demoAttractMode(0) == 1 || JPHash() && demoAttractMode(15968) == 1), 
    "Watching the Demo"
)
rich_presence_conditional_display(always_true() && (USHash() && ascii_string_equals(gameModeAscii(0), "Options") || 
    EUHash() && ascii_string_equals(gameModeAscii(0), "Options") || 
    JPHash() && ascii_string_equals(gameModeAscii(15968), "Options")), 
    "Viewing the Options"
)
rich_presence_conditional_display(always_true() && (USHash() && ascii_string_equals(gameModeAscii(0), "Gallery") || 
    EUHash() && ascii_string_equals(gameModeAscii(0), "Gallery") || 
    JPHash() && ascii_string_equals(gameModeAscii(15968), "Gallery")), 
    "Viewing the Gallery"
)
rich_presence_conditional_display(always_true() && (USHash() && gameMode(0) == 2 || 
    EUHash() && gameMode(0) == 2 || JPHash() && gameMode(15968) == 2), 
    "Playing Team Battle"
)
rich_presence_conditional_display(always_true() && (USHash() && gameMode(0) == 3 || 
    EUHash() && gameMode(0) == 3 || JPHash() && gameMode(15968) == 3), 
    "Playing Melee"
)
rich_presence_conditional_display(always_true() && (USHash() && gameMode(0) == 4 || 
    EUHash() && gameMode(0) == 4 || JPHash() && gameMode(15968) == 4), 
    "Playing Destruction"
)
rich_presence_conditional_display(always_true() && (USHash() && gameMode(0) == 5 && 
    adventureRound(0) == 9 || EUHash() && gameMode(0) == 5 && adventureRound(0) == 9 || 
    JPHash() && gameMode(15968) == 5 && adventureRound(15968) == 9), 
    "The Vortaak have been defeated! But they will return..."
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[0]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("G90", adventureRound(0), G90), 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[1]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Ang", adventureRound(0), Ang), 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[2]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Mega", adventureRound(0), Mega), 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[3]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Giga", adventureRound(0), Giga), 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[4]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("G2K", adventureRound(0), G2K), 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[5]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("KGH", adventureRound(0), KGH), 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[6]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Rod", adventureRound(0), Rod), 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[7]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("MKGH", adventureRound(0), MKGH), 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[8]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Des", adventureRound(0), Des), 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[9]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("MechaG", adventureRound(0), MechaG), 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[10]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Org", adventureRound(0), Org), 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[0]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("G90", adventureRound(0), G90), 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[1]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Ang", adventureRound(0), Ang), 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[2]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Mega", adventureRound(0), Mega), 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[3]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Giga", adventureRound(0), Giga), 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[4]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("G2K", adventureRound(0), G2K), 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[5]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("KGH", adventureRound(0), KGH), 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[6]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Rod", adventureRound(0), Rod), 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[7]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("MKGH", adventureRound(0), MKGH), 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[8]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Des", adventureRound(0), Des), 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[9]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Org", adventureRound(0), Org), 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[10]) && 
    gameMode(0) == 5 && adventureRound(0) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("MechaG", adventureRound(0), MechaG), 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(0), "SECS")
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[0]) && 
    gameMode(15968) == 5 && adventureRound(15968) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("G90JP", adventureRound(15968), G90JP), 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(15968), "SECS")
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[1]) && 
    gameMode(15968) == 5 && adventureRound(15968) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("AngJP", adventureRound(15968), AngJP), 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(15968), "SECS")
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[2]) && 
    gameMode(15968) == 5 && adventureRound(15968) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("MegaJP", adventureRound(15968), MegaJP), 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(15968), "SECS")
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[3]) && 
    gameMode(15968) == 5 && adventureRound(15968) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("GigaJP", adventureRound(15968), GigaJP), 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(15968), "SECS")
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[4]) && 
    gameMode(15968) == 5 && adventureRound(15968) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("G2KJP", adventureRound(15968), G2KJP), 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(15968), "SECS")
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[5]) && 
    gameMode(15968) == 5 && adventureRound(15968) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("KGHJP", adventureRound(15968), KGHJP), 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(15968), "SECS")
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[6]) && 
    gameMode(15968) == 5 && adventureRound(15968) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("RodJP", adventureRound(15968), RodJP), 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(15968), "SECS")
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[7]) && 
    gameMode(15968) == 5 && adventureRound(15968) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("MKGHJP", adventureRound(15968), MKGHJP), 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(15968), "SECS")
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[8]) && 
    gameMode(15968) == 5 && adventureRound(15968) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("DesJP", adventureRound(15968), DesJP), 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(15968), "SECS")
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[11]) && 
    gameMode(15968) == 5 && adventureRound(15968) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("Kiryu", adventureRound(15968), Kiryu), 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(15968), "SECS")
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[10]) && 
    gameMode(15968) == 5 && adventureRound(15968) >= 1, 
    "{0} in {1} Adventure Mode • Time: {2}", 
    rich_presence_lookup("OrgJP", adventureRound(15968), OrgJP), 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_value("AdvTime", matchTime(15968), "SECS")
)
rich_presence_conditional_display(__ornext(USHash() || EUHash()) && 
    ascii_string_equals(characterAscii(0), Chars[0]) && 
    gameMode(0) == 1, 
    "Godzilla 90's is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(0))
)
rich_presence_conditional_display(__ornext(USHash() || EUHash()) && 
    ascii_string_equals(characterAscii(0), Chars[1]) && 
    gameMode(0) == 1, 
    "Anguirus is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(0))
)
rich_presence_conditional_display(__ornext(USHash() || EUHash()) && 
    ascii_string_equals(characterAscii(0), Chars[2]) && 
    gameMode(0) == 1, 
    "Megalon is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(0))
)
rich_presence_conditional_display(__ornext(USHash() || EUHash()) && 
    ascii_string_equals(characterAscii(0), Chars[3]) && 
    gameMode(0) == 1, 
    "Gigan is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(0))
)
rich_presence_conditional_display(__ornext(USHash() || EUHash()) && 
    ascii_string_equals(characterAscii(0), Chars[4]) && 
    gameMode(0) == 1, 
    "Godzilla 2000 is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(0))
)
rich_presence_conditional_display(__ornext(USHash() || EUHash()) && 
    ascii_string_equals(characterAscii(0), Chars[5]) && 
    gameMode(0) == 1, 
    "King Ghidorah is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(0))
)
rich_presence_conditional_display(__ornext(USHash() || EUHash()) && 
    ascii_string_equals(characterAscii(0), Chars[6]) && 
    gameMode(0) == 1, 
    "Rodan is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(0))
)
rich_presence_conditional_display(__ornext(USHash() || EUHash()) && 
    ascii_string_equals(characterAscii(0), Chars[7]) && 
    gameMode(0) == 1, 
    "Mecha-King Ghidorah is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(0))
)
rich_presence_conditional_display(__ornext(USHash() || EUHash()) && 
    ascii_string_equals(characterAscii(0), Chars[8]) && 
    gameMode(0) == 1, 
    "Destoroyah is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(0))
)
rich_presence_conditional_display(__ornext(USHash() || EUHash()) && 
    ascii_string_equals(characterAscii(0), Chars[9]) && 
    gameMode(0) == 1, 
    "Mechagodzilla is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(0))
)
rich_presence_conditional_display(__ornext(USHash() || EUHash()) && 
    ascii_string_equals(characterAscii(0), Chars[10]) && 
    gameMode(0) == 1, 
    "Orga is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(0))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[0]) && 
    gameMode(15968) == 1, 
    "Godzilla 90's is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[1]) && 
    gameMode(15968) == 1, 
    "Anguirus is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[2]) && 
    gameMode(15968) == 1, 
    "Megalon is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[3]) && 
    gameMode(15968) == 1, 
    "Gigan is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[4]) && 
    gameMode(15968) == 1, 
    "Godzilla 2000 is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[5]) && 
    gameMode(15968) == 1, 
    "King Ghidorah is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[6]) && 
    gameMode(15968) == 1, 
    "Rodan is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[7]) && 
    gameMode(15968) == 1, 
    "Mecha-King Ghidorah is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[8]) && 
    gameMode(15968) == 1, 
    "Destoroyah is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[11]) && 
    gameMode(15968) == 1, 
    "メカゴジラ is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[10]) && 
    gameMode(15968) == 1, 
    "Orga is in Versus Mode • Wins: {0}", 
    rich_presence_macro("Number", versusSurvP1Wins(15968))
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[0]) && 
    gameMode(0) == 6, 
    "Godzilla 90's is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[1]) && 
    gameMode(0) == 6, 
    "Anguirus is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[2]) && 
    gameMode(0) == 6, 
    "Megalon is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[3]) && 
    gameMode(0) == 6, 
    "Gigan is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[4]) && 
    gameMode(0) == 6, 
    "Godzilla 2000 is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[5]) && 
    gameMode(0) == 6, 
    "King Ghidorah is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[6]) && 
    gameMode(0) == 6, 
    "Rodan is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[7]) && 
    gameMode(0) == 6, 
    "Mecha-King Ghidorah is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[8]) && 
    gameMode(0) == 6, 
    "Destoroyah is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[9]) && 
    gameMode(0) == 6, 
    "Mechagodzilla is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(USHash() && ascii_string_equals(characterAscii(0), Chars[10]) && 
    gameMode(0) == 6, 
    "Orga is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(0), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[0]) && 
    gameMode(0) == 6, 
    "Godzilla 90's is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[1]) && 
    gameMode(0) == 6, 
    "Anguirus is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[2]) && 
    gameMode(0) == 6, 
    "Megalon is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[3]) && 
    gameMode(0) == 6, 
    "Gigan is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[4]) && 
    gameMode(0) == 6, 
    "Godzilla 2000 is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[5]) && 
    gameMode(0) == 6, 
    "King Ghidorah is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[6]) && 
    gameMode(0) == 6, 
    "Rodan is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[7]) && 
    gameMode(0) == 6, 
    "Mecha-King Ghidorah is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[8]) && 
    gameMode(0) == 6, 
    "Destoroyah is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[9]) && 
    gameMode(0) == 6, 
    "Mechagodzilla is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(EUHash() && ascii_string_equals(characterAscii(0), Chars[10]) && 
    gameMode(0) == 6, 
    "Orga is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(-1081344), DiffLookup), 
    rich_presence_macro("Number", survivalKills(0)), 
    rich_presence_macro("Number", survivalScore(0))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[0]) && 
    gameMode(15968) == 6, 
    "Godzilla 90's is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_macro("Number", survivalKills(15968)), 
    rich_presence_macro("Number", survivalScore(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[1]) && 
    gameMode(15968) == 6, 
    "Anguirus is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_macro("Number", survivalKills(15968)), 
    rich_presence_macro("Number", survivalScore(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[2]) && 
    gameMode(15968) == 6, 
    "Megalon is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_macro("Number", survivalKills(15968)), 
    rich_presence_macro("Number", survivalScore(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[3]) && 
    gameMode(15968) == 6, 
    "Gigan is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_macro("Number", survivalKills(15968)), 
    rich_presence_macro("Number", survivalScore(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[4]) && 
    gameMode(15968) == 6, 
    "Godzilla 2000 is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_macro("Number", survivalKills(15968)), 
    rich_presence_macro("Number", survivalScore(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[5]) && 
    gameMode(15968) == 6, 
    "King Ghidorah is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_macro("Number", survivalKills(15968)), 
    rich_presence_macro("Number", survivalScore(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[6]) && 
    gameMode(15968) == 6, 
    "Rodan is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_macro("Number", survivalKills(15968)), 
    rich_presence_macro("Number", survivalScore(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[7]) && 
    gameMode(15968) == 6, 
    "Mecha-King Ghidorah is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_macro("Number", survivalKills(15968)), 
    rich_presence_macro("Number", survivalScore(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[8]) && 
    gameMode(15968) == 6, 
    "Destoroyah is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_macro("Number", survivalKills(15968)), 
    rich_presence_macro("Number", survivalScore(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[10]) && 
    gameMode(15968) == 6, 
    "Orga is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_macro("Number", survivalKills(15968)), 
    rich_presence_macro("Number", survivalScore(15968))
)
rich_presence_conditional_display(JPHash() && ascii_string_equals(characterAscii(15968), Chars[11]) && 
    gameMode(15968) == 6, 
    "メカゴジラ is in {0} Survival Mode • Wins: {1} • Score: {2}", 
    rich_presence_lookup("Diffi", difficulty(32000), DiffLookup), 
    rich_presence_macro("Number", survivalKills(15968)), 
    rich_presence_macro("Number", survivalScore(15968))
)
rich_presence_display("Become the King of the Monsters!")
