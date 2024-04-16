// Godzilla: Save the Earth
// #ID = 20849

// $691440: demo = 0 [32-bit] backup
function demo() => dword(0x691440)

// $696D34: Game type [32-bit]
//          1 = Versus
//          2 = Team battle
//          3 = Free for all
//          4 = Destruction
//          5 = Action
//          6 = Survival
//          8 = Challenges
//          9 = Team destruction
function gameType() => dword(0x696D34)

// $696EBC: P1 team [32-bit]
//          1 = Blue
//          2 = Red
function p1Team() => dword(0x696EBC)

// $696F6C: P2 team [32-bit]
function p2Team() => dword(0x696F6C)

// $69701C: P3 team [32-bit]
function p3Team() => dword(0x69701C)

// $6970CC: P4 team [32-bit]
function p4Team() => dword(0x6970CC)

// $697E2C: Main menu state [32-bit]
//          Main menu or intro cutscene = 0
function mainMenuState() => dword(0x697E2C)

// $6A6724: Points [32-bit]
function points() => dword(0x6A6724)

// $6A6738: Arena pack 1 [32-bit]
//          All map addresses follow this format:
//          00 = unlocked
//          01 = locked
//          02 = locked and not available to purchase
function arenaPack1() => dword(0x6A6738)

// $6A673C: Arena pack 2 [32-bit]
function arenaPack2() => dword(0x6A673C)

// $6A6740: Arena pack 3 [32-bit]
function arenaPack3() => dword(0x6A6740)

// $6A6744: Monster Island [32-bit]
//          Comes for free with Arena pack 1
function monsterIsland() => dword(0x6A6744)

// $6A6748: Monster Island Bay available in Survival = 0 [32-bit]
function monsterIslandBayAvailableInSurvival() => dword(0x6A6748)

// $6A674C: Tokyo Bay [32-bit]
function tokyoBay() => dword(0x6A674C)

// $6A6750: Tokyo available in Survival = 0 [32-bit]
function tokyoAvailableInSurvival() => dword(0x6A6750)

// $6A6754: LA South [32-bit]
function laSouth() => dword(0x6A6754)

// $6A6758: Los Angeles [32-bit]
function losAngeles() => dword(0x6A6758)

// $6A675C: Seattle North [32-bit]
function seattleNorth() => dword(0x6A675C)

// $6A6760: Seattle available in Survival = 0 [32-bit]
function seattleAvailableInSurvival() => dword(0x6A6760)

// $6A6764: Osaka North available in Survival = 0 [32-bit]
function osakaNorthAvailableInSurvival() => dword(0x6A6764)

// $6A6768: Osaka [32-bit]
function osaka() => dword(0x6A6768)

// $6A676C: Manhattan [32-bit]
function manhattan() => dword(0x6A676C)

// $6A6770: New York [32-bit]
function newYork() => dword(0x6A6770)

// $6A6774: London East [32-bit]
//          Comes for free with Arena pack 2
function londonEast() => dword(0x6A6774)

// $6A6778: London [32-bit]
function london() => dword(0x6A6778)

// $6A677C: Boston East [32-bit]
function bostonEast() => dword(0x6A677C)

// $6A6780: Boston [32-bit]
function boston() => dword(0x6A6780)

// $6A6784: Mothership [32-bit]
//          Comes for free with Arena pack 3
function mothership() => dword(0x6A6784)

// $6A6788: Boxing Ring [32-bit]
function boxingRing() => dword(0x6A6788)

// $6A678C: Golden Gate [32-bit]
function goldenGate() => dword(0x6A678C)

// $6A6790: San Francisco [32-bit]
function sanFrancisco() => dword(0x6A6790)

// $6A6794: Monster Pack 1 [32-bit]
//          00 = unlocked
//          01 = locked
function monsterPack1() => dword(0x6A6794)

// $6A6798: Monster Pack 2 [32-bit]
function monsterPack2() => dword(0x6A6798)

// $6A679C: Monster Pack 3 [32-bit]
function monsterPack3() => dword(0x6A679C)

// $6A67A0: Anguirus [32-bit]
//          All character addresses follow this format:
//          00 = unlocked
//          02 = locked
function anguirus() => dword(0x6A67A0)

// $6A67A4: Anguirus Action High Score [32-bit]
function anguirusActionHighScore() => dword(0x6A67A4)

// $6A67A8: Action mode progress [32-bit]
//          02 = Have started an easy playthrough in the past
//          03 = Completed an easy playthrough
function actionModeProgress() => dword(0x6A67A8)

// $6A67D0: Baragon [32-bit]
function baragon() => dword(0x6A67D0)

// $6A6830: Destoroyah [32-bit]
function destoroyah() => dword(0x6A6830)

// $6A6860: King Ghidorah [32-bit]
//          Comes for free with Monster pack 1
function kingGhidorah() => dword(0x6A6860)

// $6A6890: Gigan [32-bit]
function gigan() => dword(0x6A6890)

// $6A68C0: Godzilla 2000 [32-bit]
function godzilla2000() => dword(0x6A68C0)

// $6A68C4: Godzilla 2000 Action High Score [32-bit]
function godzilla2000ActionHighScore() => dword(0x6A68C4)

// $6A68F0: Godzilla 90's [32-bit]
function godzilla90s() => dword(0x6A68F0)

// $6A6920: Jet Jaguar [32-bit]
function jetJaguar() => dword(0x6A6920)

// $6A6950: Mechagodzilla 2 [32-bit]
function mechagodzilla2() => dword(0x6A6950)

// $6A6980: Mechagodzilla 3 [32-bit]
//          Comes for free with Monster pack 3
function mechagodzilla3() => dword(0x6A6980)

// $6A69B0: Megaguirus [32-bit]
function megaguirus() => dword(0x6A69B0)

// $6A69E0: Megalon [32-bit]
function megalon() => dword(0x6A69E0)

// $6A6A10: Mecha-King Ghidorah [32-bit]
function mechaKingGhidorah() => dword(0x6A6A10)

// $6A6A40: Moguera 2 [32-bit]
function moguera2() => dword(0x6A6A40)

// $6A6A70: Mothra [32-bit]
function mothra() => dword(0x6A6A70)

// $6A6AA0: Orga [32-bit]
//          Comes for free with Monster pack 2
function orga() => dword(0x6A6AA0)

// $6A6AD0: Rodan [32-bit]
function rodan() => dword(0x6A6AD0)

// $6A6B00: Space Godzilla [32-bit]
function spacegodzilla() => dword(0x6A6B00)

// $6A6B30: Gallery [108 Bytes 32-bit]
//          00 = unlocked
//          01 = locked
function gallery() => byte(0x6A6B30)

// $6A6B9C: Final Wars [52 Bytes 32-bit]
//          00 = unlocked
//          01 = locked
function finalWars() => byte(0x6A6B9C)

// $6A6BD0: Versus rounds [32-bit]
function versusRounds() => dword(0x6A6BD0)

// $6A6BD4: Versus difficulty [32-bit]
function versusDifficulty() => dword(0x6A6BD4)

// $6A6BD8: Versus round length [32-bit]
function versusRoundLength() => dword(0x6A6BD8)

// $6A6BDC: Versus reset arenas [32-bit]
function versusResetArenas() => dword(0x6A6BDC)

// $6A6BE0: Melee play to wins [32-bit]
function meleePlayToWins() => dword(0x6A6BE0)

// $6A6BE4: Melee difficulty [32-bit]
function meleeDifficulty() => dword(0x6A6BE4)

// $6A6BE8: Melee round length [32-bit]
function meleeRoundLength() => dword(0x6A6BE8)

// $6A6BEC: Melee reset areas [32-bit]
function meleeResetAreas() => dword(0x6A6BEC)

// $6A6C24: Survival difficulty [32-bit]
function survivalDifficulty() => dword(0x6A6C24)

// $6A6C34: Action difficulty [32-bit]
function actionDifficulty() => dword(0x6A6C34)

// $6A6C7C: 100k point cheat [32-bit]
//          00 = not used
//          01 = used
function pointCheat1() => dword(0x6A6C7C)

// $6A6C80: 150k point cheat [32-bit]
function pointCheat2() => dword(0x6A6C80)

// $6A6C84: 200k point cheat [32-bit]
function pointCheat3() => dword(0x6A6C84)

// $6B0740: Survival rounds [32-bit] backup
function survivalRoundsBackup() => dword(0x6B0740)

// $6B0754: Action mode round win flag [32-bit]
//          Challenges are always a win even if failed
function actionRoundWin() => dword(0x6B0754)

// $6B0758: Melee/Survival P1 current score [32-bit]
function meleeSurvivalP1CurrentScore() => dword(0x6B0758)

// $6B0790: Action mode round loss flag [32-bit]
//          Challenges are always a win even if failed
function actionRoundWin() => dword(0x6B0790)

// $6C588C: Action/Survival rounds [32-bit]
//          Action: updates after the first menu of the end of a round
//          Survival: updates after beating enemy
function actionSurvivalRounds() => dword(0x6C588C)

// $6C5894: Action mode score [32-bit]
//          Updates during victory animation
function actionModeScore() => dword(0x6C5894)

// $6C58A8: Game [ASCII]
//          fpm_01.bsf = Asteroid Field
//          water.bsf = Undersea Battle
//          otherwise Game.bsf
function gameAscii(offset = 0) => 0x6C58A8 + offset

// $6C58E8: Map/Arena [ASCII]
//          New_Tokyo_Main_DAY = Tokyo
//          NewYork_DAY = New York
//          New_SF_Main_DAY = San Francisco
//          New_Osaka_Main_DAY = Osaka
//          New_London_Main_DAY = London
//          New_Boston_Main_DAY = Boston
//          MonsterIsland_DAY = Monster Island
//          New_Seattle_Main_DAY = Seattle
//          New_LA_Main_DAY = Los Angeles
//          New_Mothership = Mothership
//          New_Tokyo_Main0_DAY = Tokyo Bay
//          NewYork0_DAY = Manhattan
//          New_SF_Main0_DAY = Golden Gate
//          New_Osaka_Main0_DAY = Osaka North
//          New_London_Main0_DAY = London East
//          New_Boston_Main0_DAY = Boston East
//          MonsterIsland0_DAY = Monster Island Bay
//          New_Seattle_Main0_DAY = Seattle North
//          New_LA_Main0_DAY = L.A. South
//          Boxing_Ring_PS2_DAY = Boxing Ring
//          ChallengeBattleships_DAY
//          ChallengeBasketball_DAY
//          ChallengeOsakaCrunch
//          ChallengeBowling_DAY
//          ChallengeDemolition_DAY
//          ChallengeUFOSF_DAY
//          ChallengeJagClone
//          ChallengePenupSF_DAY
//          Replicator_DAY
//          MSMothership
//          Night levels are found by removing the _DAY
function mapArenaAscii(offset = 0) => 0x6C58E8 + offset

// $6C5978: P1 character [ASCII]
//          godzilla2k
//          godzilla90
//          gigan
//          anguirus
//          megalon
//          rodan
//          ghidorah
//          mechagodzilla2
//          destoroyah
//          megaguirus
//          orga
//          mghidorah
//          baragon
//          mothra_larvae
//          mothra
//          mechagodzilla3
//          jetjaguar
//          moguera2
//          spacegodzilla
function p1CharacterAscii(offset = 0) => 0x6C5978 + offset

// $6C59DC: Player1 = there is a first character [ASCII]
//          just check the first byte
//			Used to determine if a game has started
//			does not reset on main menu, but does on char select
function p1Exists() => byte(0x6C59DC)

// $6C5A28: P2 character [ASCII]
function p2CharacterAscii() => byte(0x6C5A28)

// $6C5A8C: Player2 = there is a second character [ASCII]
//          just check the first byte
function p2Exists() => byte(0x6C5A8C)

// $6C5AD8: P3 character [ASCII]
function p3CharacterAscii() => byte(0x6C5AD8)

// $6C5B3C: Player3 = there is a third character [ASCII]
//          just check the first byte
function p3Exists() => byte(0x6C5B3C)

// $6C5B88: P4 character [ASCII]
function p4CharacterAscii() => byte(0x6C5B88)

// $6C5BEC: Player4 = there is a fourth character [ASCII]
//          just check the first byte
function p4Exists() => byte(0x6C5BEC)

// $6C5C38: Cheats [Bitflags]
//          Bit0 = Unlock gallery
//          Bit1 = Unlock Final Wars
//          Bit2 = Unlock all monsters
//          Bit3 = Unlock all cities
//          Bit4 = Unlock all challenges
//          Master code cheat (246518) flips all these bits at once
function cheats1() => byte(0x6C5C38)

// $6C5C3C: Cheats [Bitflags]
//          Bit0 = P1 invulnerable
//          Bit1 = P2 invulnerable
//          Bit2 = P3 invulnerable
//          Bit3 = P4 invulnerable
//          Bit4 = P1 4x damage
//          Bit5 = P2 4x damage
//          Bit6 = P3 4x damage
//          Bit7 = P4 4x damage
function cheats2() => byte(0x6C5C3C)

// $6C5C3D: Cheats [Bitflags]
//          Bit1 = Health regenerates
//          Bit3 = P1 invisible
//          Bit4 = P2 invisible
//          Bit5 = P3 invisible
//          Bit6 = P4 invisible
//          Bit7 = Indestructible buildings
function cheats3() => byte(0x6C5C3D)

// $6C5C3E: Cheats [Bitflags]
//          Bit1 = Energy doesnt regenerate
function cheats4() => byte(0x6C5C3E)

// $6C5C40: Cheats [Bitflags]
//          Bit0 = P1 infinite energy
//          Bit1 = P2 infinite energy
//          Bit2 = P3 infinite energy
//          Bit3 = P4 infinite energy
//          Bit4 = P1 infinite rage
//          Bit5 = P2 infinite rage
//          Bit6 = P3 infinite rage
//          Bit7 = P4 infinite rage
function cheats5() => byte(0x6C5C40)

// $6C5D44: P1 rounds won [32-bit]
function p1RoundsWon() => dword(0x6C5D44)

// $6C5D48: Melee P1 score [32-bit]
function meleeP1Score() => dword(0x6C5D48)

// $6C5D4C: P1 won most recent round [32-bit]
function p1WonMostRecentRound() => dword(0x6C5D4C)

// $6C5D54: P2 rounds won [32-bit]
function p2RoundsWon() => dword(0x6C5D54)

// $6C5D58: Melee P2 score [32-bit]
function meleeP2Score() => dword(0x6C5D58)

// $6C5D5C: P2 won most recent round [32-bit]
function p2WonMostRecentRound() => dword(0x6C5D5C)

// $6C5D64: P3 rounds won [32-bit]
function p3RoundsWon() => dword(0x6C5D64)

// $6C5D68: Melee P3 score [32-bit]
function meleeP3Score() => dword(0x6C5D68)

// $6C5D6C: P3 won most recent round [32-bit]
function p3WonMostRecentRound() => dword(0x6C5D6C)

// $6C5D74: P4 rounds won [32-bit]
function p4RoundsWon() => dword(0x6C5D74)

// $6C5D78: Melee P4 score [32-bit]
function meleeP4Score() => dword(0x6C5D78)

// $6C5D7C: P4 won most recent round [32-bit]
function p4WonMostRecentRound() => dword(0x6C5D7C)

// $6C5D84: Total rounds completed [32-bit]
function totalRoundsCompleted() => dword(0x6C5D84)

// $6E57DC: P1 health [Float]
//          Godzilla 2000 = 500
//          Godzilla 90's = 500
//          Anguirus = 550
//          Gigan = 500
//          Megalon = 500
//          Rodan = 350
//          King Ghidorah = 500
//          Baragon = 450
//          Mechagodzilla 2 = 500
//          Mothra Larva = 250
//          Mothra = 300
//          Orga = 500
function p1Health() => float(0x6E57DC)

// $6E57E8: P1 Energy [Float]
//          max = 1.0
function p1Energy() => float(0x6E57E8)

// $6E584C: P1 Rage timer [32-bit]
function p1RageTimer() => dword(0x6E584C)

// $6E5850: P1 Rage = 1 [32-bit]
function p1Rage() => dword(0x6E5850)

// $6F27DC: P2 health [Float]
function p2Health() => float(0x6F27DC)

// $6F27E8: P2 energy [Float]
function p2Energy() => float(0x6F27E8)

// $6F284C: P2 Rage timer [32-bit]
function p2RageTimer() => dword(0x6F284C)

// $6F2850: P2 Rage = 1 [32-bit]
function p2Rage() => dword(0x6F2850)

// $6FF7DC: P3 health [Float]
function p3Health() => float(0x6FF7DC)

// $6FF7E8: P3 energy [Float]
function p3Energy() => float(0x6FF7E8)

// $70C7DC: P4 health [Float]
function p4Health() => float(0x70C7DC)

// $70C7E8: P4 energy [Float]
function p4Energy() => float(0x70C7E8)

// $1B5B3E0: Minutes left [8-bit ASCII]
function minutesLeft() => byte(0x1B5B3E0)

// $1B5B430: Tens of seconds left [8-bit ASCII]
function tensOfSecondsLeft() => byte(0x1B5B430)

// $1B5B600: Seconds left [8-bit ASCII]
function secondsLeft() => byte(0x1B5B600)

// ASCII strings of gametype
AsteroidField = [0x66,0x70,0x6d,0x5f,0x30,0x31,0x2e,0x62,0x73,0x66]
UnderseaBattle = [0x77,0x61,0x74,0x65,0x72,0x2e,0x62,0x73,0x66]

// ASCII strings of maps
TokyoDay = [0x4e,0x65,0x77,0x5f,0x54,0x6f,0x6b,0x79,0x6f,0x5f,0x4d,0x61,0x69,0x6e,0x5f,0x44,0x41,0x59]
Tokyo = [0x4e,0x65,0x77,0x5f,0x54,0x6f,0x6b,0x79,0x6f,0x5f,0x4d,0x61,0x69,0x6e]
NewYorkDay = [0x4e,0x65,0x77,0x59,0x6f,0x72,0x6b,0x5f,0x44,0x41,0x59]
NewYork = [0x4e,0x65,0x77,0x59,0x6f,0x72,0x6b]
SFDay = [0x4e,0x65,0x77,0x5f,0x53,0x46,0x5f,0x4d,0x61,0x69,0x6e,0x5f,0x44,0x41,0x59]
SF = [0x4e,0x65,0x77,0x5f,0x53,0x46,0x5f,0x4d,0x61,0x69,0x6e]
OsakaDay = [0x4e,0x65,0x77,0x5f,0x4f,0x73,0x61,0x6b,0x61,0x5f,0x4d,0x61,0x69,0x6e,0x5f,0x44,0x41,0x59]
Osaka = [0x4e,0x65,0x77,0x5f,0x4f,0x73,0x61,0x6b,0x61,0x5f,0x4d,0x61,0x69,0x6e]
LondonDay = [0x4e,0x65,0x77,0x5f,0x4c,0x6f,0x6e,0x64,0x6f,0x6e,0x5f,0x4d,0x61,0x69,0x6e,0x5f,0x44,0x41,0x59]
London = [0x4e,0x65,0x77,0x5f,0x4c,0x6f,0x6e,0x64,0x6f,0x6e,0x5f,0x4d,0x61,0x69,0x6e]
BostonDay = [0x4e,0x65,0x77,0x5f,0x42,0x6f,0x73,0x74,0x6f,0x6e,0x5f,0x4d,0x61,0x69,0x6e,0x5f,0x44,0x41,0x59]
Boston = [0x4e,0x65,0x77,0x5f,0x42,0x6f,0x73,0x74,0x6f,0x6e,0x5f,0x4d,0x61,0x69,0x6e]
MonsterIslandDay = [0x4d,0x6f,0x6e,0x73,0x74,0x65,0x72,0x49,0x73,0x6c,0x61,0x6e,0x64,0x5f,0x44,0x41,0x59]
MonsterIsland = [0x4d,0x6f,0x6e,0x73,0x74,0x65,0x72,0x49,0x73,0x6c,0x61,0x6e,0x64]
SeattleDay = [0x4e,0x65,0x77,0x5f,0x53,0x65,0x61,0x74,0x74,0x6c,0x65,0x5f,0x4d,0x61,0x69,0x6e,0x5f,0x44,0x41,0x59]
Seattle = [0x4e,0x65,0x77,0x5f,0x53,0x65,0x61,0x74,0x74,0x6c,0x65,0x5f,0x4d,0x61,0x69,0x6e]
LADay = [0x4e,0x65,0x77,0x5f,0x4c,0x41,0x5f,0x4d,0x61,0x69,0x6e,0x5f,0x44,0x41,0x59]
LA = [0x4e,0x65,0x77,0x5f,0x4c,0x41,0x5f,0x4d,0x61,0x69,0x6e]
Mothership = [0x4e,0x65,0x77,0x5f,0x4d,0x6f,0x74,0x68,0x65,0x72,0x73,0x68,0x69,0x70]
TokyoBayDay = [0x4e,0x65,0x77,0x5f,0x54,0x6f,0x6b,0x79,0x6f,0x5f,0x4d,0x61,0x69,0x6e,0x30,0x5f,0x44,0x41,0x59]
TokyoBay = [0x4e,0x65,0x77,0x5f,0x54,0x6f,0x6b,0x79,0x6f,0x5f,0x4d,0x61,0x69,0x6e,0x30]
ManhattanDay = [0x4e,0x65,0x77,0x59,0x6f,0x72,0x6b,0x30,0x5f,0x44,0x41,0x59]
Manhattan = [0x4e,0x65,0x77,0x59,0x6f,0x72,0x6b,0x30]
GoldenGateDay = [0x4e,0x65,0x77,0x5f,0x53,0x46,0x5f,0x4d,0x61,0x69,0x6e,0x30,0x5f,0x44,0x41,0x59]
GoldenGate = [0x4e,0x65,0x77,0x5f,0x53,0x46,0x5f,0x4d,0x61,0x69,0x6e,0x30]
OsakaNorthDay = [0x4e,0x65,0x77,0x5f,0x4f,0x73,0x61,0x6b,0x61,0x5f,0x4d,0x61,0x69,0x6e,0x30,0x5f,0x44,0x41,0x59]
OsakaNorth = [0x4e,0x65,0x77,0x5f,0x4f,0x73,0x61,0x6b,0x61,0x5f,0x4d,0x61,0x69,0x6e,0x30]
LondonEastDay = [0x4e,0x65,0x77,0x5f,0x4c,0x6f,0x6e,0x64,0x6f,0x6e,0x5f,0x4d,0x61,0x69,0x6e,0x30,0x5f,0x44,0x41,0x59]
LondonEast = [0x4e,0x65,0x77,0x5f,0x4c,0x6f,0x6e,0x64,0x6f,0x6e,0x5f,0x4d,0x61,0x69,0x6e,0x30]
BostonEastDay = [0x4e,0x65,0x77,0x5f,0x42,0x6f,0x73,0x74,0x6f,0x6e,0x5f,0x4d,0x61,0x69,0x6e,0x30,0x5f,0x44,0x41,0x59]
BostonEast = [0x4e,0x65,0x77,0x5f,0x42,0x6f,0x73,0x74,0x6f,0x6e,0x5f,0x4d,0x61,0x69,0x6e,0x30]
MonsterIslandBayDay = [0x4d,0x6f,0x6e,0x73,0x74,0x65,0x72,0x49,0x73,0x6c,0x61,0x6e,0x64,0x30,0x5f,0x44,0x41,0x59]
MonsterIslandBay = [0x4d,0x6f,0x6e,0x73,0x74,0x65,0x72,0x49,0x73,0x6c,0x61,0x6e,0x64,0x30]
SeattleNorthDay = [0x4e,0x65,0x77,0x5f,0x53,0x65,0x61,0x74,0x74,0x6c,0x65,0x5f,0x4d,0x61,0x69,0x6e,0x30,0x5f,0x44,0x41,0x59]
SeattleNorth = [0x4e,0x65,0x77,0x5f,0x53,0x65,0x61,0x74,0x74,0x6c,0x65,0x5f,0x4d,0x61,0x69,0x6e,0x30]
LASouthDay = [0x4e,0x65,0x77,0x5f,0x4c,0x41,0x5f,0x4d,0x61,0x69,0x6e,0x30,0x5f,0x44,0x41,0x59]
LASouth = [0x4e,0x65,0x77,0x5f,0x4c,0x41,0x5f,0x4d,0x61,0x69,0x6e,0x30]
BoxingRingDay = [0x42,0x6f,0x78,0x69,0x6e,0x67,0x5f,0x52,0x69,0x6e,0x67,0x5f,0x50,0x53,0x32,0x5f,0x44,0x41,0x59]
BoxingRing = [0x42,0x6f,0x78,0x69,0x6e,0x67,0x5f,0x52,0x69,0x6e,0x67,0x5f,0x50,0x53,0x32]
BattleshipsDay = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x42,0x61,0x74,0x74,0x6c,0x65,0x73,0x68,0x69,0x70,0x73,0x5f,0x44,0x41,0x59]
Battleships = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x42,0x61,0x74,0x74,0x6c,0x65,0x73,0x68,0x69,0x70,0x73]
BasketballDay = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x42,0x61,0x73,0x6b,0x65,0x74,0x62,0x61,0x6c,0x6c,0x5f,0x44,0x41,0x59]
Basketball = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x42,0x61,0x73,0x6b,0x65,0x74,0x62,0x61,0x6c,0x6c]
OsakaCrunchDay = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x4f,0x73,0x61,0x6b,0x61,0x43,0x72,0x75,0x6e,0x63,0x68,0x5f,0x44,0x41,0x59]
OsakaCrunch = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x4f,0x73,0x61,0x6b,0x61,0x43,0x72,0x75,0x6e,0x63,0x68]
BowlingDay = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x42,0x6f,0x77,0x6c,0x69,0x6e,0x67,0x5f,0x44,0x41,0x59]
Bowling = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x42,0x6f,0x77,0x6c,0x69,0x6e,0x67]
DemolitionDay = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x44,0x65,0x6d,0x6f,0x6c,0x69,0x74,0x69,0x6f,0x6e,0x5f,0x44,0x41,0x59]
Demolition = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x44,0x65,0x6d,0x6f,0x6c,0x69,0x74,0x69,0x6f,0x6e]
UFODay = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x55,0x46,0x4f,0x53,0x46,0x5f,0x44,0x41,0x59]
UFO = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x55,0x46,0x4f,0x53,0x46]
CloneDay = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x4a,0x61,0x67,0x43,0x6c,0x6f,0x6e,0x65,0x5f,0x44,0x41,0x59]
Clone = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x4a,0x61,0x67,0x43,0x6c,0x6f,0x6e,0x65]
RoundupDay = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x50,0x65,0x6e,0x75,0x70,0x53,0x46,0x5f,0x44,0x41,0x59]
Roundup = [0x43,0x68,0x61,0x6c,0x6c,0x65,0x6e,0x67,0x65,0x50,0x65,0x6e,0x75,0x70,0x53,0x46]
ReplicatorDay = [0x52,0x65,0x70,0x6c,0x69,0x63,0x61,0x74,0x6f,0x72,0x5f,0x44,0x41,0x59]
Replicator = [0x52,0x65,0x70,0x6c,0x69,0x63,0x61,0x74,0x6f,0x72]
Mothership = [0x4d,0x53,0x4d,0x6f,0x74,0x68,0x65,0x72,0x73,0x68,0x69,0x70]
Chal1 = [0x43,0x68,0x61,0x6c]
Repl = [0x52,0x65,0x70,0x6c]
Mothers = [0x4d,0x53,0x4d,0x6f]

// ASCII strings of characters
Godzilla2000Id = [0x67,0x6f,0x64,0x7a,0x69,0x6c,0x6c,0x61,0x32,0x6b]
Godzilla90Id = [0x67,0x6f,0x64,0x7a,0x69,0x6c,0x6c,0x61,0x39,0x30]
GiganId = [0x67,0x69,0x67,0x61,0x6e]
AnguirusId = [0x61,0x6e,0x67,0x75,0x69,0x72,0x75,0x73]
MegalonId = [0x6d,0x65,0x67,0x61,0x6c,0x6f,0x6e]
RodanId = [0x72,0x6f,0x64,0x61,0x6e]
GhidorahId = [0x67,0x68,0x69,0x64,0x6f,0x72,0x61,0x68]
Mechagodzilla2Id = [0x6d,0x65,0x63,0x68,0x61,0x67,0x6f,0x64,0x7a,0x69,0x6c,0x6c,0x61,0x32]
DestoroyahId = [0x64,0x65,0x73,0x74,0x6f,0x72,0x6f,0x79,0x61,0x68]
MegaguirusId = [0x6d,0x65,0x67,0x61,0x67,0x75,0x69,0x72,0x75,0x73]
OrgaId = [0x6f,0x72,0x67,0x61]
MechaghidorahId = [0x6d,0x67,0x68,0x69,0x64,0x6f,0x72,0x61,0x68]
BaragonId = [0x62,0x61,0x72,0x61,0x67,0x6f,0x6e]
MothraLarvaeId = [0x6d,0x6f,0x74,0x68,0x72,0x61,0x5f,0x6c,0x61,0x72,0x76,0x61,0x65]
MothraId = [0x6d,0x6f,0x74,0x68,0x72,0x61]
MothFormId = [0x6d,0x6f,0x74,0x68,0x72,0x61,0x00]
Mechagodzilla3Id = [0x6d,0x65,0x63,0x68,0x61,0x67,0x6f,0x64,0x7a,0x69,0x6c,0x6c,0x61,0x33]
JetjaguarId = [0x6a,0x65,0x74,0x6a,0x61,0x67,0x75,0x61,0x72]
Moguera2Id = [0x6d,0x6f,0x67,0x75,0x65,0x72,0x61,0x32]
SpacegodzillaId = [0x73,0x70,0x61,0x63,0x65,0x67,0x6f,0x64,0x7a,0x69,0x6c,0x6c,0x61]

Monsters = [
    godzilla2000(), 
    godzilla90s(), 
    gigan(), 
    anguirus(), 
    megalon(), 
    rodan(), 
    kingGhidorah(), 
    mechagodzilla2(), 
	destoroyah(), 
	megaguirus(), 
	orga(), 
	mechaKingGhidorah(), 
	baragon(), 
	mothra(), 
	mechagodzilla3(), 
	jetJaguar(), 
	moguera2(), 
	spacegodzilla() 
]

Arenas = [
    monsterIsland(), 
    tokyoBay(), 
    laSouth(), 
    losAngeles(), 
    seattleNorth(), 
    osaka(), 
    manhattan(), 
    newYork(), 
	londonEast(), 
	london(), 
	bostonEast(), 
	boston(), 
	mothership(), 
	boxingRing(), 
	goldenGate(), 
	sanFrancisco() 
]

function PointCheats() {
    return pointCheat1() == 0 && pointCheat2() == 0 && pointCheat3() == 0
}

function Cheats() {
    return cheats1() == 0 && cheats2() == 0 && cheats3() == 0 && cheats4() == 0 && 
        cheats5() == 0 && PointCheats()
}

function Demo() {
//  return demo() != 0
    return mainMenuState() != 0
}

function StringCompare(address, string)
{
    return all_of(range(0, length(string) - 1), i => byte(address + i) == string[i])
}

function StringPrev(address, string)
{
    return all_of(range(0, length(string) - 1), i => prev(byte(address + i)) == string[i])
}

achievement(
	title = "RAAAGGEE!", 
	description = "Pick up a Rage power-up", 
	points = 1, 
	trigger = Demo() && Cheats() && prev(p1Rage()) == 0 && p1Rage() == 1
)

// AirStrike

// G-Cells

function ProgressionWin(CharId) {
	return Demo() && Cheats() && gameType() == 5 && 
		actionModeScore() > prev(actionModeScore()) && 
		StringCompare(p1CharacterAscii(), CharId) && 
		((actionDifficulty() == 0 && actionSurvivalRounds() == 9) || 
		(actionDifficulty() == 1 && actionSurvivalRounds() == 12) || 
		(actionDifficulty() == 2 && actionSurvivalRounds() == 14))
}

function Progression(Title, Name, Points, CharId) {
	achievement(
		title = Title, 
		description = "Complete Action mode using " + Name, 
		points = Points, 
		trigger = ProgressionWin(CharId)
	)
}

// Progression
Progression("Millenium", "Godzilla 2000", 5, Godzilla2000Id)
Progression("Millenium", "Godzilla 90's", 5, Godzilla90Id)
Progression("Millenium", "Gigan", 5, GiganId)
Progression("Millenium", "Anguirus", 5, AnguirusId)
Progression("Millenium", "Megalon", 5, MegalonId)
Progression("Millenium", "Rodan", 5, RodanId)
Progression("Millenium", "King Ghidorah", 5, GhidorahId)
Progression("Millenium", "Mechagodzilla 2", 5, Mechagodzilla2Id)
Progression("Millenium", "Destoroyah", 5, DestoroyahId)
Progression("Millenium", "Megaguirus", 5, MegaguirusId)
Progression("Millenium", "Orga", 5, OrgaId)
Progression("Millenium", "Mecha-King Ghidorah", 5, MechaghidorahId)
Progression("Millenium", "Baragon", 5, BaragonId)
Progression("Millenium", "Mothra", 5, MothraId)
Progression("Millenium", "Mechagodzilla 3", 5, Mechagodzilla3Id)
Progression("Millenium", "Jet Jaguar", 5, JetjaguarId)
Progression("Millenium", "Moguera 2", 5, Moguera2Id)
Progression("Millenium", "Space Godzilla", 5, SpacegodzillaId)

function ActionWinDifficulty(CharId, Difficulty) {
	trigger =  Demo() && Cheats() && gameType() == 5 && actionDifficulty() == Difficulty && 
		actionModeScore() > prev(actionModeScore()) && 
		StringCompare(p1CharacterAscii(), CharId)
		if (Difficulty == 0)
			trigger = trigger && actionSurvivalRounds() == 9
		if (Difficulty == 1)
			trigger = trigger && actionSurvivalRounds() == 12
		if (Difficulty == 2)
			trigger = trigger && actionSurvivalRounds() == 14
	return trigger
}

function ActionHard(Title, Name, Points, CharId) {
	achievement(
		title = Title, 
		description = "Complete Action mode using " + Name + " on Hard difficulty", 
		points = Points, 
		trigger = ActionWinDifficulty(CharId, 2)
	)
}

// Beat Action on Hard
ActionHard("King of the Monsters", "Godzilla 2000", 10, Godzilla2000Id)
ActionHard("King of the Monsters", "Godzilla 90's", 10, Godzilla90Id)
ActionHard("King of the Monsters", "Gigan", 10, GiganId)
ActionHard("King of the Monsters", "Anguirus", 10, AnguirusId)
ActionHard("King of the Monsters", "Megalon", 10, MegalonId)
ActionHard("King of the Monsters", "Rodan", 10, RodanId)
ActionHard("King of the Monsters", "King Ghidorah", 10, GhidorahId)
ActionHard("King of the Monsters", "Mechagodzilla 2", 10, Mechagodzilla2Id)
ActionHard("King of the Monsters", "Destoroyah", 10, DestoroyahId)
ActionHard("King of the Monsters", "Megaguirus", 10, MegaguirusId)
ActionHard("King of the Monsters", "Orga", 10, OrgaId)
ActionHard("King of the Monsters", "Mecha-King Ghidorah", 10, MechaghidorahId)
ActionHard("King of the Monsters", "Baragon", 10, BaragonId)
ActionHard("King of the Monsters", "Mothra", 10, MothraId)
ActionHard("King of the Monsters", "Mechagodzilla 3", 10, Mechagodzilla3Id)
ActionHard("King of the Monsters", "Jet Jaguar", 10, JetjaguarId)
ActionHard("King of the Monsters", "Moguera 2", 10, Moguera2Id)
ActionHard("King of the Monsters", "Space Godzilla", 10, SpacegodzillaId)

// 1CC
function Deathless () {

}

function LarvaeOnly(Difficulty) {
	trigger =  Cheats() && gameType() == 5 && actionDifficulty() == Difficulty && 
		p1Exists() == 80 && trigger_when(actionModeScore() > prev(actionModeScore()))
		if (Difficulty == 0)
			trigger = trigger && trigger_when(actionSurvivalRounds() == 9)
		if (Difficulty == 1)
			trigger = trigger && trigger_when(actionSurvivalRounds() == 12)
		if (Difficulty == 2)
			trigger = trigger && trigger_when(actionSurvivalRounds() == 14)
		trigger = trigger && StringCompare(p1CharacterAscii(), MothraId)
		
		// pauselock if going into moth form oustide of a challenge level
		trigger = trigger && disable_when(byte(0x6C58E8) != 67 && byte(0x6C58E8) != 82 && byte(0x6C58E9) != 83 && 
		StringPrev(p1CharacterAscii(), MothraLarvaeId) && StringCompare(p1CharacterAscii(), MothFormId))
		
		// alt reset, replaces Demo()
		trigger = trigger || never(mainMenuState() == 0)
	return trigger
}

achievement(
	title = "Mothra Larvae stuff", 
	description = "Complete action only using the Mothra Larvae excluding challenge stages", 
	points = 50, 
	trigger = LarvaeOnly(2)
)

function ActionScore(Title, Points, Score) {
	achievement(
		title = Title, 
		description = "Complete Action mode with a score of " + Score + " or higher", 
		points = Points, 
		trigger = Demo() && Cheats() && gameType() == 5 && 
		actionModeScore() > prev(actionModeScore()) && 
		actionModeScore() >= Score && 
		((actionDifficulty() == 0 && actionSurvivalRounds() == 9) || 
		(actionDifficulty() == 1 && actionSurvivalRounds() == 12) || 
		(actionDifficulty() == 2 && actionSurvivalRounds() == 14))
        )
}

// Action score
ActionScore("High Score", 25, 155000)

function ActionScoreLB(Name, CharId) {
	leaderboard(
		"Action: " + Name, 
		"", 
		ProgressionWin(CharId), 
		always_false(), 
		always_true(), 
		actionModeScore(), 
		format = "VALUE", 
		lower_is_better = false
	)
}

ActionScoreLB("Godzilla 2000", Godzilla2000Id)
ActionScoreLB("Godzilla 90's", Godzilla90Id)
ActionScoreLB("Gigan", GiganId)
ActionScoreLB("Anguirus", AnguirusId)
ActionScoreLB("Megalon", MegalonId)
ActionScoreLB("Rodan", RodanId)
ActionScoreLB("King Ghidorah", GhidorahId)
ActionScoreLB("Mechagodzilla 2", Mechagodzilla2Id)
ActionScoreLB("Destoroyah", DestoroyahId)
ActionScoreLB("Megaguirus", MegaguirusId)
ActionScoreLB("Orga", OrgaId)
ActionScoreLB("Mecha-King Ghidorah", MechaghidorahId)
ActionScoreLB("Baragon", BaragonId)
ActionScoreLB("Mothra", MothraId)
ActionScoreLB("Mechagodzilla 3", Mechagodzilla3Id)
ActionScoreLB("Jet Jaguar", JetjaguarId)
ActionScoreLB("Moguera 2", Moguera2Id)
ActionScoreLB("Space Godzilla", SpacegodzillaId)

function SurvivalWin() {
	return Demo() && Cheats() && gameType() == 6 && 
		prev(actionSurvivalRounds()) == 15 && meleeSurvivalP1CurrentScore() > prev(meleeSurvivalP1CurrentScore())
}

function Survival(Title, Points) {
	achievement(
		title = Title, 
		description = "Complete Survival mode on any difficulty",
		points = Points,  
		trigger = SurvivalWin()
	)
}

// Beat Survival
Survival("Survivor", 5)

function SurvivalWinDifficulty(CharId, Difficulty) {
	return Demo() && Cheats() && gameType() == 6 && survivalDifficulty() == Difficulty && 
		prev(actionSurvivalRounds()) == 15 && meleeSurvivalP1CurrentScore() > prev(meleeSurvivalP1CurrentScore()) && 
		StringCompare(p1CharacterAscii(), CharId)
}

function SurvivalHard(Title, Name, Points, CharId) {
	achievement(
		title = Title, 
		description = "Complete Survival mode using " + Name + " on Hard difficulty",
		points = Points,  
		trigger = SurvivalWinDifficulty(CharId, 2)
	)
}

// Beat Survival on Hard
SurvivalHard("King of the Monsters", "Godzilla 2000", 10, Godzilla2000Id)
SurvivalHard("King of the Monsters", "Godzilla 90's", 10, Godzilla90Id)
SurvivalHard("King of the Monsters", "Gigan", 10, GiganId)
SurvivalHard("King of the Monsters", "Anguirus", 10, AnguirusId)
SurvivalHard("King of the Monsters", "Megalon", 10, MegalonId)
SurvivalHard("King of the Monsters", "Rodan", 10, RodanId)
SurvivalHard("King of the Monsters", "King Ghidorah", 10, GhidorahId)
SurvivalHard("King of the Monsters", "Mechagodzilla 2", 10, Mechagodzilla2Id)
SurvivalHard("King of the Monsters", "Destoroyah", 10, DestoroyahId)
SurvivalHard("King of the Monsters", "Megaguirus", 10, MegaguirusId)
SurvivalHard("King of the Monsters", "Orga", 10, OrgaId)
SurvivalHard("King of the Monsters", "Mecha-King Ghidorah", 10, MechaghidorahId)
SurvivalHard("King of the Monsters", "Baragon", 10, BaragonId)
SurvivalHard("King of the Monsters", "Mothra", 10, MothraId)
SurvivalHard("King of the Monsters", "Mechagodzilla 3", 10, Mechagodzilla3Id)
SurvivalHard("King of the Monsters", "Jet Jaguar", 10, JetjaguarId)
SurvivalHard("King of the Monsters", "Moguera 2", 10, Moguera2Id)
SurvivalHard("King of the Monsters", "Space Godzilla", 10, SpacegodzillaId)

function SurvivalName(Name, Difficulty) {
	trigger = "Survival: "
	if (Difficulty == 0)
		trigger = trigger + "Easy - " + Name
	if (Difficulty == 1)
		trigger = trigger + "Medium - " + Name
	if (Difficulty == 2)
		trigger = trigger + "Hard - " + Name
	return trigger
}

function SurvivalScoreLB(Name, CharId, Difficulty) {
	leaderboard(
		SurvivalName(Name, Difficulty), 
		"", 
		SurvivalWinDifficulty(CharId, Difficulty), 
		always_false(), 
		always_true(), 
		meleeSurvivalP1CurrentScore(), 
		format = "VALUE", 
		lower_is_better = false
	)
}

SurvivalScoreLB("Godzilla 2000", Godzilla2000Id, 0)
SurvivalScoreLB("Godzilla 90's", Godzilla90Id, 0)
SurvivalScoreLB("Gigan", GiganId, 0)
SurvivalScoreLB("Anguirus", AnguirusId, 0)
SurvivalScoreLB("Megalon", MegalonId, 0)
SurvivalScoreLB("Rodan", RodanId, 0)
SurvivalScoreLB("King Ghidorah", GhidorahId, 0)
SurvivalScoreLB("Mechagodzilla 2", Mechagodzilla2Id, 0)
SurvivalScoreLB("Destoroyah", DestoroyahId, 0)
SurvivalScoreLB("Megaguirus", MegaguirusId, 0)
SurvivalScoreLB("Orga", OrgaId, 0)
SurvivalScoreLB("Mecha-King Ghidorah", MechaghidorahId, 0)
SurvivalScoreLB("Baragon", BaragonId, 0)
SurvivalScoreLB("Mothra", MothraId, 0)
SurvivalScoreLB("Mechagodzilla 3", Mechagodzilla3Id, 0)
SurvivalScoreLB("Jet Jaguar", JetjaguarId, 0)
SurvivalScoreLB("Moguera 2", Moguera2Id, 0)
SurvivalScoreLB("Space Godzilla", SpacegodzillaId, 0)
SurvivalScoreLB("Godzilla 2000", Godzilla2000Id, 1)
SurvivalScoreLB("Godzilla 90's", Godzilla90Id, 1)
SurvivalScoreLB("Gigan", GiganId, 1)
SurvivalScoreLB("Anguirus", AnguirusId, 1)
SurvivalScoreLB("Megalon", MegalonId, 1)
SurvivalScoreLB("Rodan", RodanId, 1)
SurvivalScoreLB("King Ghidorah", GhidorahId, 1)
SurvivalScoreLB("Mechagodzilla 2", Mechagodzilla2Id, 1)
SurvivalScoreLB("Destoroyah", DestoroyahId, 1)
SurvivalScoreLB("Megaguirus", MegaguirusId, 1)
SurvivalScoreLB("Orga", OrgaId, 1)
SurvivalScoreLB("Mecha-King Ghidorah", MechaghidorahId, 1)
SurvivalScoreLB("Baragon", BaragonId, 1)
SurvivalScoreLB("Mothra", MothraId, 1)
SurvivalScoreLB("Mechagodzilla 3", Mechagodzilla3Id, 1)
SurvivalScoreLB("Jet Jaguar", JetjaguarId, 1)
SurvivalScoreLB("Moguera 2", Moguera2Id, 1)
SurvivalScoreLB("Space Godzilla", SpacegodzillaId, 1)
SurvivalScoreLB("Godzilla 2000", Godzilla2000Id, 2)
SurvivalScoreLB("Godzilla 90's", Godzilla90Id, 2)
SurvivalScoreLB("Gigan", GiganId, 2)
SurvivalScoreLB("Anguirus", AnguirusId, 2)
SurvivalScoreLB("Megalon", MegalonId, 2)
SurvivalScoreLB("Rodan", RodanId, 2)
SurvivalScoreLB("King Ghidorah", GhidorahId, 2)
SurvivalScoreLB("Mechagodzilla 2", Mechagodzilla2Id, 2)
SurvivalScoreLB("Destoroyah", DestoroyahId, 2)
SurvivalScoreLB("Megaguirus", MegaguirusId, 2)
SurvivalScoreLB("Orga", OrgaId, 2)
SurvivalScoreLB("Mecha-King Ghidorah", MechaghidorahId, 2)
SurvivalScoreLB("Baragon", BaragonId, 2)
SurvivalScoreLB("Mothra", MothraId, 2)
SurvivalScoreLB("Mechagodzilla 3", Mechagodzilla3Id, 2)
SurvivalScoreLB("Jet Jaguar", JetjaguarId, 2)
SurvivalScoreLB("Moguera 2", Moguera2Id, 2)
SurvivalScoreLB("Space Godzilla", SpacegodzillaId, 2)

// Challenges

// Versus/Melee
function TwovTwo(P1, P2, P3, P4) {
	return Demo() && Cheats() && meleeDifficulty() == 2 && meleeRoundLength() >= 4 && gameType() == 2 && 
		prev(p1WonMostRecentRound()) == 0 && p1WonMostRecentRound() == 1 && 
		p1Team() == 1 && p2Team() == 1 && p3Team() == 2 && p4Team() == 2 && 
		StringCompare(p1CharacterAscii(), P1) && 
		StringCompare(p2CharacterAscii(), P2) && 
		StringCompare(p3CharacterAscii(), P3) && 
		StringCompare(p4CharacterAscii(), P4)
}

// Monster Island Buddies
function MIB() {
	return Demo() && Cheats() && meleeDifficulty() == 2 && meleeRoundLength() >= 4 && gameType() == 3 && 
		prev(p1WonMostRecentRound()) == 0 && p1WonMostRecentRound() == 1 && 
		StringCompare(p1CharacterAscii(), Godzilla90Id) && 
		((StringCompare(p2CharacterAscii(), JetjaguarId) && StringCompare(p3CharacterAscii(), RodanId) && StringCompare(p4CharacterAscii(), MothraId)) || 
		(StringCompare(p2CharacterAscii(), JetjaguarId) && StringCompare(p4CharacterAscii(), RodanId) && StringCompare(p3CharacterAscii(), MothraId)) || 
		(StringCompare(p3CharacterAscii(), JetjaguarId) && StringCompare(p2CharacterAscii(), RodanId) && StringCompare(p4CharacterAscii(), MothraId)) || 
		(StringCompare(p3CharacterAscii(), JetjaguarId) && StringCompare(p4CharacterAscii(), RodanId) && StringCompare(p2CharacterAscii(), MothraId)) || 
		(StringCompare(p4CharacterAscii(), JetjaguarId) && StringCompare(p2CharacterAscii(), RodanId) && StringCompare(p3CharacterAscii(), MothraId)) || 
		(StringCompare(p4CharacterAscii(), JetjaguarId) && StringCompare(p3CharacterAscii(), RodanId) && StringCompare(p2CharacterAscii(), MothraId)))
}

achievement(
	title = "Dogs and Insects", 
	description = "Playing as Anguirus, team up with P2 as Baragon on the blue team to win a round against P3 as Megaguirus and P4 as Mothra on the red team in a Melee Team Battle on Hard difficulty with 5 minute or greater rounds", 
	points = 4, 
	trigger = TwovTwo(AnguirusId, BaragonId, MegaguirusId, MothraId)
)

achievement(
	title = "The Old and the New", 
	description = "Playing as Mechagodzilla 2, team up with P2 as Godzilla 90's on the blue team to win a round against P3 as Godzilla 2000 and P4 as Mechagodzilla 3 on the red team in a Melee Team Battle on Hard difficulty with 5 minute or greater rounds", 
	points = 4, 
	trigger = TwovTwo(Mechagodzilla2Id, Godzilla90Id, Godzilla2000Id, Mechagodzilla3Id)
)

achievement(
	title = "Monster Island Buddies", 
	description = "Playing as Godzilla 90's, win a round against Jet Jaguar, Rodan, and Mothra in a Free for All on Hard difficulty with 5 minute or greater rounds", 
	points = 4, 
	trigger = MIB()
)

function GalleryCount() {
	count = 0
    for address in range(0x6A6B30, 0x6A6B98, 4) {
        count = count + dword(address)
    }
    return count
}

function FinalWarsCount() {
	count = 0
    for address in range(0x6A6B9C, 0x6A6BCC, 4) {
        count = count + dword(address)
    }
    return count
}

achievement(
	title = "Kaiju Art Collector", 
	description = "Purchase all Gallery art", 
	points = 2, 
	trigger = Demo() && Cheats() && prev(GalleryCount()) == 1 &&
              GalleryCount() == 0
)

achievement(
	title = "Operation: Final War", 
	description = "Purchase all Final Wars art", 
	points = 3, 
	trigger = Demo() && Cheats() && prev(FinalWarsCount()) == 1 &&
              FinalWarsCount() == 0
)

achievement(
	title = "Operation: Final War", 
	description = "Purchase Monster Pack 1", 
	points = 3, 
	trigger = Demo() && Cheats() && prev(monsterPack1()) == 1 && monsterPack1() == 0
)

achievement(
	title = "Operation: Final War", 
	description = "Purchase Monster Pack 2", 
	points = 3, 
	trigger = Demo() && Cheats() && prev(monsterPack2()) == 1 && monsterPack2() == 0
)

achievement(
	title = "Operation: Final War", 
	description = "Purchase Monster Pack 3", 
	points = 3, 
	trigger = Demo() && Cheats() && prev(monsterPack3()) == 1 && monsterPack3() == 0
)

achievement(
	title = "Operation: Final War", 
	description = "Purchase all monsters", 
	points = 5, 
	trigger = Demo() && Cheats() && sum_of(Monsters, m => prev(m)) == 2 && 
		sum_of(Monsters, m => m) == 0
)

achievement(
	title = "Operation: Final War", 
	description = "Purchase Arena Pack 1", 
	points = 3, 
	trigger = Demo() && Cheats() && prev(arenaPack1()) == 1 && arenaPack1() == 0
)

achievement(
	title = "Operation: Final War", 
	description = "Purchase Arena Pack 2", 
	points = 3, 
	trigger = Demo() && Cheats() && prev(arenaPack2()) == 1 && arenaPack2() == 0
)

achievement(
	title = "Operation: Final War", 
	description = "Purchase Arena Pack 3", 
	points = 3, 
	trigger = Demo() && Cheats() && prev(arenaPack3()) == 1 && arenaPack3() == 0
)

achievement(
	title = "Operation: Final War", 
	description = "Purchase all arenas", 
	points = 5, 
	trigger = Demo() && Cheats() && sum_of(Arenas, m => prev(m)) == 1 && 
		sum_of(Arenas, m => m) == 0
)
