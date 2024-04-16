// Turok: Evolution
// #ID = 25484

// $2DE0BC: Menu/Game state [32-bit BE ASCII]
//          Opening Acclaim logo = ashsequence\splashsequence.mtf
//          Intro cutscene = ro\intro.mtf
//          Demo = ract\attract.mtf
//          Press start = stinteractivescreen\firstinteractivescreen.mtf
//          Main menu = nmenu\mainmenu.mtf
//          New game = game\newgame.mtf
//          Load game = dgame\loadgame.mtf
//          Level select = elselect\levelselect.mtf
//          Multiplayer = tiplayer\multiplayer.mtf
//          Multi options = tiadvancedoptions\multiadvancedoptions.mtf
//          Multi arsenal = tiarsenal\multiarsenal.mtf
//          Multi char select = tiplayerjoin\multiplayerjoin.mtf
//          Options = ions\options.mtf
//          Game options = eoptions\gameoptions.mtf
//          Control setup = trolsetup\controlsetup.mtf
//          Sound options = ndvideo\soundvideo.mtf
//          Save options = eoptions\saveoptions.mtf
//          Cheats = ats\cheats.mtf
//          Enter cheat = tinput\textinput.mtf
//          Credits = dits\credits.mtf
//          Art Gallery = lery\gallery.mtf
//          Opening cutscene = estart\gamestart.mtf
//          Paused = amepause\ingamepause.mtf (doesnt go away after unpausing)
//          In-game options = ameoptionsmenu\ingameoptionsmenu.mtf
//          In-game game options = ameoptions\ingameoptions.mtf
//          In-game control setup = amecontrolsetup\ingamecontrolsetup.mtf
//          In-game advanced controls = amecontroladvanced\ingamecontroladvanced.mtf
//          In-game sound options = amesoundvideo\ingamesoundvideo.mtf
//          Chap2 Tarkeen cutscene = keen\tarkeen.mtf
//          Chap11 first cutscene = annus\tyrannus.mtf
//          Chap11 second cutscene = annus2\tyrannus2.mtf
//          Ending cutscene = ing\ending.mtf
function menuGameState() => dword_be(0x2DE0BC)

// $2E1698: Zoo [8 Bytes ASCII]
//          zoo\zoo.
//          Gets overwritten upon pausing, make sure to store a hit
function zoo() => byte(0x2E1698)
function zoo() => dword_be(0x2E1698)

// $31150C: Player pointer [25-bit BE]
//          +0x1EC | pointer to health
//          ++0x0x04 | Story or multiplayer player 2 Health? [Float BE]
//          +0xA44 | pointer to pterosaur
//          ++0x80 | Pterosaur missiles [32-bit BE]
//          ++0x84 | Overdrive time remaining [Float BE]
//          +0x1ACC | Weapon equipped [32-bit BE]
//          +0x1AC0 | Weapons array, use equipped weapon as index pointer [25-bit BE]
//          ++0x0 | Weapon ID [32-bit BE]
//          ++0x4 | Ammo [32-bit BE]
//          ++0x8 | Ammo [32-bit BE]
//          ++0xc | Ammo [32-bit BE]
//          ++0x14 | First weapon upgrade [32-bit BE]
//          ++0x18 | Second weapon upgrade [32-bit BE]
//          ++0x1C | Ammo type/lens type [8-bit]
//          ++0x20 | Weapon in inventory [32-bit BE]
//          ++0x24 | Ammo type uses shared ammunition [32-bit BE]
function playerPointer() => dword_be(0x31150C)

W1Lookup = {
    0: "Warclub",
    1: "Bow",
    2: "Pistol",
}

// $70C854: Level loading = 0x24 [8-bit]
//          To check In-game use: this = 0 and first character of level title address must not equal 0
function levelLoading() => byte(0x70C854)

// $70CC54: Chapter number in story [ASCII]
//          or also Multiplayer map title in lowercase
//          Chapter XX
//          chap15 = Finale
function chapterNumberInStoryAscii() => byte(0x70CC54)
function chapterNumberInStoryAscii() => dword_be(0x70CC54)

// $70D054: Level title in uppercase [ASCII]
function levelTitleInUppercaseAscii() => byte(0x70D054)
function levelTitleInUppercaseAscii() => dword(0x70D054)
function levelTitleInUppercaseAscii() => dword_be(0x70D054)

// $70D454: Level description [ASCII]
function levelDescriptionAscii() => byte(0x70D454)

// $73A74B: All weapon cheat activated [8-bit]
function allWeaponCheatActivated() => byte(0x73A74B)

AllWLookup = {
    0: "",
    1: " • All Weapons",
}

// $73A753: Unlimited ammo cheat activated [8-bit]
function unlimitedAmmoCheatActivated() => byte(0x73A753)

UnlimLookup = {
    0: "",
    1: " • Unlimited Ammo",
}

// $73A75B: Invincible cheat activated [8-bit]
function invincibleCheatActivated() => byte(0x73A75B)

InvincLookup = {
    0: "",
    1: " • Invincible",
}

// $73A763: Invisible cheat activated [8-bit]
function invisibleCheatActivated() => byte(0x73A763)

InvisLookup = {
    0: "",
    1: " • Invisible",
}

// $73A77B: Hunter cheat [8-bit]
function hunterCheat() => byte(0x73A77B)

// $73A7BB: All weapon cheat unlocked [8-bit]
function allWeaponCheatUnlocked() => byte(0x73A7BB)

// $73A7C3: Unlimited ammo cheat unlocked [8-bit]
function unlimitedAmmoCheatUnlocked() => byte(0x73A7C3)

// $73A7CB: Invincible cheat unlocked [8-bit]
function invincibleCheatUnlocked() => byte(0x73A7CB)

// $73A7D3: Invisible cheat unlocked [8-bit]
function invisibleCheatUnlocked() => byte(0x73A7D3)

W2x10Lookup = {
    0: "Warclub",
    1: "Bow",
    2: "Tekbow",
    3: "Pistol",
    4: "Grenade",
}

W11x12Lookup = {
    0: "Warclub",
    1: "Bow",
    2: "Tekbow",
    3: "Pistol",
    4: "Shotgun",
    5: "Grenade",
    6: "Rocket Launcher",
}

W13Lookup = {
    0: "Warclub",
    1: "Tekbow",
    2: "Pistol",
    3: "Shotgun",
    4: "Flechette Gun",
    5: "Spider Mine",
}

W14x15Lookup = {
    0: "Warclub",
    1: "Tekbow",
    2: "Pistol",
    3: "Shotgun",
    4: "Flechette Gun",
    5: "Flamethrower",
    6: "Spider Mine",
    7: "Dark Matter Cube",
}

W16Lookup = {
    0: "Warclub",
    1: "Tekbow",
    2: "Shotgun",
    3: "Flechette Gun",
    4: "Spider Mine",
}

W17x25Lookup = {
    0: "Warclub",
    1: "Tekbow",
    2: "Shotgun",
    3: "Grenade",
    4: "Flechette Gun",
    5: "Flamethrower",
    6: "Rocket Launcher",
    7: "Gravity Disruptor",
}

W26x31Lookup = {
    0: "Warclub",
    1: "Tekbow",
    2: "Pistol",
    3: "Shotgun",
    4: "Grenade",
    5: "Flechette Gun",
    6: "Rocket Launcher",
    7: "Plasma Cannon",
}

W35x39y41x46y48y50Lookup = {
    0: "Warclub",
    1: "Tekbow",
    2: "Shotgun",
    3: "Grenade",
    4: "Flechette Gun",
    5: "Rocket Launcher",
    6: "Plasma Cannon",
    7: "Gravity Disruptor",
}

W40Lookup = {
    0: "Warclub",
    1: "Tekbow",
    2: "Shotgun",
    3: "Grenade",
    4: "Flechette Gun",
    5: "Rocket Launcher",
    6: "Plasma Cannon",
    7: "Dark Matter Cube",
}

W47Lookup = {
    0: "Warclub",
    1: "Tekbow",
    2: "Shotgun",
    3: "Grenade",
    4: "Plasma Cannon",
    5: "Gravity Disruptor",
}

W49Lookup = {
    0: "Warclub",
    1: "Tekbow",
    2: "Shotgun",
    3: "Grenade",
    4: "Rocket Launcher",
    5: "Flechette Gun",
    6: "Plasma Cannon",
    7: "Gravity Disruptor",
}

W57Lookup = {
    0: "Warclub",
    1: "Tekbow",
    2: "Grenade",
    3: "Flechette Gun",
    4: "Flamethrower",
    5: "Spider Mine",
    6: "Plasma Cannon",
    7: "Gravity Disruptor",
}

W62Lookup = {
    0: "Warclub",
    1: "Shotgun",
    2: "Grenade",
    3: "Flechette Gun",
    4: "Flamethrower",
    5: "Plasma Cannon",
}

//First 8 characters of level ASCII converted into 32-bit BE hex
INTO_THE = [1229870159, 542394437]
JUNGLE_H = [1247104583, 1279598664]
HUNTER'S = [1213550164, 1163011923]
AIRBORNE = [1095324226, 1330794053]
STRETCHI = [1398035013, 1413695561]
DAM_THE_ = [1145130272, 1414022432]
GROUND_A = [1196576597, 1313087553]
MINE_FIE = [1296649797, 541477189]
ANCIENT_ = [1095648073, 1162761248]
MOUNTAIN = [1297044814, 1413564750]
SUMMIT_B = [1398099277, 1230250050]
DESC = [1145393987]
INFILTRA = [1229866569, 1280594497]
COMPOUND = [1129270608, 1330990660]
BLOCKADE = [1112297283, 1262568517]
ENTERING = [1162761285, 1380535879]
THE_SLEG = [1414022432, 1397507399]
SWEEP_TH = [1398228293, 1344296008]
THE_SEAR = [1414022432, 1397047634]
THE_BOWE = [1414022432, 1112495941]
REACTOR_ = [1380270403, 1414484512]
MELTDOWN = [1296387156, 1146050382]
INTERROG = [1229870149, 1381125959]
RESCUE_T = [1380275011, 1430593620]
ESCA = [1163084609]
FREE = [1179796805]
SHADOWED = [1397244228, 1331119428]
RUINED_C = [1381321038, 1162092611]
SENTINEL = [1397050964, 1229866316]
DEATH_FR = [1145389396, 1210074706]
DINOSAUR = [1145654863, 1396790610]
THE_BRID = [1414022432, 1112688964]
BACK_TO_ = [1111573323, 542396192]
COMBAT_R = [1129270594, 1096032338]
RAINING_ = [1380010318, 1229866784]
ASSA = [1095979841]
CITY_BRE = [1128879193, 541217349]
ENTER_TH = [1162761285, 1377850440]
STREET_C = [1398035013, 1163141187]
SNIPER_H = [1397639504, 1163010120]
AREN = [1095910734]
VERT = [1447383636]
BENEATH_ = [1111838277, 1096042528]
MAINTENA = [1296124238, 1413828161]
THE_LIBR = [1414022432, 1279869522]
MONUMENT = [1297043029, 1296387668]
HALLS_OF = [1212238924, 1394626374]
THE_SENA = [1414022432, 1397050945]
PERILOUS = [1346720329, 1280267603]
THE_GREA = [1414022432, 1196574017]
SACRIFIC = [1396786002, 1229343043]
CHAOS_IN = [1128808783, 1394624846]
THE_SHUT = [1414022432, 1397249364]
THE_CITY = [1414022432, 1128879193]
// ESCA chapter11
THE_NICK = [1414022432, 1313424203]
JUGGERNA = [1247102791, 1163021889]
THE_BELL = [1414022432, 1111837772]
THE_FINA = [1414022432, 1179209281]
CANYON_R = [1128353369, 1330520146]
CANYON_D = [1128353369, 1330520132]
THE_BATT = [1414022432, 1111577684]
VENGEANC = [1447382599, 1161907779]

achievement(
    title = "hp", points = 0,
    description = "",
    trigger = float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 2158051488
)
function Progression(Title, Chapter, Points, Level1, Level2, NextLevel1, NextLevel2) {
	if (Level2 == "" && NextLevel2 == "")
		achievement(
			title = Title, points = Points,
			description = "Complete Chapter " + Chapter,
			trigger = prev(levelTitleInUppercaseAscii()) == Level1 && levelTitleInUppercaseAscii() == NextLevel1
		)
	if (Level2 != "" && NextLevel2 == "")
		achievement(
			title = Title, points = Points,
			description = "Complete Chapter " + Chapter,
			trigger = prev(levelTitleInUppercaseAscii()) == Level1 && levelTitleInUppercaseAscii() == NextLevel1 && 
				prev(levelTitleInUppercaseAscii()) == Level2
		)
	if (Level2 == "" && NextLevel2 != "")
		achievement(
			title = Title, points = Points,
			description = "Complete Chapter " + Chapter,
			trigger = prev(levelTitleInUppercaseAscii()) == Level1 && levelTitleInUppercaseAscii() == NextLevel1 && 
				levelTitleInUppercaseAscii() == NextLevel2
		)
	if (Level2 != "" && NextLevel2 != "")
		achievement(
			title = Title, points = Points,
			description = "Complete Chapter " + Chapter,
			trigger = prev(levelTitleInUppercaseAscii()) == Level1 && levelTitleInUppercaseAscii() == NextLevel1 && 
				prev(levelTitleInUppercaseAscii()) == Level2 && levelTitleInUppercaseAscii() == NextLevel2
		)
}

function WinCon() {
	return levelTitleInUppercaseAscii() == VENGEANC[0] && levelTitleInUppercaseAscii() == VENGEANC[1] && 
		menuGameState() == 1768843100
}

Progression("Into the Jungle", "1", 5, HUNTER'S[0], HUNTER'S[1], AIRBORNE[0], AIRBORNE[1])
Progression("Airborne", "2", 5, ANCIENT_[0], ANCIENT_[1], MOUNTAIN[0], MOUNTAIN[1])
Progression("Mountain Descent", "3", 5, DESC[0], "", INFILTRA[0], INFILTRA[1])
Progression("Infiltration", "4", 5, ENTERING[0], ENTERING[1], THE_SLEG[0], THE_SLEG[1])
Progression("The Sleg Fortress", "5", 5, FREE[0], "", SHADOWED[0], SHADOWED[1])
Progression("Shadowed Lands", "6", 5, THE_BRID[0], THE_BRID[1], BACK_TO_[0], BACK_TO_[1])
Progression("Back to the Skies", "7", 5, RAINING[0], RAINING[1], ASSA[0], "")
Progression("Assault", "8", 5, AREN[0], "", VERT[0], "")
Progression("Vertigo", "9", 5, MONUMENT[0], MONUMENT[1], HALLS_OF[0], HALLS_OF[1])
Progression("Halls of Justice", "10", 5, SACRIFIC[0], SACRIFIC[1], CHAOS_IN[0], CHAOS_IN[1])
Progression("Chaos in the Skies", "11", 5, THE_NICK[0], THE_NICK[1], JUGGERNA[0], JUGGERNA[1])
Progression("Juggernaut Approach", "12", 5, JUGGERNA[0], JUGGERNA[1], THE_BELL[0], THE_BELL[1])
Progression("The Belly of the Beast", "13", 5, THE_BELL[0], THE_BELL[1], THE_FINA[0], THE_FINA[1])
Progression("The Final Blow", "14", 5, THE_BATT[0], THE_BATT[1], VENGEANC[0], VENGEANC[1])
achievement(
    title = "Vengeance", points = 5,
    description = "Complete Chapter 15",
    trigger = WinCon()
)

achievement(
    title = "weapon", points = 0,
    description = "w",
    trigger = dword_be((playerPointer() & 0x7FFFFFF) + 0x001ACC) == 4 &&
              dword_be((dword_be((playerPointer() & 0x7FFFFFF) + 0x001AC0) & 0x7FFFFFF) + 0x00002C) == 2158895872
)

achievement(
    title = "bruck", points = 0,
    description = "",
    trigger = dword_be((dword_be((dword_be((dword_be(0x1267CF0) & 0x1FFFFFF) + 0x000010) & 0x1FFFFFF) + 0x0001EC) &
              0x1FFFFFF) + 0x000004) == 1752459118 &&
              dword_be((dword_be((dword_be(0x311510) & 0x7FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 1752459118
)

achievement(
    title = "Nuke", points = 1,
    description = "Fire the Nuke",
    trigger = levelTitleInUppercaseAscii() == AREN[0] &&
              prev(dword_be((dword_be((playerPointer() & 0x7FFFFFF) + 0x001AC0) & 0x7FFFFFF) + 0x0000D4)) == 1 &&
              dword_be((dword_be((playerPointer() & 0x7FFFFFF) + 0x001AC0) & 0x7FFFFFF) + 0x0000D4) == 0 &&
              dword_be((dword_be((playerPointer() & 0x7FFFFFF) + 0x001AC0) & 0x7FFFFFF) + 0x0000E0) == 1 &&
              byte((dword_be((playerPointer() & 0x7FFFFFF) + 0x001AC0) & 0x7FFFFFF) + 0x0000E4) == 2
)

achievement(
    title = "Overdrive", points = 1,
    description = "Pick up an Overdrive",
    trigger = (word_be(0x70CC5C) == 12593 || word_be(0x70CC5C) == 12594 || word_be(0x70CC5C) == 12596 ||
                  byte(0x70CC5C) == 50 || byte(0x70CC5C) == 55
              ) && float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x000A44) & 0x1FFFFFF) + 0x000084) > 0.0 &&
              levelLoading() == 0
)

achievement(
    title = "Rocket Launcher", points = 1,
    description = "Pick up a Rocket Launcher",
    trigger = levelLoading() == 0 &&
              prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + 0x000110)) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + 0x000110) == 1
)

achievement(
    title = "scope", points = 1,
    description = "Pick up a Sniper Scope",
    trigger = levelLoading() == 0 &&
              prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + 0x00008C)) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + 0x00008C) == 1
)

achievement(
    title = "chap1club", points = 0,
    description = "Complete chapter 1 only using the Warclub",
    trigger = levelLoading() == 0 &&
              prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + 0x00008C)) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + 0x00008C) == 1
)

leaderboard(
    id = 91819, title = "Into the Jungle",
    description = "Speedrun: Chapter 1 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1229870159 && dword_be(0x70D058) == 542394437 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1229870159 && prev(dword_be(0x70D058)) == 542394437 &&
             levelTitleInUppercaseAscii() == 1247104583 && dword_be(0x70D058) == 1279598664,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91820, title = "Jungle Hunter",
    description = "Speedrun: Chapter 1 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1247104583 && dword_be(0x70D058) == 1279598664 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1247104583 && prev(dword_be(0x70D058)) == 1279598664 &&
             levelTitleInUppercaseAscii() == 1213550164 && dword_be(0x70D058) == 1163011923,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91821, title = "Hunter's Peril",
    description = "Speedrun: Chapter 1 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1213550164 && dword_be(0x70D058) == 1163011923 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1213550164 && prev(dword_be(0x70D058)) == 1163011923 &&
             levelTitleInUppercaseAscii() == 1095324226 && dword_be(0x70D058) == 1330794053,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91822, title = "Airborne",
    description = "Speedrun: Chapter 2 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1095324226 && dword_be(0x70D058) == 1330794053 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1095324226 && prev(dword_be(0x70D058)) == 1330794053 &&
             levelTitleInUppercaseAscii() == 1398035013 && dword_be(0x70D058) == 1413695561,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91823, title = "Stretching Your Wings",
    description = "Speedrun: Chapter 2 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1398035013 && dword_be(0x70D058) == 1413695561 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1398035013 && prev(dword_be(0x70D058)) == 1413695561 &&
             levelTitleInUppercaseAscii() == 1145130272 && dword_be(0x70D058) == 1414022432,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91824, title = "Dam the Defenses",
    description = "Speedrun: Chapter 2 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1145130272 && dword_be(0x70D058) == 1414022432 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1145130272 && prev(dword_be(0x70D058)) == 1414022432 &&
             levelTitleInUppercaseAscii() == 1196576597 && dword_be(0x70D058) == 1313087553,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91825, title = "Ground Assault",
    description = "Speedrun: Chapter 2 - Level 4",
    start  = levelTitleInUppercaseAscii() == 1196576597 && dword_be(0x70D058) == 1313087553 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1196576597 && prev(dword_be(0x70D058)) == 1313087553 &&
             levelTitleInUppercaseAscii() == 1296649797 && dword_be(0x70D058) == 541477189,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91826, title = "Mine Fields",
    description = "Speedrun: Chapter 2 - Level 5",
    start  = levelTitleInUppercaseAscii() == 1296649797 && dword_be(0x70D058) == 541477189 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1296649797 && prev(dword_be(0x70D058)) == 541477189 &&
             levelTitleInUppercaseAscii() == 1095648073 && dword_be(0x70D058) == 1162761248,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91827, title = "Ancient Ruins",
    description = "Speedrun: Chapter 2 - Level 6",
    start  = levelTitleInUppercaseAscii() == 1095648073 && dword_be(0x70D058) == 1162761248 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 || levelLoading() != 0),
    submit = menuGameState() == 1801807214,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91828, title = "Mountain Ascent",
    description = "Speedrun: Chapter 3 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1297044814 && dword_be(0x70D058) == 1413564750 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1297044814 && prev(dword_be(0x70D058)) == 1413564750 &&
             levelTitleInUppercaseAscii() == 1398099277 && dword_be(0x70D058) == 1230250050,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91829, title = "Summit Battle",
    description = "Speedrun: Chapter 3 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1398099277 && dword_be(0x70D058) == 1230250050 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1398099277 && prev(dword_be(0x70D058)) == 1230250050 &&
             levelTitleInUppercaseAscii() == 1145393987,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91830, title = "Descent",
    description = "Speedrun: Chapter 3 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1145393987 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1145393987 && levelTitleInUppercaseAscii() == 1229866569 &&
             dword_be(0x70D058) == 1280594497,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91831, title = "Infiltration",
    description = "Speedrun: Chapter 4 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1229866569 && dword_be(0x70D058) == 1280594497 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1229866569 && prev(dword_be(0x70D058)) == 1280594497 &&
             levelTitleInUppercaseAscii() == 1129270608 && dword_be(0x70D058) == 1330990660,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91832, title = "Compound Wall",
    description = "Speedrun: Chapter 4 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1129270608 && dword_be(0x70D058) == 1330990660 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1129270608 && prev(dword_be(0x70D058)) == 1330990660 &&
             levelTitleInUppercaseAscii() == 1112297283 && dword_be(0x70D058) == 1262568517,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91833, title = "Blockade",
    description = "Speedrun: Chapter 4 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1112297283 && dword_be(0x70D058) == 1262568517 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1112297283 && prev(dword_be(0x70D058)) == 1262568517 &&
             levelTitleInUppercaseAscii() == 1162761285 && dword_be(0x70D058) == 1380535879,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91834, title = "Entering the Base",
    description = "Speedrun: Chapter 4 - Level 4",
    start  = levelTitleInUppercaseAscii() == 1162761285 && dword_be(0x70D058) == 1380535879 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1162761285 && prev(dword_be(0x70D058)) == 1380535879 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1397507399,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91835, title = "The Sleg Fortress",
    description = "Speedrun: Chapter 5 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1397507399 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1397507399 &&
             levelTitleInUppercaseAscii() == 1398228293 && dword_be(0x70D058) == 1344296008,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91836, title = "Sweep the Halls",
    description = "Speedrun: Chapter 5 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1398228293 && dword_be(0x70D058) == 1344296008 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1398228293 && prev(dword_be(0x70D058)) == 1344296008 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1397047634,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91837, title = "The Search Continues",
    description = "Speedrun: Chapter 5 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1397047634 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1397047634 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1112495941,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91838, title = "The Bowels of the Base",
    description = "Speedrun: Chapter 5 - Level 4",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1112495941 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1112495941 &&
             levelTitleInUppercaseAscii() == 1380270403 && dword_be(0x70D058) == 1414484512,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91839, title = "Reactor Core",
    description = "Speedrun: Chapter 5 - Level 5",
    start  = levelTitleInUppercaseAscii() == 1380270403 && dword_be(0x70D058) == 1414484512 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1380270403 && prev(dword_be(0x70D058)) == 1414484512 &&
             levelTitleInUppercaseAscii() == 1296387156 && dword_be(0x70D058) == 1146050382,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91840, title = "Meltdown",
    description = "Speedrun: Chapter 5 - Level 6",
    start  = levelTitleInUppercaseAscii() == 1296387156 && dword_be(0x70D058) == 1146050382 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1296387156 && prev(dword_be(0x70D058)) == 1146050382 &&
             levelTitleInUppercaseAscii() == 1229870149 && dword_be(0x70D058) == 1381125959,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91841, title = "Interrogation",
    description = "Speedrun: Chapter 5 - Level 7",
    start  = levelTitleInUppercaseAscii() == 1229870149 && dword_be(0x70D058) == 1381125959 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1229870149 && prev(dword_be(0x70D058)) == 1381125959 &&
             levelTitleInUppercaseAscii() == 1380275011 && dword_be(0x70D058) == 1430593620,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91842, title = "Rescue the Wise Father",
    description = "Speedrun: Chapter 5 - Level 8",
    start  = levelTitleInUppercaseAscii() == 1380275011 && dword_be(0x70D058) == 1430593620 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1380275011 && prev(dword_be(0x70D058)) == 1430593620 &&
             levelTitleInUppercaseAscii() == 1163084609,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91843, title = "Escape",
    description = "Speedrun: Chapter 5 - Level 10",
    start  = levelTitleInUppercaseAscii() == 1163084609 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1163084609 && levelTitleInUppercaseAscii() == 1179796805,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91844, title = "Shadowed Lands",
    description = "Speedrun: Chapter 6 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1397244228 && dword_be(0x70D058) == 1331119428 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1397244228 && prev(dword_be(0x70D058)) == 1331119428 &&
             levelTitleInUppercaseAscii() == 1381321038 && dword_be(0x70D058) == 1162092611,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91845, title = "Ruined City",
    description = "Speedrun: Chapter 6 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1381321038 && dword_be(0x70D058) == 1162092611 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1381321038 && prev(dword_be(0x70D058)) == 1162092611 &&
             levelTitleInUppercaseAscii() == 1397050964 && dword_be(0x70D058) == 1229866316,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91846, title = "Sentinels",
    description = "Speedrun: Chapter 6 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1397050964 && dword_be(0x70D058) == 1229866316 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1397050964 && prev(dword_be(0x70D058)) == 1229866316 &&
             levelTitleInUppercaseAscii() == 1145389396 && dword_be(0x70D058) == 1210074706,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91847, title = "Death From the Deep",
    description = "Speedrun: Chapter 6 - Level 4",
    start  = levelTitleInUppercaseAscii() == 1145389396 && dword_be(0x70D058) == 1210074706 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1145389396 && prev(dword_be(0x70D058)) == 1210074706 &&
             levelTitleInUppercaseAscii() == 1145654863 && dword_be(0x70D058) == 1396790610,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91848, title = "Dinosaur Graveyard",
    description = "Speedrun: Chapter 6 - Level 5",
    start  = levelTitleInUppercaseAscii() == 1145654863 && dword_be(0x70D058) == 1396790610 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1145654863 && prev(dword_be(0x70D058)) == 1396790610 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1112688964,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91849, title = "The Bridge",
    description = "Speedrun: Chapter 6 - Level 6",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1112688964 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1112688964 &&
             levelTitleInUppercaseAscii() == 1111573323 && dword_be(0x70D058) == 542396192,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91850, title = "Back to the Skies",
    description = "Speedrun: Chapter 7 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1111573323 && dword_be(0x70D058) == 542396192 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1111573323 && prev(dword_be(0x70D058)) == 542396192 &&
             levelTitleInUppercaseAscii() == 1129270594 && dword_be(0x70D058) == 1096032338,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91851, title = "Combat Run",
    description = "Speedrun: Chapter 7 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1129270594 && dword_be(0x70D058) == 1096032338 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1129270594 && prev(dword_be(0x70D058)) == 1096032338 &&
             levelTitleInUppercaseAscii() == 1380010318 && dword_be(0x70D058) == 1229866784,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91852, title = "Raining Fury",
    description = "Speedrun: Chapter 7 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1380010318 && dword_be(0x70D058) == 1229866784 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1380010318 && prev(dword_be(0x70D058)) == 1229866784 &&
             levelTitleInUppercaseAscii() == 1095979841,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91853, title = "Assault",
    description = "Speedrun: Chapter 8 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1095979841 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1095979841 && levelTitleInUppercaseAscii() == 1128879193 &&
             dword_be(0x70D058) == 541217349,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91854, title = "City Breach",
    description = "Speedrun: Chapter 8 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1128879193 && dword_be(0x70D058) == 541217349 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1128879193 && prev(dword_be(0x70D058)) == 541217349 &&
             levelTitleInUppercaseAscii() == 1162761285 && dword_be(0x70D058) == 1377850440,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91855, title = "Enter the City",
    description = "Speedrun: Chapter 8 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1162761285 && dword_be(0x70D058) == 1377850440 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1162761285 && prev(dword_be(0x70D058)) == 1377850440 &&
             levelTitleInUppercaseAscii() == 1398035013 && dword_be(0x70D058) == 1163141187,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91856, title = "Street Combat",
    description = "Speedrun: Chapter 8 - Level 4",
    start  = levelTitleInUppercaseAscii() == 1398035013 && dword_be(0x70D058) == 1163141187 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1398035013 && prev(dword_be(0x70D058)) == 1163141187 &&
             levelTitleInUppercaseAscii() == 1397639504 && dword_be(0x70D058) == 1163010120,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91857, title = "Sniper Hunting",
    description = "Speedrun: Chapter 8 - Level 5",
    start  = levelTitleInUppercaseAscii() == 1397639504 && dword_be(0x70D058) == 1163010120 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1397639504 && prev(dword_be(0x70D058)) == 1163010120 &&
             levelTitleInUppercaseAscii() == 1095910734,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91858, title = "Arena",
    description = "Speedrun: Chapter 8 - Level 6",
    start  = levelTitleInUppercaseAscii() == 1095910734 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1095910734 && levelTitleInUppercaseAscii() == 1447383636,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91859, title = "Vertigo",
    description = "Speedrun: Chapter 9 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1447383636 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1447383636 && levelTitleInUppercaseAscii() == 1111838277 &&
             dword_be(0x70D058) == 1096042528,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91860, title = "Beneath the Streets",
    description = "Speedrun: Chapter 9 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1111838277 && dword_be(0x70D058) == 1096042528 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1111838277 && prev(dword_be(0x70D058)) == 1096042528 &&
             levelTitleInUppercaseAscii() == 1296124238 && dword_be(0x70D058) == 1413828161,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91861, title = "Maintenance Tunnels",
    description = "Speedrun: Chapter 9 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1296124238 && dword_be(0x70D058) == 1413828161 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1296124238 && prev(dword_be(0x70D058)) == 1413828161 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1279869522,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91862, title = "The Library",
    description = "Speedrun: Chapter 9 - Level 4",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1279869522 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1279869522 &&
             levelTitleInUppercaseAscii() == 1297043029 && dword_be(0x70D058) == 1296387668,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91863, title = "Monument",
    description = "Speedrun: Chapter 9 - Level 5",
    start  = levelTitleInUppercaseAscii() == 1297043029 && dword_be(0x70D058) == 1296387668 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1297043029 && prev(dword_be(0x70D058)) == 1296387668 &&
             levelTitleInUppercaseAscii() == 1212238924 && dword_be(0x70D058) == 1394626374,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91864, title = "Halls of Battle",
    description = "Speedrun: Chapter 10 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1212238924 && dword_be(0x70D058) == 1394626374 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1212238924 && prev(dword_be(0x70D058)) == 1394626374 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1397050945,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91865, title = "The Senate Chambers",
    description = "Speedrun: Chapter 10 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1397050945 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1397050945 &&
             levelTitleInUppercaseAscii() == 1346720329 && dword_be(0x70D058) == 1280267603,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91866, title = "Perilous Skies",
    description = "Speedrun: Chapter 10 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1346720329 && dword_be(0x70D058) == 1280267603 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1346720329 && prev(dword_be(0x70D058)) == 1280267603 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1196574017,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91867, title = "The Great Hall",
    description = "Speedrun: Chapter 10 - Level 4",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1196574017 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1196574017 &&
             levelTitleInUppercaseAscii() == 1396786002 && dword_be(0x70D058) == 1229343043,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91868, title = "Sacrifice",
    description = "Speedrun: Chapter 10 - Level 5",
    start  = levelTitleInUppercaseAscii() == 1396786002 && dword_be(0x70D058) == 1229343043 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1396786002 && prev(dword_be(0x70D058)) == 1229343043 &&
             levelTitleInUppercaseAscii() == 1128808783 && dword_be(0x70D058) == 1394624846,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91869, title = "Chaos in the Skies",
    description = "Speedrun: Chapter 11 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1128808783 && dword_be(0x70D058) == 1394624846 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1128808783 && prev(dword_be(0x70D058)) == 1394624846 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1397249364,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91870, title = "The Shuttle Bay",
    description = "Speedrun: Chapter 11 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1397249364 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1397249364 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1128879193,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91871, title = "The City Falls",
    description = "Speedrun: Chapter 11 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1128879193 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1128879193 &&
             levelTitleInUppercaseAscii() == 1163084609,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91872, title = "Escape",
    description = "Speedrun: Chapter 11 - Level 4",
    start  = levelTitleInUppercaseAscii() == 1163084609 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1163084609 && levelTitleInUppercaseAscii() == 1414022432 &&
             dword_be(0x70D058) == 1313424203,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91873, title = "The Nick of Time",
    description = "Speedrun: Chapter 11 - Level 5",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1313424203 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 || levelLoading() != 0),
    submit = menuGameState() == 1634627189 && dword_be(0x2DE0C0) == 1935438969,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91874, title = "Juggernaut Approach",
    description = "Speedrun: Chapter 12",
    start  = levelTitleInUppercaseAscii() == 1247102791 && dword_be(0x70D058) == 1163021889 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1247102791 && prev(dword_be(0x70D058)) == 1163021889 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1111837772,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91875, title = "The Belly of the Beast",
    description = "Speedrun: Chapter 13",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1111837772 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1111837772 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1179209281,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91876, title = "The Final Blow",
    description = "Speedrun: Chapter 14 - Level 1",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1179209281 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1179209281 &&
             levelTitleInUppercaseAscii() == 1128353369 && dword_be(0x70D058) == 1330520146,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91877, title = "Canyon Run",
    description = "Speedrun: Chapter 14 - Level 2",
    start  = levelTitleInUppercaseAscii() == 1128353369 && dword_be(0x70D058) == 1330520146 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1128353369 && prev(dword_be(0x70D058)) == 1330520146 &&
             levelTitleInUppercaseAscii() == 1128353369 && dword_be(0x70D058) == 1330520132,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91878, title = "Canyon Depths",
    description = "Speedrun: Chapter 14 - Level 3",
    start  = levelTitleInUppercaseAscii() == 1128353369 && dword_be(0x70D058) == 1330520132 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1128353369 && prev(dword_be(0x70D058)) == 1330520132 &&
             levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1111577684,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91879, title = "The Battle for Galyana",
    description = "Speedrun: Chapter 14 - Level 4",
    start  = levelTitleInUppercaseAscii() == 1414022432 && dword_be(0x70D058) == 1111577684 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 ||
                 float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
             ),
    submit = prev(levelTitleInUppercaseAscii()) == 1414022432 && prev(dword_be(0x70D058)) == 1111577684 &&
             levelTitleInUppercaseAscii() == 1447382599 && dword_be(0x70D058) == 1161907779,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)

leaderboard(
    id = 91880, title = "Vengeance",
    description = "Speedrun: Chapter 15",
    start  = levelTitleInUppercaseAscii() == 1447382599 && dword_be(0x70D058) == 1161907779 && levelLoading() == 0,
    cancel = (levelTitleInUppercaseAscii() == 0 || levelLoading() != 0),
    submit = menuGameState() == 1768843100,
    value = measured(tally(0, always_true())),
    format = "FRAMES"
)
