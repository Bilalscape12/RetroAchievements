// Shrek: Swamp Kart Speedway [Subset - 36 Endings]
// #ID = 25605

function Beat(firstMem) {
    return bitcount(firstMem) == 4 && bitcount(firstMem+1) == 4 && bitcount(firstMem+2) == 4 && prev(bitcount(firstMem+3))
               == 3 && __ornext(bitcount(firstMem+3) == 4 || bitcount(firstMem+3) == 5)
}

achievement(
    title = "Shrek - Easy", points = 5,
    description = "Complete the game with Shrek on Easy",
    trigger = Beat(0x02FBA0)
)

achievement(
    title = "Shrek - Medium", points = 5,
    description = "Complete the game with Shrek on Medium",
    trigger = Beat(0x02FBA4)
)

achievement(
    title = "Shrek - Hard", points = 10,
    description = "Complete the game with Shrek on Hard",
    trigger = Beat(0x02FBA8)
)

achievement(
    title = "Fiona - Easy", points = 5,
    description = "Complete the game with Fiona on Easy",
    trigger = Beat(0x02FBAC)
)

achievement(
    title = "Fiona - Medium", points = 5,
    description = "Complete the game with Fiona on Medium",
    trigger = Beat(0x02FBB0)
)

achievement(
    title = "Fiona - Hard", points = 10,
    description = "Complete the game with Fiona on Hard",
    trigger = Beat(0x02FBB4)
)

achievement(
    title = "Three Blind Mice - Easy", points = 5,
    description = "Complete the game with the Three Blind Mice on Easy",
    trigger = Beat(0x02FBB8)
)

achievement(
    title = "Three Blind Mice - Medium", points = 5,
    description = "Complete the game with the Three Blind Mice on Medium",
    trigger = Beat(0x02FBBC)
)

achievement(
    title = "Three Blind Mice - Hard", points = 10,
    description = "Complete the game with the Three Blind Mice on Hard",
    trigger = Beat(0x02FBC0)
)

achievement(
    title = "Goldilocks - Easy", points = 5,
    description = "Complete the game with Goldilocks on Easy",
    trigger = Beat(0x02FBC4)
)

achievement(
    title = "Goldilocks - Medium", points = 5,
    description = "Complete the game with Goldilocks on Medium",
    trigger = Beat(0x02FBC8)
)

achievement(
    title = "Goldilocks - Hard", points = 10,
    description = "Complete the game with Goldilocks on Hard",
    trigger = Beat(0x02FBCC)
)

achievement(
    title = "Dwarves - Easy", points = 5,
    description = "Complete the game with the Dwarves on Easy",
    trigger = Beat(0x02FBD0)
)

achievement(
    title = "Dwarves - Medium", points = 5,
    description = "Complete the game with the Dwarves on Medium",
    trigger = Beat(0x02FBD4)
)

achievement(
    title = "Dwarves - Hard", points = 10,
    description = "Complete the game with the Dwarves on Hard",
    trigger = Beat(0x02FBD8)
)

achievement(
    title = "Thelonius - Easy", points = 5,
    description = "Complete the game with Thelonius on Easy",
    trigger = Beat(0x02FBDC)
)

achievement(
    title = "Thelonius - Medium", points = 5,
    description = "Complete the game with Thelonius on Medium",
    trigger = Beat(0x02FBE0)
)

achievement(
    title = "Thelonius - Hard", points = 10,
    description = "Complete the game with Thelonius on Hard",
    trigger = Beat(0x02FBE4)
)

achievement(
    title = "Three Little Pigs - Easy", points = 5,
    description = "Complete the game with the Three Little Pigs on Easy",
    trigger = Beat(0x02FBE8)
)

achievement(
    title = "Three Little Pigs - Medium", points = 5,
    description = "Complete the game with the Three Little Pigs on Medium",
    trigger = Beat(0x02FBEC)
)

achievement(
    title = "Three Little Pigs - Hard", points = 10,
    description = "Complete the game with the Three Little Pigs on Hard",
    trigger = Beat(0x02FBF0)
)

achievement(
    title = "Gingerbread Man - Easy", points = 5,
    description = "Complete the game with Gingerbread Man on Easy",
    trigger = Beat(0x02FBF4)
)

achievement(
    title = "Gingerbread Man - Medium", points = 5,
    description = "Complete the game with Gingerbread Man on Medium",
    trigger = Beat(0x02FBF8)
)

achievement(
    title = "Gingerbread Man - Hard", points = 10,
    description = "Complete the game with Gingerbread Man on Hard",
    trigger = Beat(0x02FBFC)
)

achievement(
    title = "Donkey - Easy", points = 5,
    description = "Complete the game with Donkey on Easy",
    trigger = Beat(0x02FC00)
)

achievement(
    title = "Donkey - Medium", points = 5,
    description = "Complete the game with Donkey on Medium",
    trigger = Beat(0x02FC04)
)

achievement(
    title = "Donkey - Hard", points = 10,
    description = "Complete the game with Donkey on Hard",
    trigger = Beat(0x02FC08)
)

achievement(
    title = "Big Bad Wolf - Easy", points = 5,
    description = "Complete the game with the Big Bad Wolf on Easy",
    trigger = Beat(0x02FC0C)
)

achievement(
    title = "Big Bad Wolf - Medium", points = 5,
    description = "Complete the game with the Big Bad Wolf on Medium",
    trigger = Beat(0x02FC10)
)

achievement(
    title = "Big Bad Wolf - Hard", points = 10,
    description = "Complete the game with the Big Bad Wolf on Hard",
    trigger = Beat(0x02FC14)
)

achievement(
    title = "Monsieur Hood - Easy", points = 5,
    description = "Complete the game with Monsieur Hood on Easy",
    trigger = Beat(0x02FC18)
)

achievement(
    title = "Monsieur Hood - Medium", points = 5,
    description = "Complete the game with Monsieur Hood on Medium",
    trigger = Beat(0x02FC1C)
)

achievement(
    title = "Monsieur Hood - Hard", points = 10,
    description = "Complete the game with Monsieur Hood on Hard",
    trigger = Beat(0x02FC20)
)

achievement(
    title = "Lord Farquaad - Easy", points = 5,
    description = "Complete the game with Lord Farquaad on Easy",
    trigger = Beat(0x02FC24)
)

achievement(
    title = "Lord Farquaad - Medium", points = 5,
    description = "Complete the game with Lord Farquaad on Medium",
    trigger = Beat(0x02FC28)
)

achievement(
    title = "Lord Farquaad - Hard", points = 10,
    description = "Complete the game with Lord Farquaad on Hard",
    trigger = Beat(0x02FC2C)
)