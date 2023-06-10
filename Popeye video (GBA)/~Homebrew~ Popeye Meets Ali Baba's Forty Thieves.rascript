// ~Homebrew~ Popeye Meets Ali Baba's Forty Thieves
// #ID = 19895

// $7E9C: Frame Counter [16-bit]
function frameCounter() => word(0x007E9C)

// $7EA0: Controller input [8-bit]
//        up = Bit6
//        left = Bit5
//        right = Bit4
//        down = Bit7
//        A (fastforward) = Bit0
//        B (restart) = Bit1
function fastForward() => bit0(0x007EA0)
function restart() => bit1(0x007EA0)
function faceInput() => byte(0x007EA0)

// $7EA1: LR input [8-bit]
//        L = 1, Bit1
//        R = 2, Bit0
function triggers() => byte(0x007EA1)

achievement(
    title = "Quiz 1", points = 1,
    description = "Correctly answer Quiz 1",
    id = 323200, badge = "360931", published = "5/30/2023 1:53:45 AM", modified = "6/4/2023 3:33:30 AM",
    trigger = frameCounter() >= 904 && frameCounter() <= 979 && trigger_when(faceInput() == 239) && 
              unless(once((faceInput() == 223 || faceInput() == 127 || faceInput() == 191) && frameCounter() >=
               904 && frameCounter() <= 979)) && unless(repeated(10, fastForward() == 0)) &&
              (always_false() || (never(restart() == 0) && never(frameCounter() == 1)))
)

achievement(
    title = "Quiz 2", points = 1,
    description = "Correctly answer Quiz 2",
    id = 323201, badge = "360932", published = "5/30/2023 1:53:45 AM", modified = "5/30/2023 10:45:24 PM",
    trigger = frameCounter() >= 2210 && frameCounter() <= 2285 && trigger_when(faceInput() == 223) && 
              unless(once((faceInput() == 191 || faceInput() == 127 || faceInput() == 239) && frameCounter() >=
               2210 && frameCounter() <= 2285)) && unless(repeated(10, fastForward() == 0)) &&
              (always_false() || (never(restart() == 0) && never(frameCounter() == 1)))
)

achievement(
    title = "Quiz 3", points = 1,
    description = "Correctly answer Quiz 3",
    id = 323202, badge = "360933", published = "5/30/2023 1:53:46 AM", modified = "5/30/2023 10:45:25 PM",
    trigger = frameCounter() >= 3670 && frameCounter() <= 3745 && trigger_when(faceInput() == 223) && 
              unless(once((faceInput() == 191 || faceInput() == 127 || faceInput() == 239) && frameCounter() >=
               3670 && frameCounter() <= 3745)) && unless(repeated(10, fastForward() == 0)) &&
              (always_false() || (never(restart() == 0) && never(frameCounter() == 1)))
)

achievement(
    title = "Quiz 4", points = 1,
    description = "Correctly answer Quiz 4",
    id = 323203, badge = "360934", published = "5/30/2023 1:53:46 AM", modified = "5/30/2023 10:45:25 PM",
    trigger = frameCounter() >= 5192 && frameCounter() <= 5267 && trigger_when(faceInput() == 239) && 
              unless(once((faceInput() == 223 || faceInput() == 127 || faceInput() == 191) && frameCounter() >=
               5192 && frameCounter() <= 5267)) && unless(repeated(10, fastForward() == 0)) &&
              (always_false() || (never(restart() == 0) && never(frameCounter() == 1)))
)

achievement(
    title = "Quiz 5", points = 1,
    description = "Correctly answer Quiz 5",
    id = 323204, badge = "360935", published = "5/30/2023 1:53:46 AM", modified = "5/30/2023 10:45:26 PM",
    trigger = frameCounter() >= 6800 && frameCounter() <= 6875 && trigger_when(faceInput() == 127) && 
              unless(once((faceInput() == 223 || faceInput() == 191 || faceInput() == 239) && frameCounter() >=
               6800 && frameCounter() <= 6875)) && unless(repeated(10, fastForward() == 0)) &&
              (always_false() || (never(restart() == 0) && never(frameCounter() == 1)))
)

achievement(
    title = "Quiz 6", points = 1,
    description = "Correctly answer Quiz 6",
    id = 323205, badge = "360936", published = "5/30/2023 1:53:46 AM", modified = "5/30/2023 10:45:27 PM",
    trigger = (frameCounter() >= 8141 || frameCounter() <= 0) && trigger_when(faceInput() == 127) && 
              unless(once(((faceInput() == 223 || faceInput() == 191 || faceInput() == 239) && frameCounter()
               >= 8141) || frameCounter() <= 0)) && unless(repeated(10, fastForward() == 0)) &&
              (always_false() || (never(restart() == 0) && never(frameCounter() == 1)))
)

achievement(
    title = "Spinach Strength", points = 3,
    description = "Defeat the third wave of thieves (Alternate between L and R to punch, time your punches and begin with L)",
    id = 323206, badge = "360937", published = "5/30/2023 1:53:47 AM", modified = "5/31/2023 1:51:03 AM",
    trigger = frameCounter() >= 7679 && frameCounter() <= 7723 && trigger_when(once((frameCounter() == 7703 ||
               frameCounter() == 7702) && triggers() == 1)) && unless(once(frameCounter() == 7702 && triggers()
               == 2)) && trigger_when(once((frameCounter() == 7706 || frameCounter() == 7705) && triggers() == 2)) && 
              unless(once(frameCounter() == 7705 && triggers() == 1)) && trigger_when(once((frameCounter() == 7708
               || frameCounter() == 7707) && triggers() == 1)) && unless(once(frameCounter() == 7707 &&
               triggers() == 2)) && trigger_when(once((frameCounter() == 7710 || frameCounter() == 7709) &&
               triggers() == 2)) && unless(once(frameCounter() == 7709 && triggers() == 1)) && 
              trigger_when(once((frameCounter() == 7713 || frameCounter() == 7712) && triggers() == 1)) && 
              unless(once(frameCounter() == 7712 && triggers() == 2)) && trigger_when(once((frameCounter() == 7715
               || frameCounter() == 7714) && triggers() == 2)) && unless(once(frameCounter() == 7714 &&
               triggers() == 1)) && trigger_when(once((frameCounter() == 7717 || frameCounter() == 7716) &&
               triggers() == 1)) && unless(once(frameCounter() == 7716 && triggers() == 2)) && 
              trigger_when(once((frameCounter() == 7719 || frameCounter() == 7718) && triggers() == 2)) && 
              unless(once(frameCounter() == 7718 && triggers() == 1)) && unless(repeated(10, fastForward() == 0)) &&
              (always_false() || (never(restart() == 0) && never(frameCounter() == 1)))
)

leaderboard(
    id = 65367, title = "Quiz 1",
    description = "You have 10 seconds",
    start  = frameCounter() == 904,
    cancel = (faceInput() != 255 || frameCounter() == 979),
    submit = always_false(),
    value = measured(tally(0, repeated(600, always_true()), always_false())),
    format = "FRAMES"
)

leaderboard(
    id = 66439, title = "Quiz 2",
    description = "You have 10 seconds",
    start  = frameCounter() == 2210,
    cancel = (faceInput() != 255 || frameCounter() == 2285),
    submit = always_false(),
    value = measured(tally(0, repeated(600, always_true()), always_false())),
    format = "FRAMES"
)

leaderboard(
    id = 66440, title = "Quiz 3",
    description = "You have 10 seconds",
    start  = frameCounter() == 3670,
    cancel = (faceInput() != 255 || frameCounter() == 3745),
    submit = always_false(),
    value = measured(tally(0, repeated(600, always_true()), always_false())),
    format = "FRAMES"
)

leaderboard(
    id = 66441, title = "Quiz 4",
    description = "You have 10 seconds",
    start  = frameCounter() == 5192,
    cancel = (faceInput() != 255 || frameCounter() == 5267),
    submit = always_false(),
    value = measured(tally(0, repeated(600, always_true()), always_false())),
    format = "FRAMES"
)

leaderboard(
    id = 66442, title = "Quiz 5",
    description = "You have 10 seconds",
    start  = frameCounter() == 6800,
    cancel = (faceInput() != 255 || frameCounter() == 6875),
    submit = always_false(),
    value = measured(tally(0, repeated(600, always_true()), always_false())),
    format = "FRAMES"
)

leaderboard(
    id = 66443, title = "Quiz 6",
    description = "You have 10 seconds",
    start  = frameCounter() == 8141,
    cancel = (faceInput() != 255 || frameCounter() == 0),
    submit = always_false(),
    value = measured(tally(0, repeated(600, always_true()), always_false())),
    format = "FRAMES"
)

rich_presence_display("Watching pixels that vaguely resemble Popeye")
