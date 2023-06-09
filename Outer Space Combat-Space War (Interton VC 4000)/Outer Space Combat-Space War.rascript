// Outer Space Combat | Space War | Space Attack
// #ID = 21650

// $0553: Score [8-bit BCD]
function score() => byte(0x000553)

// $0554: Timer [8-bit]
function timer() => byte(0x000554)

// $0567: Game [8-bit]
//        01=modes 1/2
//        02=modes 3/4
//        03=modes 5/6
//        04=modes 7/8
function modeType() => byte(0x000567)

// $0568: Game speed [8-bit]
//        00=modes 1/3/5/7
//        01=modes 2/4/6/8
function modeSpeed() => byte(0x000568)

// $056D: Ingame [8-bit]
//        00=menu
//        01=ingame
function ingame() => byte(0x00056D)

function wrapping(hundred)
{
    measured((hundred * 100 + bcd(score())), when=repeated(hundred, ingame() == 1 && prev(score())
                   >= 144 && score() <= 16))
}

achievement(
    title = "Enemy Attack", points = 5,
    description = "Win a game of Enemy Attack with at least 130 points",
    id = 325345, badge = "363063", published = "6/6/2023 10:24:08 AM", modified = "6/6/2023 10:24:08 AM",
    trigger = modeType() == 1 && once(ingame() == 1 && prev(score()) >= 144 && score() <= 16) && 
              (ingame() == 1 && bcd(score()) >= 30) && never(timer() == 153)
)

achievement(
    title = "Enemy Attack Master", points = 5,
    description = "Win a game of Enemy Attack with at least 120 points on Mode 2",
    id = 325346, badge = "363064", published = "6/6/2023 10:24:08 AM", modified = "6/6/2023 10:24:08 AM",
    trigger = modeType() == 1 && modeSpeed() == 1 && once(ingame() == 1 && prev(score()) >= 144 &&
               score() <= 16) && (ingame() == 1 && bcd(score()) >= 20) && never(timer() ==
               153)
)

achievement(
    title = "Space Docking", points = 2,
    description = "Win a game of Space Docking with at least 42 points",
    id = 325347, badge = "363065", published = "6/6/2023 10:24:15 AM", modified = "6/6/2023 10:24:15 AM",
    trigger = modeType() == 2 && (ingame() == 1 && bcd(score()) >= 42)
)

achievement(
    title = "Space Docking Master", points = 3,
    description = "Win a game of Space Docking with at least 55 points on Mode 4",
    id = 325348, badge = "363066", published = "6/6/2023 10:24:16 AM", modified = "6/6/2023 10:24:16 AM",
    trigger = modeType() == 2 && modeSpeed() == 1 && (ingame() == 1 && bcd(score()) >= 55)
)

achievement(
    title = "Determined Space Docking", points = 3,
    description = "Earn 21 points in Space Docking without crashing",
    id = 325349, badge = "363067", published = "6/6/2023 10:24:20 AM", modified = "6/6/2023 10:24:20 AM",
    trigger = modeType() == 2 && trigger_when((ingame() == 1 && bcd(score()) >= 21)) && 
              disable_when(ingame() == 1 && score() < prev(score()), until=timer() == 153)
)

achievement(
    title = "Duel", points = 2,
    description = "Win a game of Duel with at least 260 points",
    id = 325350, badge = "363068", published = "6/6/2023 10:24:27 AM", modified = "6/6/2023 10:24:27 AM",
    trigger = modeType() == 3 && repeated(2, ingame() == 1 && prev(score()) >= 144 && score() <=
               16) && (ingame() == 1 && bcd(score()) >= 60) && never(timer() == 153)
)

achievement(
    title = "Duel Master", points = 3,
    description = "Win a game of Duel with at least 300 points on Mode 6",
    id = 325351, badge = "363069", published = "6/6/2023 10:24:27 AM", modified = "6/6/2023 10:24:27 AM",
    trigger = modeType() == 3 && modeSpeed() == 1 && repeated(3, ingame() == 1 && prev(score()) >=
               144 && score() <= 16) && ingame() == 1 && never(timer() == 153)
)

achievement(
    title = "Double Attack", points = 5,
    description = "Win a game of Double Attack with at least 94 points",
    id = 325352, badge = "363070", published = "6/6/2023 10:24:32 AM", modified = "6/6/2023 10:24:32 AM",
    trigger = modeType() == 4 && (prev(ingame()) == 1 && ingame() == 0 && bcd(score()) >= 94)
)

achievement(
    title = "Double Attack Master", points = 10,
    description = "Win a game of Double Attack with at least 95 points",
    id = 325353, badge = "363071", published = "6/6/2023 10:24:32 AM", modified = "6/6/2023 10:24:32 AM",
    trigger = modeType() == 4 && (prev(ingame()) == 1 && ingame() == 0 && bcd(score()) >= 95)
)

leaderboard(
    id = 66923, title = "Enemy Attack",
    description = "Get the highest score",
    start  = timer() == 153 && modeType() == 1 && ingame() == 1,
    cancel = always_false(),
    submit = prev(ingame()) == 1 && ingame() == 0,
    value = max_of(
                measured(always_false()),
                measured(bcd(score())),
                wrapping(1),
                wrapping(2),
                wrapping(3),
                wrapping(4),
                wrapping(5)
            ),
    format = "VALUE"
)

leaderboard(
    id = 66924, title = "Space Docking",
    description = "Get the highest score",
    start  = timer() == 153 && modeType() == 2 && ingame() == 1,
    cancel = always_false(),
    submit = prev(ingame()) == 1 && ingame() == 0,
    value = measured(bcd(score())),
    format = "VALUE"
)

leaderboard(
    id = 66925, title = "Duel",
    description = "Get the highest score",
    start  = timer() == 153 && modeType() == 3 && ingame() == 1,
    cancel = always_false(),
    submit = prev(ingame()) == 1 && ingame() == 0,
    value = max_of(
                measured(always_false()),
                measured(bcd(score())),
                wrapping(1),
                wrapping(2),
                wrapping(3),
                wrapping(4),
                wrapping(5)
            ),
    format = "VALUE"
)

leaderboard(
    id = 66926, title = "Double Attack",
    description = "Get the highest score",
    start  = timer() == 153 && modeType() == 4 && ingame() == 1,
    cancel = always_false(),
    submit = prev(ingame()) == 1 && ingame() == 0,
    value = measured(bcd(score())),
    format = "VALUE"
)

rich_presence_conditional_display(ingame() == 0, "In menu")

rich_presence_conditional_display(ingame() == 1 && modeType() == 1 && modeSpeed() == 0, "Mode 1 | {0} score | {1} seconds left",
    rich_presence_value("Number", bcd(score())),
    rich_presence_value("Number", bcd(timer()))
)

rich_presence_conditional_display(ingame() == 1 && modeType() == 1 && modeSpeed() == 1, "Mode 2 | {0} score | {1} seconds left",
    rich_presence_value("Number", bcd(score())),
    rich_presence_value("Number", bcd(timer()))
)

rich_presence_conditional_display(ingame() == 1 && modeType() == 2 && modeSpeed() == 0, "Mode 3 | {0} score | {1} seconds left",
    rich_presence_value("Number", bcd(score())),
    rich_presence_value("Number", bcd(timer()))
)

rich_presence_conditional_display(ingame() == 1 && modeType() == 2 && modeSpeed() == 1, "Mode 4 | {0} score | {1} seconds left",
    rich_presence_value("Number", bcd(score())),
    rich_presence_value("Number", bcd(timer()))
)

rich_presence_conditional_display(ingame() == 1 && modeType() == 3 && modeSpeed() == 0, "Mode 5 | {0} score | {1} seconds left",
    rich_presence_value("Number", bcd(score())),
    rich_presence_value("Number", bcd(timer()))
)

rich_presence_conditional_display(ingame() == 1 && modeType() == 3 && modeSpeed() == 1, "Mode 6 | {0} score | {1} seconds left",
    rich_presence_value("Number", bcd(score())),
    rich_presence_value("Number", bcd(timer()))
)

rich_presence_conditional_display(ingame() == 1 && modeType() == 4 && modeSpeed() == 0, "Mode 7 | {0} seconds left",
    rich_presence_value("Number", bcd(timer()))
)

rich_presence_conditional_display(ingame() == 1 && modeType() == 4 && modeSpeed() == 1, "Mode 8 | {0} seconds left",
    rich_presence_value("Number", bcd(timer()))
)

rich_presence_display("Outer Space Combat!")
