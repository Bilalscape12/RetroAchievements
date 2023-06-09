// Beany Bopper
// #ID = 17445

// $0006: Character state [8-bit]
//        0xfd = Normal
//        0xfe = Dead or picking up an object
function characterState() => byte(0x000006)

// $0037: Level [8-bit BCD]
//        Starts at 0x00
//        "Secret" level 0x12 at 99k score
function level() => byte(0x000037)

// $003B: 0x80/b7 = Orange eyes can spawn [8-bit FLAG]
function orangeEyesCanSpawn() => bit7(0x00003B)

// $0043: death timer.  FF when not dead and counts down from 0F to 0 when you die
function deathTimer() => byte(0x000043)

// $0044: lives
//        FF = last life
//        02 = default starting lives
function lives() => byte(0x000044)

LivesLookup = {
    255: "💔",
    0: "❤️",
    1: "❤️❤️",
    2: "❤️❤️❤️",
}

// $0048: Progress to 100k score [8-bit BCD]
//        0x48 = Last step before score resets to 0
function progressTo100kScore() => byte(0x000048)

// $0049: Type of objects on screen [8-bit]
//        The game only renders one object/enemy at a time,
//        this address quickly alternates to simulate having two objects.
//        0x4c = Meany Beany
function objectType() => byte(0x000049)

// $004B: score (16 bit I think)
function score() => word(0x00004B)

// $004E: Mode select [8-bit FLAG]
//        0x80/b7 for option 2
function modeSelect() => bit7(0x00004E)

ModeLookup = {
    0: "[Option 1]",
    1: "[Option 2]",
}

// $0051: 0x80/b7 for title screen/main menu [8-bit FLAG]
function titleScreen() => bit7(0x000051)

// $005E: Reset [8-bit FLAG]
//        0x80/b7 during reset
function reset() => bit7(0x00005E)

function wrappingAlt(hundredThousands)
{
    measured((hundredThousands * 100000 + bcd(score()) * 10), when=repeated(hundredThousands,
                   byte(0x00004C) < prev(byte(0x00004C)) && never(reset() == 1)))
}

achievement(
    title = "Baby Bopper", points = 1,
    description = "Score 3,000 points.",
    id = 273720, badge = "302816", published = "12/19/2022 11:13:34 AM", modified = "1/6/2023 7:03:44 AM",
    trigger = titleScreen() == 0 && bcd(score()) >= 300
)

achievement(
    title = "Burly Bopper", points = 1,
    description = "Gain a life.",
    id = 273721, badge = "302817", published = "12/19/2022 11:13:34 AM", modified = "1/7/2023 1:19:09 AM",
    trigger = tally(1, 
                  (prev(lives()) == 255 && lives() == 0), 
              lives() > prev(lives())) && orangeEyesCanSpawn() == 1 && never(lives() == 2)
)

achievement(
    title = "Beginner Bopper", points = 2,
    description = "Score 10,000 points.",
    id = 273724, badge = "302820", published = "12/19/2022 11:13:35 AM", modified = "1/6/2023 7:03:44 AM",
    trigger = titleScreen() == 0 && bcd(score()) >= 1000
)

achievement(
    title = "Bully Bopper", points = 5,
    description = "Score 20,000 points.",
    id = 273725, badge = "302821", published = "12/19/2022 11:13:36 AM", modified = "1/6/2023 7:03:45 AM",
    trigger = titleScreen() == 0 && bcd(score()) >= 2000
)

achievement(
    title = "Brawny Bopper", points = 10,
    description = "Score 25,000 points without losing a life.",
    id = 273722, badge = "302818", published = "12/19/2022 11:13:35 AM", modified = "1/6/2023 7:21:57 AM",
    trigger = once(bcd(score()) == 0) && trigger_when(bcd(score()) >= 2500) && never(lives() <
               prev(lives()))
)

achievement(
    title = "Better Bopper", points = 10,
    description = "Score 50,000 points.",
    id = 273726, badge = "302822", published = "12/19/2022 11:13:36 AM", modified = "1/6/2023 7:03:45 AM",
    trigger = titleScreen() == 0 && bcd(score()) >= 5000
)

achievement(
    title = "Brilliant Bopper", points = 25,
    description = "Score a total of 100,000 points in Option 1.",
    id = 273727, badge = "302823", published = "12/19/2022 11:13:36 AM", modified = "5/7/2023 4:56:31 AM",
    trigger = once(bcd(score()) == 0) && prev(progressTo100kScore()) == 72 && bcd(progressTo100kScore()) == 0 && 
              bcd(level()) == 12 && never(modeSelect() == 1)
)

achievement(
    title = "Brainy Bopper", points = 25,
    description = "Score a total of 100,000 points in Option 2.",
    id = 273728, badge = "302823", published = "12/19/2022 11:13:37 AM", modified = "5/7/2023 4:56:31 AM",
    trigger = once(bcd(score()) == 0) && prev(progressTo100kScore()) == 72 && bcd(progressTo100kScore()) == 0 && 
              bcd(level()) == 12 && never(modeSelect() == 0)
)

achievement(
    title = "Best Bopper", points = 50,
    description = "Score 150,000 points.",
    id = 315540, badge = "349436", published = "5/7/2023 4:56:08 AM", modified = "5/7/2023 4:56:23 AM",
    trigger = titleScreen() == 0 && bcd(level()) == 12 && bcd(score()) >= 5000 && bcd(score()) <=
               9500
)

achievement(
    title = "Busy Bopper", points = 5,
    description = "Collect 25 objects while keeping the screen clear of Meany Beanys.",
    id = 273723, badge = "302819", published = "12/19/2022 11:13:35 AM", modified = "1/6/2023 10:23:15 PM",
    trigger = measured(tally(25, 
                  deduct(repeated(5, always_true())), 
                  repeated(30, prev(characterState()) == 253 && characterState() == 254)
              )) && never(objectType() == 76)
)

achievement(
    title = "Blazing Bopper", points = 10,
    description = "Collect 50 objects while keeping the screen clear of Meany Beanys.",
    id = 273730, badge = "302825", published = "12/19/2022 11:13:37 AM", modified = "1/6/2023 10:23:19 PM",
    trigger = measured(tally(50, 
                  deduct(repeated(5, always_true())), 
                  repeated(55, prev(characterState()) == 253 && characterState() == 254)
              )) && never(objectType() == 76)
)

achievement(
    title = "VOID previously Best Bopper", points = 50,
    description = "Score 100,000 points.",
    id = 273729, badge = "302824", published = "12/19/2022 11:13:37 AM", modified = "5/7/2023 4:55:34 AM",
    trigger = prev(progressTo100kScore()) == 72 && bcd(progressTo100kScore()) == 0 && bcd(level()) == 12
)

leaderboard(
    id = 52903, title = "High Score",
    description = "Achieve the highest score. Submits on Game Over.",
    start  = bcd(score()) >= 2,
    cancel = titleScreen() == 1,
    submit = deathTimer() != 255 && lives() == 255,
    value = max_of(
                never(titleScreen() == 1) && never(reset() == 1) && never((bcd(level()) == 0 &&
                   bcd(progressTo100kScore()) == 0)) && measured(always_false()),
                measured(bcd(score()) * 10),
                wrappingAlt(1),
                wrappingAlt(2),
                wrappingAlt(3),
                wrappingAlt(4),
                wrappingAlt(5),
                wrappingAlt(6),
                wrappingAlt(7),
                wrappingAlt(8),
                wrappingAlt(9),
                wrappingAlt(10),
                wrappingAlt(11),
                wrappingAlt(12),
                wrappingAlt(13),
                wrappingAlt(14),
                wrappingAlt(15),
                wrappingAlt(16),
                wrappingAlt(17),
                wrappingAlt(18),
                wrappingAlt(19),
                wrappingAlt(20),
                wrappingAlt(21),
                wrappingAlt(22),
                wrappingAlt(23),
                wrappingAlt(24),
                wrappingAlt(25),
                wrappingAlt(26),
                wrappingAlt(27),
                wrappingAlt(28),
                wrappingAlt(29),
                wrappingAlt(30),
                wrappingAlt(31),
                wrappingAlt(32),
                wrappingAlt(33),
                wrappingAlt(34),
                wrappingAlt(35),
                wrappingAlt(36),
                wrappingAlt(37),
                wrappingAlt(38),
                wrappingAlt(39),
                wrappingAlt(40),
                wrappingAlt(41),
                wrappingAlt(42),
                wrappingAlt(43),
                wrappingAlt(44),
                wrappingAlt(45),
                wrappingAlt(46),
                wrappingAlt(47),
                wrappingAlt(48),
                wrappingAlt(49),
                wrappingAlt(50),
                wrappingAlt(51),
                wrappingAlt(52),
                wrappingAlt(53),
                wrappingAlt(54),
                wrappingAlt(55),
                wrappingAlt(56),
                wrappingAlt(57),
                wrappingAlt(58),
                wrappingAlt(59),
                wrappingAlt(60),
                wrappingAlt(61),
                wrappingAlt(62),
                wrappingAlt(63),
                wrappingAlt(64),
                wrappingAlt(65),
                wrappingAlt(66),
                wrappingAlt(67),
                wrappingAlt(68),
                wrappingAlt(69),
                wrappingAlt(70),
                wrappingAlt(71),
                wrappingAlt(72),
                wrappingAlt(73),
                wrappingAlt(74),
                wrappingAlt(75),
                wrappingAlt(76),
                wrappingAlt(77),
                wrappingAlt(78),
                wrappingAlt(79),
                wrappingAlt(80),
                wrappingAlt(81),
                wrappingAlt(82),
                wrappingAlt(83),
                wrappingAlt(84),
                wrappingAlt(85),
                wrappingAlt(86),
                wrappingAlt(87),
                wrappingAlt(88),
                wrappingAlt(89),
                wrappingAlt(90),
                wrappingAlt(91),
                wrappingAlt(92),
                wrappingAlt(93),
                wrappingAlt(94),
                wrappingAlt(95),
                wrappingAlt(96),
                wrappingAlt(97),
                wrappingAlt(98),
                wrappingAlt(99),
                wrappingAlt(100),
                wrappingAlt(101),
                wrappingAlt(102),
                wrappingAlt(103),
                wrappingAlt(104),
                wrappingAlt(105),
                wrappingAlt(106),
                wrappingAlt(107),
                wrappingAlt(108),
                wrappingAlt(109),
                wrappingAlt(110),
                wrappingAlt(111),
                wrappingAlt(112),
                wrappingAlt(113),
                wrappingAlt(114),
                wrappingAlt(115),
                wrappingAlt(116),
                wrappingAlt(117),
                wrappingAlt(118),
                wrappingAlt(119),
                wrappingAlt(120),
                wrappingAlt(121),
                wrappingAlt(122),
                wrappingAlt(123),
                wrappingAlt(124),
                wrappingAlt(125)
            ),
    format = "VALUE"
)

rich_presence_conditional_display(titleScreen() == 1, "Meany Beanys, meany Beanys, meany Beanys...")

rich_presence_display("{0} {1} {2}",
    rich_presence_lookup("Mode", modeSelect(), ModeLookup),
    rich_presence_lookup("Lives", lives(), LivesLookup),
    rich_presence_value("Number", bcd(score()) * 10)
)
