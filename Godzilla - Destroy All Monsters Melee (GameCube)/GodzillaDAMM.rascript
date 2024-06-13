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
function characterAscii(offset) => 0x208CC0 + offset

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
//          3 = 3 rounds/default
//          1 = 1 round
//          5 = 5 rounds
function rounds(offset) => dword_be(0x316B30 + offset)

// $316B34: Round Time [Float BE]
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

function Demo(offset) {
    return demoAttractMode(offset) == 0
}

function Progression(Title, Name, ID) {
    achievement(
        title = Title, 
        description = "Complete Adventure Mode with " + Name + ".", 
        points = 5,
        trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || JPHash() && Demo(15968) && Cheats(15968) && gameMode(15968) == 5 && 
        prev(adventureRound(15968)) == 8 && adventureRound(15968) == 9 && 
        ascii_string_equals(characterAscii(15968), Chars[ID]))
    )
}

Progression("Return of Godzilla", "Godzilla 90's", 0)

function AdventureHard(Title, Name, ID) {
    achievement(
        title = Title, 
        description = "Complete Adventure Mode with " + Name + " on Hard.", 
        points = 10,
        trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && difficulty(0) == 2 && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && difficulty(-1081344) == 2 && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || JPHash() && Demo(15968) && Cheats(15968) && gameMode(15968) == 5 && difficulty(32000) == 2 && 
        prev(adventureRound(15968)) == 8 && adventureRound(15968) == 9 && 
        ascii_string_equals(characterAscii(15968), Chars[ID]))
    )
}

AdventureHard("Return", "Godzilla 90's", 0)

function AdventureLB(Title, DiffID, ID) {
    leaderboard(
        "Adventure Mode: " + Title, 
        "Complete Adventure Mode in the fastest time", 
        always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && difficulty(0) == DiffID && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && difficulty(-1081344) == DiffID && 
        prev(adventureRound(0)) == 8 && adventureRound(0) == 9 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || JPHash() && Demo(15968) && Cheats(15968) && gameMode(15968) == 5 && difficulty(32000) == DiffID && 
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

function Survival(Title, Name, ID) {
    achievement(
        title = Title, 
        description = "Get 8 kills in Survival Mode.", 
        points = 5,
        trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && 
        prev(survivalKills(0)) == 7 && survivalKills(0) == 8 || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && 
        prev(survivalKills(0)) == 7 && survivalKills(0) == 8 || JPHash() && Demo(15968) && Cheats(15968) && gameMode(15968) == 6 && 
        prev(survivalKills(15968)) == 7 && survivalKills(15968) == 8)
    )
}

Survival("BasicSurvival", "Godzilla 90's", 0)

function SurvivalHard(Title, Name, ID) {
    achievement(
        title = Title, 
        description = "Get 8 kills in Survival Mode with " + Name + " on Hard.", 
        points = 10,
        trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && difficulty(0) == 2 && 
        prev(survivalKills(0)) == 7 && survivalKills(0) == 8 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && difficulty(-1081344) == 2 && 
        prev(survivalKills(0)) == 7 && survivalKills(0) == 8 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || JPHash() && Demo(15968) && Cheats(15968) && gameMode(15968) == 6 && difficulty(32000) == 2 && 
        prev(survivalKills(15968)) == 7 && survivalKills(15968) == 8 && 
        ascii_string_equals(characterAscii(15968), Chars[ID]))
    )
}

SurvivalHard("HardSurv", "Godzilla 90's", 0)

function SurvivalLB(Title, DiffID, ID) {
    leaderboard(
        "Survival Mode: " + Title, 
        "Earn the highest score (submits on game over)", 
        always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && difficulty(0) == DiffID && 
        versusSurvP1Wins(0) == 0 && prev(versusSurvRoundsCompleted(0)) == 0 && 
        versusSurvRoundsCompleted(0) == 1 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 6 && difficulty(-1081344) == DiffID && 
        versusSurvP1Wins(0) == 0 && prev(versusSurvRoundsCompleted(0)) == 0 && 
        versusSurvRoundsCompleted(0) == 1 && 
        ascii_string_equals(characterAscii(0), Chars[ID]) || JPHash() && Demo(15968) && Cheats(15968) && gameMode(15968) == 6 && difficulty(32000) == DiffID && 
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

achievement(
    title = "Rage", 
    description = "Unleash a Rage attack.", 
    points = 1, 
    trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) != 0 && 
    prev(p1RageTimer(0)) >= 0.03125 && p1RageTimer(0) == 0 || EUHash() && Demo(0) && Cheats(0) && gameMode(0) != 0 && 
    prev(p1RageTimer(14976)) >= 0.03125 && p1RageTimer(14976) == 0 || JPHash() && Demo(15968) && Cheats(15968) && gameMode(15968) != 0 && 
    prev(p1RageTimer(32000)) >= 0.03125 && p1RageTimer(32000) == 0)
)

achievement(
    title = "Monster of Man", 
    description = "Unlock Mechagodzilla or Kiryu.", 
    points = 2, 
    trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
    prev(mechagodzillaLocked(0)) == 1 && mechagodzillaLocked(0) == 0 || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
    prev(mechagodzillaLocked(-1081344)) == 1 && mechagodzillaLocked(-1081344) == 0 || JPHash() && Demo(15968) && Cheats(15968) && gameMode(15968) == 5 && 
    prev(mechagodzillaLocked(32000)) == 1 && mechagodzillaLocked(32000) == 0)
)
achievement(
    title = "G-Cell Devourer", 
    description = "Unlock Orga.", 
    points = 2, 
    trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
    __ornext(prev(orgaLocked(0)) == 1 || prev(orgaLocked(0)) == 2) && orgaLocked(0) == 0 || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
    __ornext(prev(orgaLocked(-1081344)) == 1 || prev(orgaLocked(-1081344)) == 2) && orgaLocked(-1081344) == 0 || JPHash() && Demo(15968) && Cheats(15968) && gameMode(15968) == 5 && 
    __ornext(prev(orgaLocked(32000)) == 1 || prev(orgaLocked(32000)) == 2) && orgaLocked(32000) == 0)
)

achievement(
    title = "Arena Gladiator", 
    description = "Unlock all Arenas.", 
    points = 2, 
    trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
    //sum_of(ArenasUS, a => prev(a)) <= 3 && 
    sum_of(ArenasUS, a => prev(a)) > 0 && 
    sum_of(ArenasUS, a => a) == 0 || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
    //sum_of(ArenasEU, a => prev(a)) <= 3 && 
    sum_of(ArenasEU, a => prev(a)) > 0 && 
    sum_of(ArenasEU, a => a) == 0 || JPHash() && Demo(15968) && Cheats(15968) && gameMode(15968) == 5 && 
    //sum_of(ArenasJP, a => prev(a)) <= 3 && 
    sum_of(ArenasJP, a => prev(a)) > 0 && 
    sum_of(ArenasJP, a => a) == 0)
)

function Gallery(Title, Points, Amount) {
    achievement(
        title = Title, 
        description = "Collect " + Amount + " Gallery pieces.", 
        points = Points,
        trigger = always_true() && (USHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
        prev(galleryArtsUnlocked(0)) == Amount - 1 && galleryArtsUnlocked(0) == Amount || EUHash() && Demo(0) && Cheats(0) && gameMode(0) == 5 && 
        prev(galleryArtsUnlocked(-1081344)) == Amount - 1 && galleryArtsUnlocked(-1081344) == Amount || JPHash() && Demo(15968) && Cheats(15968) && gameMode(15968) == 5 && 
        prev(galleryArtsUnlocked(32000)) == Amount - 1 && galleryArtsUnlocked(32000) == Amount)
    )
}

Gallery("Novice", 3, 8)
