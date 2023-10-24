// Carnivores: Ice Age
// #ID = 25694

// $8DA9B4: Selected animal [32-bit]
function selectedAnimal() => dword(0x8DA9B4)

// $8DA9B8: Selected map [32-bit]
function selectedMap() => dword(0x8DA9B8)

// $1962E8C: Weapon [32-bit]
function weapon() => dword(0x1962E8C)

// $1964690: Total animals killed in a hunt [32-bit]
function totalAnimalsKilled() => dword(0x1964690)

// $1964698: Score earned this hunt [32-bit]
function scoreEarned() => dword(0x1964698)

// $19646BC: Radar [32-bit]
function radar() => dword(0x19646BC)

// $1DC6DE0: Money [32-bit]
function money() => dword(0x1DC6DE0)

// $1DC6E00: Camouflage [8-bit]
function camouflage() => byte(0x1DC6E00)

// $1DC6E02: Cover Scent [8-bit]
function coverScent() => byte(0x1DC6E02)

// $1DC6E03: Tranq [8-bit]
function tranq() => byte(0x1DC6E03)

// $1DC7050: Game state [32-bit]
//           0 = main menu
//           1 = map select
//           2 = animal select
//           3 = weapon select
//           4 = options
//           5 = help
//           6 = loading from weapon select to gameplay
//           7 = gameplay
//           8 = game results
//           9/a = loading from gameplay to game results
function gameState() => dword(0x1DC7050)

function Money(amount) {
    return gameState() > 7 && prev(money()) < amount && money() >= amount
}

function EasyHunt(animal) {
    return selectedAnimal() == animal && scoreEarned() != 0 && gameState() > 7 && money() >
               prev(money())
}

function OptionProtection() {
    return radar() == 0 && camouflage() == 0 && coverScent() == 0
}

function MultipleOnMap(animal, map, amount) {
    return selectedAnimal() == animal && selectedMap() == map && measured(repeated(amount, scoreEarned() >
               prev(scoreEarned()))) && gameState() > 7 && money() > prev(money()) && 
              never(gameState() < 7) && never((prev(gameState()) == 8 &&
               gameState() == 7))
}

function CarnivoreWeapon(weapon, amount) {
    return (selectedAnimal() == 2 || selectedAnimal() == 4 || selectedAnimal() == 6 || selectedAnimal() == 8 ||
               selectedAnimal() == 9) && selectedMap() != 0 && weapon() == weapon && measured(repeated(amount,
               scoreEarned() > prev(scoreEarned()))) && gameState() > 7 && money() >
               prev(money()) && never(gameState() < 7) && never((prev(gameState()) == 8 &&
               gameState() == 7))
}

function AnimalWeapon(animal, weapon) {
    return selectedAnimal() == 9 && weapon() == 0 && scoreEarned() != 0 && gameState() > 7 && 
              money() > prev(money())
}

achievement(
    title = "Credits I", points = 5,
    description = "Earn a total of 200 credits",
    trigger = Money(200)
)

achievement(
    title = "Credits II", points = 5,
    description = "Earn a total of 500 credits",
    trigger = Money(500)
)

achievement(
    title = "Credits III", points = 5,
    description = "Earn a total of 900 credits",
    trigger = Money(900)
)

achievement(
    title = "Credits IV", points = 5,
    description = "Earn a total of 1400 credits",
    trigger = Money(1400)
)

achievement(
    title = "Credits V", points = 10,
    description = "Earn a total of 1900 credits",
    trigger = Money(1900)
)

achievement(
    title = "Large-Horned Face", points = 1,
    description = "Hunt a Brontoteriy and escape",
    trigger = EasyHunt(0)
)

achievement(
    title = "Common Warthog", points = 2,
    description = "Hunt a Wild Boar and escape",
    trigger = EasyHunt(1)
)

achievement(
    title = "Prehistoric Canine", points = 5,
    description = "Hunt a Wolf and escape",
    trigger = EasyHunt(2)
)

achievement(
    title = "Griffon of Antiquity", points = 3,
    description = "Hunt a Wooly Rhinoceros and escape",
    trigger = EasyHunt(3)
)

achievement(
    title = "Gaston's Bird", points = 5,
    description = "Hunt a Diatryma and escape",
    trigger = EasyHunt(4)
)

achievement(
    title = "Irish Elk", points = 5,
    description = "Hunt a Megaloceros and escape",
    trigger = EasyHunt(5)
)

achievement(
    title = "Sabre-Toothed Tiger", points = 5,
    description = "Hunt a Smilodon and escape",
    trigger = EasyHunt(6)
)

achievement(
    title = "Woolly Mammoth", points = 5,
    description = "Hunt a Mammoth and escape",
    trigger = EasyHunt(7)
)

achievement(
    title = "Prehistoric Bear", points = 5,
    description = "Hunt a Bear and escape",
    trigger = EasyHunt(8)
)

achievement(
    title = "Abominable Snowman", points = 10,
    description = "Hunt a Yeti and escape",
    trigger = EasyHunt(9)
)

achievement(
    title = "Thunder Beast", points = 5,
    description = "Hunt a Brontoteriy and escape [No Player Upgrades, No Laser Rifle]",
    trigger = EasyHunt(0) && OptionProtection() && weapon() != 6
)

achievement(
    title = "African Molepig", points = 5,
    description = "Hunt a Wild Boar and escape [No Player Upgrades, No Laser Rifle]",
    trigger = EasyHunt(1) && OptionProtection() && weapon() != 6
)

achievement(
    title = "Fearsome Dog", points = 10,
    description = "Hunt a Wolf and escape [No Player Upgrades, No Laser Rifle]",
    trigger = EasyHunt(2) && OptionProtection() && weapon() != 6
)

achievement(
    title = "Hollow-Tooth of Antiquity", points = 10,
    description = "Hunt a Wooly Rhinoceros and escape [No Player Upgrades, No Laser Rifle]",
    trigger = EasyHunt(3) && OptionProtection() && weapon() != 6
)

achievement(
    title = "Through a Hole", points = 10,
    description = "Hunt a Diatryma and escape [No Player Upgrades, No Laser Rifle]",
    trigger = EasyHunt(4) && OptionProtection() && weapon() != 6
)

achievement(
    title = "Giant Horn", points = 10,
    description = "Hunt a Megaloceros and escape [No Player Upgrades, No Laser Rifle]",
    trigger = EasyHunt(5) && OptionProtection() && weapon() != 6
)

achievement(
    title = "Double-Edged-Knife-Tooth Who Devastates", points = 10,
    description = "Hunt a Smilodon and escape [No Player Upgrades, No Laser Rifle]",
    trigger = EasyHunt(6) && OptionProtection() && weapon() != 6
)

achievement(
    title = "First-Born Behemoth", points = 10,
    description = "Hunt a Mammoth and escape [No Player Upgrades, No Laser Rifle]",
    trigger = EasyHunt(7) && OptionProtection() && weapon() != 6
)

achievement(
    title = "Cave Bear", points = 10,
    description = "Hunt a Bear and escape [No Player Upgrades, No Laser Rifle]",
    trigger = EasyHunt(8) && OptionProtection() && weapon() != 6
)

achievement(
    title = "Rocky Bear", points = 25,
    description = "Hunt a Yeti and escape [No Player Upgrades, No Laser Rifle]",
    trigger = EasyHunt(9) && OptionProtection() && weapon() != 6
)

achievement(
    title = "Bicorned Ungulate", points = 10,
    description = "Hunt 10 Brontoteriys on Mcrath Island and escape [No Laser Rifle]",
    trigger = MultipleOnMap(0, 0, 10) && weapon() != 6
)

achievement(
    title = "Boaring Hunt", points = 10,
    description = "Hunt 5 Wild Boars on Ravaren's Bridge and escape [No Laser Rifle]",
    trigger = MultipleOnMap(1, 1, 5) && weapon() != 6
)

achievement(
    title = "Misspelled Rhino", points = 10,
    description = "Hunt 5 Wooly Rhinoceroses on Ring of Infernus and escape [No Laser Rifle]",
    trigger = MultipleOnMap(3, 2, 5) && weapon() != 6
)

achievement(
    title = "Deer Meat for Dinner", points = 10,
    description = "Hunt 5 Megaloceroses on Dry Nodus Lake and escape [No Laser Rifle]",
    trigger = MultipleOnMap(5, 3, 5) && weapon() != 6
)

achievement(
    title = "King of the Ice Age Winter", points = 10,
    description = "Hunt 3 Mammoths on The Giant's Boot and escape [No Laser Rifle]",
    trigger = MultipleOnMap(7, 4, 3) && weapon() != 6
)

achievement(
    title = "Hunter of the Pack", points = 10,
    description = "Hunt 5 Wolves on Mcrath Island and escape [No Laser Rifle]",
    trigger = MultipleOnMap(2, 0, 5) && weapon() != 6
)

achievement(
    title = "The Insatiable Nut-Eater", points = 10,
    description = "Hunt 5 Diatrymas on Ravaren's Bridge and escape [No Laser Rifle]",
    trigger = MultipleOnMap(4, 1, 5) && weapon() != 6
)

achievement(
    title = "Happy Tiger Hunt", points = 25,
    description = "Hunt 5 Smilodons on Ring of Infernus and escape [No Laser Rifle]",
    trigger = MultipleOnMap(6, 2, 5) && weapon() != 6
)

achievement(
    title = "Why Are You Running?!", points = 25,
    description = "Hunt 4 Bears on Dry Nodus Lake and escape [No Laser Rifle]",
    trigger = MultipleOnMap(8, 3, 4) && weapon() != 6
)

achievement(
    title = "A Boot for 4 Big Feet", points = 25,
    description = "Hunt 2 Yetis on The Giant's Boot and escape [No Laser Rifle]",
    trigger = MultipleOnMap(9, 4, 2) && weapon() != 6
)

achievement(
    title = "Starting Weapon", points = 10,
    description = "Hunt 5 carnivores using the Pistol and escape [No McRath Island]",
    trigger = CarnivoreWeapon(0, 5)
)

achievement(
    title = "I Call Shotgun", points = 10,
    description = "Hunt 5 carnivores using the Shotgun and escape [No McRath Island]",
    trigger = CarnivoreWeapon(1, 5)
)

achievement(
    title = "Twice As Deadly", points = 5,
    description = "Hunt 5 carnivores using the DB Shotgun and escape [No McRath Island]",
    trigger = CarnivoreWeapon(2, 5)
)

achievement(
    title = "Silent Assassin", points = 10,
    description = "Hunt 5 carnivores using the X-Bow and escape [No McRath Island]",
    trigger = CarnivoreWeapon(3, 5)
)

achievement(
    title = "Powerful Upgrade", points = 10,
    description = "Hunt 5 carnivores using the Rifle and escape [No McRath Island]",
    trigger = CarnivoreWeapon(4, 5)
)

achievement(
    title = "If Only There Were No Fog", points = 5,
    description = "Hunt 5 carnivores using the Sniper Rifle and escape [No McRath Island]",
    trigger = CarnivoreWeapon(5, 5)
)

achievement(
    title = "Cheat Weapon", points = 5,
    description = "Hunt 5 carnivores using the Laser Rifle and escape [No McRath Island]",
    trigger = CarnivoreWeapon(6, 5)
)

achievement(
    title = "Most Dangerous Game", points = 50,
    description = "Hunt a Yeti using the Pistol and escape [No Player Upgrades]",
    trigger = AnimalWeapon(9, 0) && OptionProtection()
)

leaderboard(
    id = 111000008, title = "High Score Hunter",
    description = "Earn the most score in a successful hunt",
    start  = gameState() > 7 && money() > prev(money()),
    cancel = always_false(),
    submit = always_true(),
    value = measured(scoreEarned()),
    format = "VALUE"
)

leaderboard(
    id = 111000009, title = "High Score - Brontoteriy",
    description = "Highest score earned from a single Brontoteriy",
    start  = gameState() == 7 && scoreEarned() > prev(scoreEarned()) && selectedAnimal() == 0,
    cancel = always_false(),
    submit = always_true(),
    value = measured((scoreEarned() - prev(scoreEarned()))),
    format = "VALUE"
)

leaderboard(
    id = 111000010, title = "High Score - Boar",
    description = "Highest score earned from a single Wild Boar",
    start  = gameState() == 7 && scoreEarned() > prev(scoreEarned()) && selectedAnimal() == 1,
    cancel = always_false(),
    submit = always_true(),
    value = measured((scoreEarned() - prev(scoreEarned()))),
    format = "VALUE"
)

leaderboard(
    id = 111000011, title = "High Score - Wolf",
    description = "Highest score earned from a single Wolf",
    start  = gameState() == 7 && scoreEarned() > prev(scoreEarned()) && selectedAnimal() == 2,
    cancel = always_false(),
    submit = always_true(),
    value = measured((scoreEarned() - prev(scoreEarned()))),
    format = "VALUE"
)

leaderboard(
    id = 111000012, title = "High Score - Wooly Rhinoceros",
    description = "Highest score earned from a single Wooly Rhinoceros",
    start  = gameState() == 7 && scoreEarned() > prev(scoreEarned()) && selectedAnimal() == 3,
    cancel = always_false(),
    submit = always_true(),
    value = measured((scoreEarned() - prev(scoreEarned()))),
    format = "VALUE"
)

leaderboard(
    id = 111000013, title = "High Score - Diatryma",
    description = "Highest score earned from a single Diatryma",
    start  = gameState() == 7 && scoreEarned() > prev(scoreEarned()) && selectedAnimal() == 4,
    cancel = always_false(),
    submit = always_true(),
    value = measured((scoreEarned() - prev(scoreEarned()))),
    format = "VALUE"
)

leaderboard(
    id = 111000014, title = "High Score - Megaloceros",
    description = "Highest score earned from a single Megaloceros",
    start  = gameState() == 7 && scoreEarned() > prev(scoreEarned()) && selectedAnimal() == 5,
    cancel = always_false(),
    submit = always_true(),
    value = measured((scoreEarned() - prev(scoreEarned()))),
    format = "VALUE"
)

leaderboard(
    id = 111000015, title = "High Score - Smilodon",
    description = "Highest score earned from a single Smilodon",
    start  = gameState() == 7 && scoreEarned() > prev(scoreEarned()) && selectedAnimal() == 6,
    cancel = always_false(),
    submit = always_true(),
    value = measured((scoreEarned() - prev(scoreEarned()))),
    format = "VALUE"
)

leaderboard(
    id = 111000016, title = "High Score - Mammoth",
    description = "Highest score earned from a single Mammoth",
    start  = gameState() == 7 && scoreEarned() > prev(scoreEarned()) && selectedAnimal() == 7,
    cancel = always_false(),
    submit = always_true(),
    value = measured((scoreEarned() - prev(scoreEarned()))),
    format = "VALUE"
)

leaderboard(
    id = 111000017, title = "High Score - Bear",
    description = "Highest score earned from a single Bear",
    start  = gameState() == 7 && scoreEarned() > prev(scoreEarned()) && selectedAnimal() == 8,
    cancel = always_false(),
    submit = always_true(),
    value = measured((scoreEarned() - prev(scoreEarned()))),
    format = "VALUE"
)

leaderboard(
    id = 111000018, title = "High Score - Yeti",
    description = "Highest score earned from a single Yeti",
    start  = gameState() == 7 && scoreEarned() > prev(scoreEarned()) && selectedAnimal() == 9,
    cancel = always_false(),
    submit = always_true(),
    value = measured((scoreEarned() - prev(scoreEarned()))),
    format = "VALUE"
)