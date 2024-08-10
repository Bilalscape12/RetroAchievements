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

// $3112B0: Object pointer [25-bit BE]
//          +0xB4 | pointer to Object table
//          ++0x20 | chap 4, lvl 2 secret cube
//          ++0x24 | chap 4, lvl 1 spider mine
//			++0x50 | chap 6, lvl 2 plasma cannon
//			++0xA4 | chap 1, lvl 3 secret tekbow
//			++0xA8 | chap 1, lvl 3 secret pistol
//			++0xDC | chap 3, lvl 2 secret shotgun
//			++0x174 | chap 6, lvl 5 medkit
//			++0x7A0 | chap 4, lvl 4 secret spider mine
//			++0x920 | chap 8, lvl 4 manhole plasma cannon
//          +++0x128
//          ++++0x00 | Item picked up = 0x03 [32-bit BE]
//          ++0x40 | Raptor Cage Switch
//          +++0x08
//          ++++0x18 | Switch activated > 0x100 [32-bit BE]
//          ++0x1D4 | Zoo Trex
//          ++0x244 | chap 1, lvl 1 right stego
//          ++0x254 | chap 1, lvl 1 baby triceratops
//          ++0x25C | chap 1, lvl 1 momma triceratops
//          ++0x8E4 | Bruckner
//          +++0x1EC
//          ++++0x04 | Health [Float BE]
//          ++0xFC | chap 8, lvl 4 first manhole
function objectPointer() => dword_be(0x3112B0)

// $31150C: Player pointer [25-bit BE]
//          +0x1EC | pointer to health
//          ++0x0x04 | Story or multiplayer player 2 Health? [Float BE]
//          +0xA44 | pointer to pterosaur
//          ++0x80 | Pterosaur missiles [32-bit BE]
//          ++0x84 | Overdrive time remaining [Float BE]
//          +0x192C
//          ++0x0 | Weapon attacking [32-bit BE]
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

// $70C854: Level loading = 0x24 [8-bit]
//          To check In-game use: this = 0 and first character of level title address must not equal 0
function levelLoading() => byte(0x70C854)

// $70CC54: Chapter number in story [ASCII]
//          or also Multiplayer map title in lowercase
//          Chapter XX
//          chap15 = Finale
function chapterNumber() => word(0x70CC5C)
function chapterNumberInStoryAscii() => dword_be(0x70CC54)

// $70D054: Level title in uppercase [ASCII]
function levelPlaying() => byte(0x70D054)
//function levelTitleInUppercaseAscii() => dword(0x70D054)
function levelTitleInUppercaseAscii() => dword_be(0x70D054)

function levelSecondHalf() => dword_be(0x70D058)

// $70D454: Level description [ASCII]
function levelDescriptionAscii() => byte(0x70D454)

// $73972B: Auto Aim [8-bit]
function autoAim() => byte(0x73972B)

// $739733: HUD [8-bit]
function hud() => byte(0x739733)

// $73973B: Crosshair [8-bit]
function crosshair() => byte(0x73973B)

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

// Chap 1, lvl1
W1Lookup = {
    1: "Bow",
    2: "Pistol",
}
// Chap 1, lvl2 - Chap 3, lvl1
W2x10Lookup = {
    1: "Bow",
    2: "Tekbow",
    3: "Pistol",
    4: "Grenade",
}

// Chap 3, lvl2 - Chap 3, lvl3
W11x12Lookup = {
    1: "Bow",
    2: "Tekbow",
    3: "Pistol",
    4: "Shotgun",
    5: "Grenade",
    6: "Rocket Launcher",
}

// Chap 4, lvl1
W13Lookup = {
    1: "Tekbow",
    2: "Pistol",
    3: "Shotgun",
    4: "Flechette Gun",
    5: "Spider Mine",
}

// Chap 4, lvl2 - Chap 4, lvl3
W14x15Lookup = {
    1: "Tekbow",
    2: "Pistol",
    3: "Shotgun",
    4: "Flechette Gun",
    5: "Flamethrower",
    6: "Spider Mine",
    7: "Dark Matter Cube",
}

// Chap 4, lvl4
W16Lookup = {
    1: "Tekbow",
    2: "Shotgun",
    3: "Flechette Gun",
    4: "Spider Mine",
}

// Chap 5, lvl1 - Chap 5, lvl9
W17x25Lookup = {
    1: "Tekbow",
    2: "Shotgun",
    3: "Grenade",
    4: "Flechette Gun",
    5: "Flamethrower",
    6: "Rocket Launcher",
    7: "Gravity Disruptor",
}

// Chap 6, lvl1 - Chap 6, lvl6
W26x31Lookup = {
    1: "Tekbow",
    2: "Pistol",
    3: "Shotgun",
    4: "Grenade",
    5: "Flechette Gun",
    6: "Rocket Launcher",
    7: "Plasma Cannon",
}

// Chap 8, lvl1 - Chap 8, lvl5
// Chap 9, lvl1 - Chap 10, lvl1
// Chap 10, lvl3
// Chap 10, lvl5
W35x39y41x46y48y50Lookup = {
    1: "Tekbow",
    2: "Shotgun",
    3: "Grenade",
    4: "Flechette Gun",
    5: "Rocket Launcher",
    6: "Plasma Cannon",
    7: "Gravity Disruptor",
}

// Chap 8, lvl6
W40Lookup = {
    1: "Tekbow",
    2: "Shotgun",
    3: "Grenade",
    4: "Flechette Gun",
    5: "Rocket Launcher",
    6: "Plasma Cannon",
    7: "Dark Matter Cube",
}

// Chap 10, lvl2
W47Lookup = {
    1: "Tekbow",
    2: "Shotgun",
    3: "Grenade",
    4: "Plasma Cannon",
    5: "Gravity Disruptor",
}

// Chap 10, lvl4
W49Lookup = {
    1: "Tekbow",
    2: "Shotgun",
    3: "Grenade",
    4: "Rocket Launcher",
    5: "Flechette Gun",
    6: "Plasma Cannon",
    7: "Gravity Disruptor",
}

// Chap 13
W57Lookup = {
    1: "Tekbow",
    2: "Grenade",
    3: "Flechette Gun",
    4: "Flamethrower",
    5: "Spider Mine",
    6: "Plasma Cannon",
    7: "Gravity Disruptor",
}

// Chap 15
W62Lookup = {
    1: "Shotgun",
    2: "Grenade",
    3: "Flechette Gun",
    4: "Flamethrower",
    5: "Plasma Cannon",
}

//First 8 characters of level ASCII converted into 32-bit BE hex
// Chap 1
INTO_THE = [1229870159, 542394437]
JUNGLE_H = [1247104583, 1279598664]
HUNTERS = [1213550164, 1163011923]
// Chap 2
AIRBORNE = [1095324226, 1330794053]
STRETCHI = [1398035013, 1413695561]
DAM_THE_ = [1145130272, 1414022432]
GROUND_A = [1196576597, 1313087553]
MINE_FIE = [1296649797, 541477189]
ANCIENT_ = [1095648073, 1162761248]
// Chap 3
MOUNTAIN = [1297044814, 1413564750]
SUMMIT_B = [1398099277, 1230250050]
DESC = [1145393987]
// Chap 4
INFILTRA = [1229866569, 1280594497]
COMPOUND = [1129270608, 1330990660]
BLOCKADE = [1112297283, 1262568517]
ENTERING = [1162761285, 1380535879]
// Chap 5
THE_SLEG = [1414022432, 1397507399]
SWEEP_TH = [1398228293, 1344296008]
THE_SEAR = [1414022432, 1397047634]
THE_BOWE = [1414022432, 1112495941]
REACTOR_ = [1380270403, 1414484512]
MELTDOWN = [1296387156, 1146050382]
INTERROG = [1229870149, 1381125959]
RESCUE_T = [1380275011, 1430593620]
ESCA = [1163084609]
// Freedom cutscene
FREE = [1179796805]
// Chap 6
SHADOWED = [1397244228, 1331119428]
RUINED_C = [1381321038, 1162092611]
SENTINEL = [1397050964, 1229866316]
DEATH_FR = [1145389396, 1210074706]
DINOSAUR = [1145654863, 1396790610]
THE_BRID = [1414022432, 1112688964]
// Chap 7
BACK_TO_ = [1111573323, 542396192]
COMBAT_R = [1129270594, 1096032338]
RAINING_ = [1380010318, 1229866784]
// Chap 8
ASSA = [1095979841]
CITY_BRE = [1128879193, 541217349]
ENTER_TH = [1162761285, 1377850440]
STREET_C = [1398035013, 1163141187]
SNIPER_H = [1397639504, 1163010120]
AREN = [1095910734]
// Chap 9
VERT = [1447383636]
BENEATH_ = [1111838277, 1096042528]
MAINTENA = [1296124238, 1413828161]
THE_LIBR = [1414022432, 1279869522]
MONUMENT = [1297043029, 1296387668]
// Chap 10
HALLS_OF = [1212238924, 1394626374]
THE_SENA = [1414022432, 1397050945]
PERILOUS = [1346720329, 1280267603]
THE_GREA = [1414022432, 1196574017]
SACRIFIC = [1396786002, 1229343043]
// Chap 11
CHAOS_IN = [1128808783, 1394624846]
THE_SHUT = [1414022432, 1397249364]
THE_CITY = [1414022432, 1128879193]
// ESCA chapter11
THE_NICK = [1414022432, 1313424203]
// Chap 12
JUGGERNA = [1247102791, 1163021889]
// Chap 13
THE_BELL = [1414022432, 1111837772]
// Chap 14
THE_FINA = [1414022432, 1179209281]
CANYON_R = [1128353369, 1330520146]
CANYON_D = [1128353369, 1330520132]
THE_BATT = [1414022432, 1111577684]
// Chap 15
VENGEANC = [1447382599, 1161907779]

function playerDies() {
    return float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x0001EC) & 0x1FFFFFF) + 0x000004) == 0
}

function Cheats() {
    return allWeaponCheatActivated() == 0 && unlimitedAmmoCheatActivated() == 0 && invincibleCheatActivated() == 0 && 
		invisibleCheatActivated() == 0 && disable_when(autoAim() == 1, until=levelPlaying() == 0 || playerDies())
}

function ChapCheats() {
    return allWeaponCheatActivated() == 0 && unlimitedAmmoCheatActivated() == 0 && invincibleCheatActivated() == 0 && 
		invisibleCheatActivated() == 0 && unless(once(autoAim() == 1))
}

function BanClub(hits) {
	return disable_when(repeated(hits+1, levelLoading() == 0 && dword_be((playerPointer() & 0x1FFFFFF) + 0x001ACC) == 0 && dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x00192C) & 0x1FFFFFF) + 0x00) > prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x00192C) & 0x1FFFFFF) + 0x00))))
}

// Used to block regular arrows, pistol, shotgun, grenade, flechette gun (only flechettes), flamethrower, rocket launcher (only rockets), plasma cannon, spider mine, dark matter cube, gravity disruptor
function BanSingleAmmoWeapon(weaponSlot, hits) {
	return disable_when(repeated(hits+1, levelLoading() == 0 && dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000004 + (0x000028*weaponSlot))) < prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000004 + (0x000028*weaponSlot))))))
}

// Used to block explosive arrows, minigun, cerebral bore
function BanSecondAmmoWeapon(weaponSlot, hits) {
	return disable_when(repeated(hits+1, levelLoading() == 0 && dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000008 + (0x000028*weaponSlot))) < prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000008 + (0x000028*weaponSlot))))))
}

// Used to block poison arrows, nuke
function BanThirdAmmoWeapon(weaponSlot, hits) {
	return disable_when(repeated(hits+1, levelLoading() == 0 && dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x00000c + (0x000028*weaponSlot))) < prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x00000c + (0x000028*weaponSlot))))))
}

function Progression(Title, Chapter, Points, Level1, Level2, NextLevel1, NextLevel2) {
	if (Level2 == "" && NextLevel2 == "")
		achievement(
			title = Title, points = Points,
			description = "Complete Chapter " + Chapter,
			trigger = Cheats() && prev(levelTitleInUppercaseAscii()) == Level1 && levelTitleInUppercaseAscii() == NextLevel1
		)
	if (Level2 != "" && NextLevel2 == "")
		achievement(
			title = Title, points = Points,
			description = "Complete Chapter " + Chapter,
			trigger = Cheats() && prev(levelTitleInUppercaseAscii()) == Level1 && prev(levelSecondHalf()) == Level2 && 
				levelTitleInUppercaseAscii() == NextLevel1
		)
	if (Level2 == "" && NextLevel2 != "")
		achievement(
			title = Title, points = Points,
			description = "Complete Chapter " + Chapter,
			trigger = Cheats() && prev(levelTitleInUppercaseAscii()) == Level1 && levelTitleInUppercaseAscii() == NextLevel1 && 
				levelSecondHalf() == NextLevel2
		)
	if (Level2 != "" && NextLevel2 != "")
		achievement(
			title = Title, points = Points,
			description = "Complete Chapter " + Chapter,
			trigger = Cheats() && prev(levelTitleInUppercaseAscii()) == Level1 && prev(levelSecondHalf()) == Level2 && 
				levelTitleInUppercaseAscii() == NextLevel1 && levelSecondHalf() == NextLevel2
		)
}

function WinCon() {
	return Cheats() && levelTitleInUppercaseAscii() == VENGEANC[0] && levelSecondHalf() == VENGEANC[1] && 
		menuGameState() == 1768843100
}
// manually move alt into core
function ChapSpeedrun(level, chap, frames) {
	if (chap < 8)
		return ChapCheats() && disable_when(repeated(frames, chapterNumber() == chap + 48 && levelLoading() == 0)) && 
			once(levelTitleInUppercaseAscii() == level[0] && levelSecondHalf() == level[1]) && prev(chapterNumber()) == chap + 48 && trigger_when(chapterNumber() == chap + 49)
			|| never(levelPlaying() == 0)
	if (chap == 8)
		return ChapCheats() && disable_when(repeated(frames, chapterNumber() == chap + 48 && levelLoading() == 0)) && 
			once(levelTitleInUppercaseAscii() == ASSA[0]) && prev(chapterNumber()) == chap + 48 && trigger_when(chapterNumber() == chap + 49)
			|| never(levelPlaying() == 0)
	if (chap == 9)
		return ChapCheats() && disable_when(repeated(frames, chapterNumber() == 57 && levelLoading() == 0)) && 
			once(levelTitleInUppercaseAscii() == VERT[0]) && prev(chapterNumber()) == 57 && trigger_when(chapterNumber() == 12337)
			|| never(levelPlaying() == 0)
	// Use the lvl function for chapters 12 and 13
	if (chap > 9 && chap < 15)
		return ChapCheats() && disable_when(repeated(frames, chapterNumber() == chap*256 + 9777 && levelLoading() == 0)) && 
			once(levelTitleInUppercaseAscii() == level[0] && levelSecondHalf() == level[1]) && prev(chapterNumber()) == chap*256 + 9777 && trigger_when(chapterNumber() == chap*256 + 9777)
			|| never(levelPlaying() == 0)
	if (chap == 15)
		return ChapCheats() && disable_when(repeated(frames, chapterNumber() == 13617 && levelLoading() == 0)) && 
			levelTitleInUppercaseAscii() == VENGEANC[0] && levelSecondHalf() == VENGEANC[1] && trigger_when(menuGameState() == 1768843100)
			|| never(levelPlaying() == 0)
}

function LvlSpeedrun(Level1, Level2, NextLevel1, NextLevel2, frames) {
	if (Level2 == "" && NextLevel2 == "")
		return Cheats() && disable_when(repeated(frames, levelTitleInUppercaseAscii() == Level1 && levelLoading() == 0), until=(levelPlaying() == 0 || playerDies())) && 
			prev(levelTitleInUppercaseAscii()) == Level1 && trigger_when(levelTitleInUppercaseAscii() == NextLevel1)
	if (Level2 != "" && NextLevel2 == "")
		return Cheats() && disable_when(repeated(frames, levelTitleInUppercaseAscii() == Level1 && levelSecondHalf() == Level2 && levelLoading() == 0), until=__ornext(levelPlaying() == 0 || playerDies())) && 
			prev(levelTitleInUppercaseAscii()) == Level1 && prev(levelSecondHalf()) == Level2 && trigger_when(levelTitleInUppercaseAscii() == NextLevel1)
	if (Level2 == "" && NextLevel2 != "")
		return Cheats() && disable_when(repeated(frames, levelTitleInUppercaseAscii() == Level1 && levelLoading() == 0), until=__ornext(levelPlaying() == 0 || playerDies())) && 
			prev(levelTitleInUppercaseAscii()) == Level1 && trigger_when(levelTitleInUppercaseAscii() == NextLevel1 && levelSecondHalf() == NextLevel2)
	if (Level2 != "" && NextLevel2 != "")
		return Cheats() && disable_when(repeated(frames, levelTitleInUppercaseAscii() == Level1 && levelSecondHalf() == Level2 && levelLoading() == 0), until=(levelPlaying() == 0 || playerDies())) && 
			prev(levelTitleInUppercaseAscii()) == Level1 && prev(levelSecondHalf()) == Level2 && trigger_when(levelTitleInUppercaseAscii() == NextLevel1 && levelSecondHalf() == NextLevel2)
}

Progression("Into the Jungle", "1. Note that Auto Aim must be disabled to earn any achievements!", 5, HUNTERS[0], HUNTERS[1], AIRBORNE[0], AIRBORNE[1])
Progression("Airborne", "2.", 10, ANCIENT_[0], ANCIENT_[1], MOUNTAIN[0], MOUNTAIN[1])
Progression("Mountain Descent", "3.", 10, DESC[0], "", INFILTRA[0], INFILTRA[1])
Progression("Infiltration", "4.", 10, ENTERING[0], ENTERING[1], THE_SLEG[0], THE_SLEG[1])
Progression("The Sleg Fortress", "5.", 25, FREE[0], "", SHADOWED[0], SHADOWED[1])
Progression("Shadowed Lands", "6.", 10, THE_BRID[0], THE_BRID[1], BACK_TO_[0], BACK_TO_[1])
Progression("Back to the Skies", "7.", 10, RAINING_[0], RAINING_[1], ASSA[0], "")
Progression("Assault", "8.", 10, AREN[0], "", VERT[0], "")
Progression("Vertigo", "9.", 10, MONUMENT[0], MONUMENT[1], HALLS_OF[0], HALLS_OF[1])
Progression("Halls of Justice", "10.", 10, SACRIFIC[0], SACRIFIC[1], CHAOS_IN[0], CHAOS_IN[1])
Progression("Chaos in the Skies", "11.", 10, THE_NICK[0], THE_NICK[1], JUGGERNA[0], JUGGERNA[1])
Progression("Juggernaut Approach", "12.", 5, JUGGERNA[0], JUGGERNA[1], THE_BELL[0], THE_BELL[1])
Progression("The Belly of the Beast", "13.", 10, THE_BELL[0], THE_BELL[1], THE_FINA[0], THE_FINA[1])
Progression("The Final Blow", "14.", 10, THE_BATT[0], THE_BATT[1], VENGEANC[0], VENGEANC[1])
achievement(
    title = "Vengeance", points = 5,
    description = "Complete Chapter 15.",
    trigger = WinCon()
)

achievement(
    title = "Poison Paste", points = 1,
    description = "Pick up Poison Arrows.",
    trigger = Cheats() && levelLoading() == 0 &&
              (dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x00000C + (0x000028*2))) > 
              prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x00000C + (0x000028*2)))) && 
			  levelTitleInUppercaseAscii() != INTO_THE[0] && levelSecondHalf() != INTO_THE[1] && 
			  (__ornext(chapterNumber() == 49 || chapterNumber() == 51)) || 
			  dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x00000C + (0x000028*1))) > 
              prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x00000C + (0x000028*1)))) && 
			  (__ornext(chapterNumber() == 52 || chapterNumber() == 53 || chapterNumber() == 54 || chapterNumber() == 56 || chapterNumber() == 57 || 
			  chapterNumber() == 12337 || chapterNumber() == 13105)))
)

achievement(
    title = "Flaming Guts", points = 1,
    description = "Pick up Explosive Arrows.",
    trigger = Cheats() && levelLoading() == 0 &&
              (dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000008 + (0x000028*1))) > 
              prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000008 + (0x000028*1)))) && 
			  (__ornext(chapterNumber() == 49 || chapterNumber() == 51 || chapterNumber() == 52 || chapterNumber() == 53 || chapterNumber() == 54 || 
			  chapterNumber() == 56 || chapterNumber() == 57 || chapterNumber() == 12337 || chapterNumber() == 13105)))
)

achievement(
    title = "Scoped In", points = 1,
    description = "Pick up a Sniper Scope.",
    trigger = Cheats() && levelLoading() == 0 &&
              (prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*3)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*3))) == 1 && 
			  chapterNumber() == 51 || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*2)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*2))) == 1 && 
			  levelTitleInUppercaseAscii() != ENTERING[0] && levelSecondHalf() != ENTERING[1] && 
			  (__ornext(chapterNumber() == 52 || chapterNumber() == 54)))
)

achievement(
    title = "Barrage of Shells", points = 2,
    description = "Pick up a Quad Shot Barrel.",
    trigger = Cheats() && levelLoading() == 0 && 
              (prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*3)))) == 0 && 
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*3))) == 1 && 
			  levelTitleInUppercaseAscii() != ENTERING[0] && levelSecondHalf() != ENTERING[1] && 
			  (__ornext(chapterNumber() == 52 || chapterNumber() == 54)) || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*2)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*2))) == 1 && 
			  levelTitleInUppercaseAscii() != INFILTRA[0] && levelSecondHalf() != INFILTRA[1] && 
			  levelTitleInUppercaseAscii() != COMPOUND[0] && levelSecondHalf() != COMPOUND[1] && 
			  levelTitleInUppercaseAscii() != BLOCKADE[0] && levelSecondHalf() != BLOCKADE[1] && 
			  (__ornext(chapterNumber() == 52 || chapterNumber() == 53 || chapterNumber() == 56 || chapterNumber() == 57 || chapterNumber() == 12337)) || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*1)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*1))) == 1 && 
			  levelTitleInUppercaseAscii() == VENGEANC[0] && levelSecondHalf() == VENGEANC[1])
)

achievement(
    title = "18 Barrels of 20mm Death", points = 2,
    description = "Pick up Minigun Barrels.",
    trigger = Cheats() && levelLoading() == 0 &&
              (prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*4)))) == 0 && 
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*4))) == 1 && 
			  levelTitleInUppercaseAscii() != ENTERING[0] && levelSecondHalf() != ENTERING[1] && 
			  levelTitleInUppercaseAscii() != THE_SENA[0] && levelSecondHalf() != THE_SENA[1] && 
			  levelTitleInUppercaseAscii() != THE_GREA[0] && levelSecondHalf() != THE_GREA[1] && 
			  (__ornext(chapterNumber() == 52 || chapterNumber() == 53 || chapterNumber() == 56 || chapterNumber() == 57 || chapterNumber() == 12337)) || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*3)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*3))) == 1 && 
			  levelTitleInUppercaseAscii() != INFILTRA[0] && levelSecondHalf() != INFILTRA[1] && 
			  levelTitleInUppercaseAscii() != COMPOUND[0] && levelSecondHalf() != COMPOUND[1] && 
			  levelTitleInUppercaseAscii() != BLOCKADE[0] && levelSecondHalf() != BLOCKADE[1] && 
			  (__ornext(chapterNumber() == 52 || chapterNumber() == 13105 || chapterNumber() == 13617)) || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*5)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*5))) == 1 && 
			  levelTitleInUppercaseAscii() != HALLS_OF[0] && levelSecondHalf() != HALLS_OF[1] && 
			  levelTitleInUppercaseAscii() != THE_SENA[0] && levelSecondHalf() != THE_SENA[1] && 
			  levelTitleInUppercaseAscii() != PERILOUS[0] && levelSecondHalf() != PERILOUS[1] && 
			  levelTitleInUppercaseAscii() != SACRIFIC[0] && levelSecondHalf() != SACRIFIC[1] && 
			  (__ornext(chapterNumber() == 54 || chapterNumber() == 12337)))
)

achievement(
    title = "Homing Plasma", points = 2,
    description = "Pick up a Seeker Lens.",
    trigger = Cheats() && levelLoading() == 0 &&
              (prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*7)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*7))) == 1 && 
			  chapterNumber() == 54 || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*6)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*6))) == 1 && 
			  levelTitleInUppercaseAscii() != THE_SENA[0] && levelSecondHalf() != THE_SENA[1] && 
			  (__ornext(chapterNumber() == 56 || chapterNumber() == 57 || chapterNumber() == 12337 || chapterNumber() == 13105)) || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*4)))) == 0 && 
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*4))) == 1 && 
			  levelTitleInUppercaseAscii() == THE_SENA[0] && levelSecondHalf() == THE_SENA[1] || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*5)))) == 0 && 
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*5))) == 1 && 
			  levelTitleInUppercaseAscii() == VENGEANC[0] && levelSecondHalf() == VENGEANC[1])
)

achievement(
    title = "Drill Bits from Hell", points = 2,
    description = "Pick up a Swarm-Bore Attachment.",
    trigger = Cheats() && levelLoading() == 0 &&
              (prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*6)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*6))) == 1 && 
			  levelTitleInUppercaseAscii() == THE_BRID[0] && levelSecondHalf() == THE_BRID[1] || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*5)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*5))) == 1 && 
			  levelTitleInUppercaseAscii() != THE_SENA[0] && levelSecondHalf() != THE_SENA[1] && 
			  levelTitleInUppercaseAscii() != THE_GREA[0] && levelSecondHalf() != THE_GREA[1] && 
			  (__ornext(chapterNumber() == 56 || chapterNumber() == 57 || chapterNumber() == 12337)) || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*4)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000014 + (0x000028*4))) == 1 && 
			  levelTitleInUppercaseAscii() == THE_GREA[0] && levelSecondHalf() == THE_GREA[1])
)

achievement(
    title = "I Have Become Death", points = 2,
    description = "Fire the Nuke.",
    trigger = Cheats() && levelLoading() == 0 && levelTitleInUppercaseAscii() == AREN[0] &&
              prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + 0x0000D4)) == 1 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + 0x0000D4) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + 0x0000E0) == 1 &&
              byte((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + 0x0000E4) == 2
)

achievement(
    title = "Chain Lightning", points = 2,
    description = "Pick up a Chain Lens.",
    trigger = Cheats() && levelLoading() == 0 &&
              (prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000018 + (0x000028*6)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000018 + (0x000028*6))) == 1 && 
			  levelTitleInUppercaseAscii() != THE_SENA[0] && levelSecondHalf() != THE_SENA[1] && 
			  (__ornext(chapterNumber() == 57 || chapterNumber() == 12337 || chapterNumber() == 13105)) || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000018 + (0x000028*4)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000018 + (0x000028*4))) == 1 && 
			  levelTitleInUppercaseAscii() == THE_SENA[0] && levelSecondHalf() == THE_SENA[1] || 
			  prev(dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000018 + (0x000028*5)))) == 0 &&
              dword_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x001AC0) & 0x1FFFFFF) + (0x000018 + (0x000028*5))) == 1 && 
			  levelTitleInUppercaseAscii() == VENGEANC[0] && levelSecondHalf() == VENGEANC[1])
)

achievement(
    title = "Last Minute Resupply", points = 2,
    description = "Pick up the hidden weapons in Hunter's Peril.",
    trigger = Cheats() && levelLoading() == 0 && levelTitleInUppercaseAscii() == HUNTERS[0] && levelSecondHalf() == HUNTERS[1] &&
              (prev(dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0000A4)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF)) == 1 &&
              dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0000A4)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF) == 3 || 
			  prev(dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0000A8)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF)) == 1 &&
              dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0000A8)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF) == 3)
)

achievement(
    title = "Temple Relic", points = 2,
    description = "Pick up an Overdrive in Ancient Ruins.",
    trigger = Cheats() && levelLoading() == 0 && levelTitleInUppercaseAscii() == ANCIENT_[0] && levelSecondHalf() == ANCIENT_[1] && 
				float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x000A44) & 0x1FFFFFF) + 0x000084) > 0.0
)

achievement(
    title = "Ledge Lookout", points = 3,
    description = "Pick up the hidden Shotgun in Summit Battle.",
    trigger = Cheats() && levelLoading() == 0 && levelTitleInUppercaseAscii() == SUMMIT_B[0] && levelSecondHalf() == SUMMIT_B[1] &&
              prev(dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0000DC)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF)) == 1 &&
              dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0000DC)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF) == 3
)

achievement(
    title = "It Will Tear Your Soul Apart!", points = 2,
    description = "Pick up the hidden Dark Matter Cube in Compound Wall.",
    trigger = Cheats() && levelLoading() == 0 && levelTitleInUppercaseAscii() == COMPOUND[0] && levelSecondHalf() == COMPOUND[1] &&
              prev(dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x000020)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF)) == 1 &&
              dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x000020)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF) == 3
)

achievement(
    title = "Wait... Not Me!", points = 1,
    description = "Release the Raptors from their cages in Entering the Base.",
    trigger = Cheats() && levelLoading() == 0 && levelTitleInUppercaseAscii() == ENTERING[0] && levelSecondHalf() == ENTERING[1] &&
              prev(dword_be((prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x000040)) & 0x1FFFFFF) + 0x000008)) & 0x1FFFFFF) + 0x000018)) < 256 &&
              dword_be((prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x000040)) & 0x1FFFFFF) + 0x000008)) & 0x1FFFFFF) + 0x000018) >= 256
)

achievement(
    title = "Weapon of the Ancients", points = 3,
    description = "Pick up the hidden Plasma Cannon in Ruined City.",
    trigger = Cheats() && levelLoading() == 0 && levelTitleInUppercaseAscii() == RUINED_C[0] && levelSecondHalf() == RUINED_C[1] &&
              prev(dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x000050)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF)) == 1 &&
              dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x000050)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF) == 3
)

achievement(
    title = "Vulture Pellets", points = 2,
    description = "Pick up the hidden Large Medkit in Dinosaur Graveyard.",
    trigger = Cheats() && levelLoading() == 0 && levelTitleInUppercaseAscii() == DINOSAUR[0] && levelSecondHalf() == DINOSAUR[1] &&
              prev(dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x000174)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF)) == 1 &&
              dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x000174)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF) == 3
)

achievement(
    title = "Sewer Safety", points = 3,
    description = "Pick up the hidden Plasma Cannon in Street Combat.",
    trigger = Cheats() && levelLoading() == 0 && levelTitleInUppercaseAscii() == STREET_C[0] && levelSecondHalf() == STREET_C[1] &&
              prev(dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x000920)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF)) == 1 &&
              dword_be(prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x000920)) & 0x1FFFFFF) + 0x000128)) & 0x1FFFFFF) == 3
)

achievement(
    title = "Hurry Up!", points = 1,
    description = "Pick up the soldier's Key in Sniper Hunting.",
    trigger = Cheats() && levelLoading() == 0 && levelTitleInUppercaseAscii() == SNIPER_H[0] && levelSecondHalf() == SNIPER_H[1] &&
              prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0004DC)) > 2147483648 &&
              dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0004DC) == 0
)

achievement(
    title = "Juggernaut Dissection", points = 3,
    description = "Pick up an Overdrive in The Final Blow.",
    trigger = Cheats() && levelLoading() == 0 && levelTitleInUppercaseAscii() == THE_FINA[0] && levelSecondHalf() == THE_FINA[1] && 
				float_be((dword_be((playerPointer() & 0x1FFFFFF) + 0x000A44) & 0x1FFFFFF) + 0x000084) > 0.0
)

achievement(
	title = "When Nature Calls", points = 5,
	description = "Complete Chapter 1 in 4 minutes and 30 seconds.", 
	trigger = ChapSpeedrun(INTO_THE, 1, 16200)
)

achievement(
	title = "Will You Be Quiet Now?", points = 5,
	description = "Complete Ancient Ruins in 2 minutes and 40 seconds.", 
	trigger = LvlSpeedrun(ANCIENT_[0], ANCIENT_[1], MOUNTAIN[0], MOUNTAIN[1], 15960)
)

// Manually move resets into Alt 1
achievement(
    title = "lvl10club", points = 5,
    description = "Complete Mountain Ascent using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(3, 0) && BanSingleAmmoWeapon(4, 0) && 
              prev(levelTitleInUppercaseAscii()) == MOUNTAIN[0] && prev(levelSecondHalf()) == MOUNTAIN[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == SUMMIT_B[0] && levelSecondHalf() == SUMMIT_B[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl11club", points = 10,
    description = "Complete Summit Battle using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(3, 0) && BanSingleAmmoWeapon(4, 0) && BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
              prev(levelTitleInUppercaseAscii()) == SUMMIT_B[0] && prev(levelSecondHalf()) == SUMMIT_B[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == DESC[0]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl12club", points = 5,
    description = "Complete Descent using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(3, 0) && BanSingleAmmoWeapon(4, 0) && BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
              prev(levelTitleInUppercaseAscii()) == DESC[0] && 
			  trigger_when(levelTitleInUppercaseAscii() == INFILTRA[0] && levelSecondHalf() == INFILTRA[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl13club", points = 3,
    description = "Complete Infiltration using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
              prev(levelTitleInUppercaseAscii()) == INFILTRA[0] && prev(levelSecondHalf()) == INFILTRA[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == COMPOUND[0] && levelSecondHalf() == COMPOUND[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl14club", points = 3,
    description = "Complete Compound Wall using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == COMPOUND[0] && prev(levelSecondHalf()) == COMPOUND[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == BLOCKADE[0] && levelSecondHalf() == BLOCKADE[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl15club", points = 5,
    description = "Complete Blockade using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == BLOCKADE[0] && prev(levelSecondHalf()) == BLOCKADE[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == ENTERING[0] && levelSecondHalf() == ENTERING[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl16club", points = 3,
    description = "Complete Entering the Base using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && BanSecondAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && 
              prev(levelTitleInUppercaseAscii()) == ENTERING[0] && prev(levelSecondHalf()) == ENTERING[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == THE_SLEG[0] && levelSecondHalf() == THE_SLEG[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl17club", points = 10,
    description = "Complete The Sleg Fortress using only the Warclub and 1 Grenade.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 1) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == THE_SLEG[0] && prev(levelSecondHalf()) == THE_SLEG[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == SWEEP_TH[0] && levelSecondHalf() == SWEEP_TH[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl18club", points = 3,
    description = "Complete Sweep the Halls using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == SWEEP_TH[0] && prev(levelSecondHalf()) == SWEEP_TH[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == THE_SEAR[0] && levelSecondHalf() == THE_SEAR[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl19club", points = 10,
    description = "Complete The Search Continues using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == THE_SEAR[0] && prev(levelSecondHalf()) == THE_SEAR[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == THE_BOWE[0] && levelSecondHalf() == THE_BOWE[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl20club", points = 10,
    description = "Complete The Bowels of the Base using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == THE_BOWE[0] && prev(levelSecondHalf()) == THE_BOWE[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == REACTOR_[0] && levelSecondHalf() == REACTOR_[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl21club", points = 5,
    description = "Complete Reactor Core using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == REACTOR_[0] && prev(levelSecondHalf()) == REACTOR_[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == MELTDOWN[0] && levelSecondHalf() == MELTDOWN[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl22club", points = 5,
    description = "Complete Meltdown using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == MELTDOWN[0] && prev(levelSecondHalf()) == MELTDOWN[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == INTERROG[0] && levelSecondHalf() == INTERROG[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl23club", points = 5,
    description = "Complete Interrogation using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == INTERROG[0] && prev(levelSecondHalf()) == INTERROG[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == RESCUE_T[0] && levelSecondHalf() == RESCUE_T[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl24club", points = 10,
    description = "Complete Rescue the Wise Father using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == RESCUE_T[0] && prev(levelSecondHalf()) == RESCUE_T[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == ESCA[0]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl25club", points = 3,
    description = "Complete Escape (Chapter 5) using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == ESCA[0] && 
			  trigger_when(levelTitleInUppercaseAscii() == FREE[0]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl26club", points = 3,
    description = "Complete Shadowed Lands using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == SHADOWED[0] && prev(levelSecondHalf()) == SHADOWED[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == RUINED_C[0] && levelSecondHalf() == RUINED_C[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl27club", points = 5,
    description = "Complete Ruined City using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == RUINED_C[0] && prev(levelSecondHalf()) == RUINED_C[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == SENTINEL[0] && levelSecondHalf() == SENTINEL[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl28club", points = 3,
    description = "Complete Sentinels using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == SENTINEL[0] && prev(levelSecondHalf()) == SENTINEL[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == DEATH_FR[0] && levelSecondHalf() == DEATH_FR[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl29club", points = 10,
    description = "Complete Death from the Deep using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == DEATH_FR[0] && prev(levelSecondHalf()) == DEATH_FR[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == DINOSAUR[0] && levelSecondHalf() == DINOSAUR[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl30club", points = 3,
    description = "Complete Dinosaur Graveyard using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == DINOSAUR[0] && prev(levelSecondHalf()) == DINOSAUR[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == THE_BRID[0] && levelSecondHalf() == THE_BRID[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl31club", points = 3,
    description = "Complete The Bridge using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && BanSecondAmmoWeapon(6, 0) && BanThirdAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == THE_BRID[0] && prev(levelSecondHalf()) == THE_BRID[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == BACK_TO_[0] && levelSecondHalf() == BACK_TO_[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl35club", points = 3,
    description = "Complete Assault using only the Warclub and 10 Missiles.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 10) && BanSecondAmmoWeapon(5, 0) && BanThirdAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == ASSA[0] && 
			  trigger_when(levelTitleInUppercaseAscii() == CITY_BRE[0] && levelSecondHalf() == CITY_BRE[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl36club", points = 3,
    description = "Complete City Breach using only the Warclub and 9 Missiles.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 9) && BanSecondAmmoWeapon(5, 0) && BanThirdAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == CITY_BRE[0] && prev(levelSecondHalf()) == CITY_BRE[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == ENTER_TH[0] && levelSecondHalf() == ENTER_TH[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl37club", points = 5,
    description = "Complete Enter the City using only the Warclub and 2 Grenades.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 2) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && BanThirdAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == ENTER_TH[0] && prev(levelSecondHalf()) == ENTER_TH[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == STREET_C[0] && levelSecondHalf() == STREET_C[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl39club", points = 10,
    description = "Complete Sniper Hunting using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && BanThirdAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == SNIPER_H[0] && prev(levelSecondHalf()) == SNIPER_H[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == AREN[0]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl40club", points = 10,
    description = "Complete Arena using only the Warclub and 30 Flechettes.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 30) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && BanThirdAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == AREN[0] && 
			  trigger_when(levelTitleInUppercaseAscii() == VERT[0]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl41club", points = 10,
    description = "Complete Vertigo using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && BanThirdAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == VERT[0] && 
			  trigger_when(levelTitleInUppercaseAscii() == BENEATH_[0] && levelSecondHalf() == BENEATH_[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl42club", points = 10,
    description = "Complete Beneath the Streets using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && BanThirdAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == BENEATH_[0] && prev(levelSecondHalf()) == BENEATH_[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == MAINTENA[0] && levelSecondHalf() == MAINTENA[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl43club", points = 5,
    description = "Complete Maintenance Tunnels using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && BanThirdAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == MAINTENA[0] && prev(levelSecondHalf()) == MAINTENA[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == THE_LIBR[0] && levelSecondHalf() == THE_LIBR[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl44club", points = 5,
    description = "Complete The Library using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 0) && BanSecondAmmoWeapon(5, 0) && BanThirdAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == THE_LIBR[0] && prev(levelSecondHalf()) == THE_LIBR[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == MONUMENT[0] && levelSecondHalf() == MONUMENT[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl46club", points = 10,
    description = "Complete Halls of Battle using only the Warclub and 9 Missiles.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSecondAmmoWeapon(4, 0) && 
			  BanSingleAmmoWeapon(5, 9) && BanSecondAmmoWeapon(5, 0) && BanThirdAmmoWeapon(5, 0) && 
			  BanSingleAmmoWeapon(6, 0) && 
			  BanSingleAmmoWeapon(7, 0) && 
              prev(levelTitleInUppercaseAscii()) == HALLS_OF[0] && prev(levelSecondHalf()) == HALLS_OF[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == THE_SENA[0] && levelSecondHalf() == THE_SENA[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "lvl47club", points = 10,
    description = "Complete The Senate Chambers using only the Warclub.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSecondAmmoWeapon(1, 0) && BanThirdAmmoWeapon(1, 0) && 
			  BanSingleAmmoWeapon(2, 0) && BanSingleAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSingleAmmoWeapon(5, 0) && 
              prev(levelTitleInUppercaseAscii()) == THE_SENA[0] && prev(levelSecondHalf()) == THE_SENA[1] && 
			  trigger_when(levelTitleInUppercaseAscii() == PERILOUS[0] && levelSecondHalf() == PERILOUS[1]) || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "Excellence in the Field of Crapulence", points = 10,
    description = "Complete Vengeance using only the Warclub and 3 or less Grenades.",
    trigger = ChapCheats() && 
              BanSingleAmmoWeapon(1, 0) && BanSingleAmmoWeapon(2, 3) && 
			  BanSingleAmmoWeapon(3, 0) && BanSecondAmmoWeapon(3, 0) && 
			  BanSingleAmmoWeapon(4, 0) && BanSingleAmmoWeapon(5, 0) && 
              levelTitleInUppercaseAscii() == VENGEANC[0] && levelSecondHalf() == VENGEANC[1] && 
			  prev(float_be((prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0008E4)) & 0x1FFFFFF) + 0x0001EC)) & 0x1FFFFFF) + 0x000004)) > 0 &&
              float_be((prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0008E4)) & 0x1FFFFFF) + 0x0001EC)) & 0x1FFFFFF) + 0x000004) == 0 || 
			  never(levelPlaying() == 0 || playerDies())
)

achievement(
    title = "Menu Hunter", points = 0,
    description = "Activate the Hunter cheat.",
    trigger = menuGameState() == 1937009006 && hunterCheat() == 1
)

achievement(
    title = "Countdown to Extinction", points = 0,
    description = "Explore the zoo and slay the Tyrannosaurus rex.",
    trigger = once(dword_be(0x2E1698) == 2054123356 && dword_be(0x2E169C) == 2054123310) && 
              never(levelLoading() != 0) && levelPlaying() == 0 && byte(0x70CC54) == 0 &&
			  prev(float_be((prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0001D4)) & 0x1FFFFFF) + 0x0001EC)) & 0x1FFFFFF) + 0x000004)) > 0 &&
              float_be((prev(dword_be((prev(dword_be((dword_be((dword_be(0x3112B0) & 0x1FFFFFF) + 0x0000B4) &
              0x1FFFFFF) + 0x0001D4)) & 0x1FFFFFF) + 0x0001EC)) & 0x1FFFFFF) + 0x000004) == 0
)
