// Godzilla: Unleashed
// #ID = 34681

// $000000: Disc Serial [6 Bytes ASCII]
//          RGZE70 = US
//          RGZP70 = EU
//          
//          EU has a -0x6B0 offset behind the US hash
//          for all addresses from 0x003d6f08 (Profile) to 0x00432ac8 (P4 Respawns used)
function discSerial() => dword_be(0x000000)

// $3D660C: Ingame = 0x3d088889 [Float BE]
function ingame1() => byte(0x3D660C)

// $3D6698: Paused = 0x10 [32-bit BE]
function paused() => dword_be(0x3D6698)

// $3D669C: Ingame = 0x803e5780 [32-bit BE]
function ingame2() => dword_be(0x3D669C)

// $3D6F08: Profile [32-bit BE]
//          0 indexed
//          All save file data is accessed through index pointers
function profile(offset) => dword_be(0x3D6F08 + offset)

// $3D7250: Profile 1 exists = 0x01000000 [32-bit BE]
function profileExists(offset) => dword_be(profile(offset) * 7448 + 0x3D7250 + offset)

// $3D7254: Profile 1 Story 1 exists = 0x01000000 [32-bit BE]
function storyExists(offset) => dword_be(0x3D7254 + offset + (profile(offset) * 7448 + 0 + ((dword_be(0x3D8818 + offset + (profile(offset) * 7448)) * 796))))

// $3D72D0: Profile 1 Story 1 Day [32-bit BE]
//          0 indexed
//          Updates immediately upon stage completion
function storyDay(offset) => dword_be(0x3D72D0 + offset + (profile(offset) * 7448 + 0 + ((dword_be(0x3D8818 + offset + (profile(offset) * 7448)) * 796))))

// $3D72D4: Profile 1 Story 1 Faction [32-bit BE]
function storyFaction(offset) => dword_be(0x3D72D4 + offset + (profile(offset) * 7448 + 0 + ((dword_be(0x3D8818 + offset + (profile(offset) * 7448)) * 796))))

// $3D72D8: Profile 1 Story 1 Character [32-bit BE]
function storyCharacter(offset) => dword_be(0x3D72D8 + offset + (profile(offset) * 7448 + 0 + ((dword_be(0x3D8818 + offset + (profile(offset) * 7448)) * 796))))

// $3D72DC: Profile 1 Story 1 Aliens affinity [Float BE]
function storyAliensAffinity(offset) => float_be(0x3D72DC + offset + (profile(offset) * 7448 + 0 + ((dword_be(0x3D8818 + offset + (profile(offset) * 7448)) * 796))))

// $3D72E0: Profile 1 Story 1 Earth Defenders affinity [Float BE]
function storyEarthDefendersAffinity(offset) => float_be(0x3D72E0 + offset + (profile(offset) * 7448 + 0 + ((dword_be(0x3D8818 + offset + (profile(offset) * 7448)) * 796))))

// $3D72E4: Profile 1 Story 1 GDF affinity [Float BE]
function storyGDFAffinity(offset) => float_be(0x3D72E4 + offset + (profile(offset) * 7448 + 0 + ((dword_be(0x3D8818 + offset + (profile(offset) * 7448)) * 796))))

// $3D72E8: Profile 1 Story 1 Mutants affinity [Float BE]
function storyMutantsAffinity(offset) => float_be(0x3D72E8 + offset + (profile(offset) * 7448 + 0 + ((dword_be(0x3D8818 + offset + (profile(offset) * 7448)) * 796))))

// $3D72F0: Profile 1 Story 1 Day 1 Mission ID [32-bit BE]
//          17 = Finale
//          55 = Tyrant
function storyMission(offset) => dword_be((prev(dword_be(prev(profile(offset)) * 7448 + (prev(dword_be(prev(profile(offset)) * 7448 + 0x3D8818 + offset)) * 796)
              + 4027088 + offset)) * 20) + prev(profile(offset)) * 7448 + (prev(dword_be(prev(profile(offset)) * 7448 + 0x3D8818 + offset)) * 796) + 4027120 + offset)

// $3D72F4: Profile 1 Story 1 Day 1 Completion [32-bit BE]
//          Bit0
function missionComplete(offset) => bit0((prev(dword_be(prev(profile(offset)) * 7448 + (prev(dword_be(prev(profile(offset)) * 7448 + 0x3D8818 + offset)) * 796)
              + 4027088 + offset)) * 20) + prev(profile(offset)) * 7448 + (prev(dword_be(prev(profile(offset)) * 7448 + 0x3D8818 + offset)) * 796) + 4027127 + offset)

// $3D8818: Profile 1 Loaded Story [32-bit BE]
function loadedStory(offset) => dword_be(profile(offset) * 7448 + 0x3D8818 + offset)

// $3D881C: Profile 1 Store Unlocked [8-bit]
//          0x00=Locked
//          0xff=Unlocked
function storeCheat(offset) => byte(profile(offset) * 7448 + 0x3D881C + offset)

// $3D881D: Profile 1 Monsters Unlocked [Bitflags]
//          Bit0=Baragon
//          Bit1=Godzilla 1990s
function monstersUnlocked1(index, offset) => index(profile(offset) * 7448 + 0x3D881D + offset)

// $3D881E: Profile 1 Monsters Unlocked [Bitflags]
//          Bit0=Megaguirus
//          Bit1=Varan
//          Bit2=Titanosaurus
//          Bit3=Obsidius
//          Bit4=SpaceGodzilla
//          Bit5=Krystalak
//          Bit6=Mecha-King Ghidorah
//          Bit7=Biollante
function monstersUnlocked2(index, offset) => index(profile(offset) * 7448 + 0x3D881E + offset)

// $3D881F: Profile 1 Monsters Unlocked [Bitflags]
//          Bit0=Mechagodzilla 2
//          Bit1=Moguera
//          Bit2=Jet Jaguar
//          Bit3=Mechagodzilla
//          Bit4=King Caesar
//          Bit5=Mothra
//          Bit6=Orga
//          Bit7=Godzilla 1954
function monstersUnlocked3(index, offset) => index(profile(offset) * 7448 + 0x3D881F + offset)

// $3D8821: Profile 1 Monsters Available [Bitflags]
//          Bit0=Baragon
//          Bit1=Godzilla 1990s
function monstersAvailable1(index, offset) => index(profile(offset) * 7448 + 0x3D8821 + offset)

// $3D8822: Profile 1 Monsters Available [Bitflags]
//          Bit0=Megaguirus
//          Bit1=Varan
//          Bit2=Titanosaurus
//          Bit3=Obsidius
//          Bit4=SpaceGodzilla
//          Bit5=Krystalak
//          Bit6=Mecha-King Ghidorah
//          Bit7=Biollante
function monstersAvailable2(index, offset) => index(profile(offset) * 7448 + 0x3D8822 + offset)

// $3D8823: Profile 1 Monsters Available [Bitflags]
//          Bit0=Mechagodzilla 2
//          Bit1=Moguera
//          Bit2=Jet Jaguar
//          Bit3=Mechagodzilla
//          Bit4=King Caesar
//          Bit5=Mothra
//          Bit6=Orga
//          Bit7=Godzilla 1954
function monstersAvailable3(index, offset) => index(profile(offset) * 7448 + 0x3D8823 + offset)

// $3D8827: Profile 1 Factions [Bitflags]
//          Bit0=GDF
//          Bit1=Aliens
//          Bit2=Mutants
//          Bit3=Mutants available
function factions(index, offset) => index(profile(offset) * 7448 + 0x3D8827 + offset)

// $3D882B: Profile 1 Environments [Bitflags]
//          Bit0=Seattle
//          Bit1=Monster Island
//          Bit2=New York
//          Bit3=London
//          Bit4=Tokyo
//          Bit5=Mothership available
//          Bit6=Mothership
function environments(offset) => byte(profile(offset) * 7448 + 0x3D882B + offset)

// $3D882C: Profile 1 Gallery 1 [Bitflags]
//          Bit0=Concept Art 25
//          Bit1=Concept Art 26
//          Bit2=Concept Art 27
function gallery11(offset) => byte(profile(offset) * 7448 + 0x3D882C + offset)

// $3D882D: Profile 1 Gallery 1 [Bitflags]
//          Bit0=Concept Art 17
//          Bit1=Concept Art 18
//          Bit2=Concept Art 19
//          Bit3=Concept Art 20
//          Bit4=Concept Art 21
//          Bit5=Concept Art 22
//          Bit6=Concept Art 23
//          Bit7=Concept Art 24
function gallery12(offset) => byte(profile(offset) * 7448 + 0x3D882D + offset)

// $3D882E: Profile 1 Gallery 1 [Bitflags]
//          Bit0=Concept Art 9
//          Bit1=Concept Art 10
//          Bit2=Concept Art 11
//          Bit3=Concept Art 12
//          Bit4=Concept Art 13
//          Bit5=Concept Art 14
//          Bit6=Concept Art 15
//          Bit7=Concept Art 16
function gallery13(offset) => byte(profile(offset) * 7448 + 0x3D882E + offset)

// $3D882F: Profile 1 Gallery 1 [Bitflags]
//          Bit0=Concept Art 1
//          Bit1=Concept Art 2
//          Bit2=Concept Art 3
//          Bit3=Concept Art 4
//          Bit4=Concept Art 5
//          Bit5=Concept Art 6
//          Bit6=Concept Art 7
//          Bit7=Concept Art 8
function gallery14(offset) => byte(profile(offset) * 7448 + 0x3D882F + offset)

// $3D8830: Profile 1 Gallery 2 [Bitflags]
//          Bit0=Monster Hint 8
//          Bit1=Monster Hint 9
function gallery21(offset) => byte(profile(offset) * 7448 + 0x3D8830 + offset)

// $3D8831: Profile 1 Gallery 2 [Bitflags]
//          Bit0=Video 16
//          Bit1=Monster Hint 1
//          Bit2=Monster Hint 2
//          Bit3=Monster Hint 3
//          Bit4=Monster Hint 4
//          Bit5=Monster Hint 5
//          Bit6=Monster Hint 6
//          Bit7=Monster Hint 7
function gallery22(offset) => byte(profile(offset) * 7448 + 0x3D8831 + offset)

// $3D8832: Profile 1 Gallery 2 [Bitflags]
//          Bit0=Video 8
//          Bit1=Video 9
//          Bit2=Video 10
//          Bit3=Video 11
//          Bit4=Video 12
//          Bit5=Video 13
//          Bit6=Video 14
//          Bit7=Video 15
function gallery23(offset) => byte(profile(offset) * 7448 + 0x3D8832 + offset)

// $3D8833: Profile 1 Gallery 2 [Bitflags]
//          Bit0=Trailer
//          Bit1=Video 1
//          Bit2=Video 2
//          Bit3=Video 3
//          Bit4=Video 4
//          Bit5=Video 5
//          Bit6=Video 6
//          Bit7=Video 7
function gallery24(offset) => byte(profile(offset) * 7448 + 0x3D8833 + offset)

// $3D8834: Profile 1 Store Points [32-bit BE]
function storePoints(offset) => dword_be(profile(offset) * 7448 + 0x3D8834 + offset)

// $3D8A08: Profile 1 Custom 1 Game Mode [32-bit BE]
//          0=Last Man Standing
//          1=Points
function custom1GameMode(offset) => dword_be(profile(offset) * 7448 + 0x3D8A08 + offset)

// $3D8A0F: Profile 1 Custom 1 Points Earned [Bitflags]
//          Bit0=Combat
//          Bit1=Building Destruction
//          Bit2=Vehicle Destruction
function custom1PointsEarned(offset) => byte(profile(offset) * 7448 + 0x3D8A0F + offset)

// $3D8A10: Profile 1 Custom 1 Number of Respawns [32-bit BE]
//          0=0 Respawns
//          1=1 Respawns
//          2=2 Respawns
//          3=3 Respawns
//          4=4 Respawns
//          5=Infinite Respawns
function custom1NumberOfRespawns(offset) => dword_be(profile(offset) * 7448 + 0x3D8A10 + offset)

// $3D8A14: Profile 1 Custom 1 Round Length [32-bit BE]
//          0=2 Minutes
//          1=3 Minutes
//          2=5 Minutes
//          3=10 Minutes
//          4=15 Minutes
//          5=20 Minutes
function custom1RoundLength(offset) => dword_be(profile(offset) * 7448 + 0x3D8A14 + offset)

// $3D8A18: Profile 1 Custom 1 Rounds for Win [32-bit BE]
//          0=1 Rounds
//          1=2 Rounds
//          2=3 Rounds
//          3=4 Rounds
function custom1RoundsForWin(offset) => dword_be(profile(offset) * 7448 + 0x3D8A18 + offset)

// $3D8A1C: Profile 1 Custom 1 Military Settings [32-bit BE]
//          0=Target Most Destructive
//          1=Target Strongest
function custom1MilitarySettings(offset) => dword_be(profile(offset) * 7448 + 0x3D8A1C + offset)

// $3D8A20: Profile 1 Custom 1 Military Aggression [32-bit BE]
//          0x00=0%
//          0x02=10%
//          0x04=20%
//          0x06=30%
//          0x08=40%
//          0x0a=50%
//          0x0c=60%
//          0x0e=70&
//          0x10=80%
//          0x12=90%
//          0x14=100%
function custom1MilitaryAggression(offset) => dword_be(profile(offset) * 7448 + 0x3D8A20 + offset)

// $3D8A27: Profile 1 Custom 1 Vehicle Types [Bitflags]
//          Bit0=Attack Helicopter
//          Bit1=Transport Helicopter
//          Bit2=Missile Tanks
//          Bit3=Maser Tanks
//          Bit4=Freeze Tanks
//          Bit5=VTOL Aircraft
//          Bit6=UFOs
//          Bit7=Alien Walkers
function custom1VehicleTypes(offset) => byte(profile(offset) * 7448 + 0x3D8A27 + offset)

// $3D8A28: Profile 1 Custom 1 Powerup Types [32-bit BE]
//          Health/Energy
//          0x00=100/0%
//          0x02=90/10%
//          0x04=80/20%
//          0x06=70/30%
//          0x08=60/40%
//          0x0a=50/50%
//          0x0c=40/60%
//          0x0e=30/70&
//          0x10=20/80%
//          0x12=10/90%
//          0x14=0/100%
function custom1PowerupTypes(offset) => dword_be(profile(offset) * 7448 + 0x3D8A28 + offset)

// $3D8A2C: Profile 1 Custom 1 Powerup Spawn Rate [32-bit BE]
//          0x00=0%
//          0x02=10%
//          0x04=20%
//          0x06=30%
//          0x08=40%
//          0x0a=50%
//          0x0c=60%
//          0x0e=70&
//          0x10=80%
//          0x12=90%
//          0x14=100%
function custom1PowerupSpawnRate(offset) => dword_be(profile(offset) * 7448 + 0x3D8A2C + offset)

// $3D8A33: Profile 1 Custom 1 Power Surge Types [Bitflags]
//          Bit0=Darkness
//          Bit1=Fire
//          Bit2=Electric
//          Bit3=Radiation
//          Bit4=Shield
//          Bit5=Speed
//          Bit6=Crystal
function custom1PowerSurgeTypes(offset) => byte(profile(offset) * 7448 + 0x3D8A33 + offset)

// $3D8A34: Profile 1 Custom 1 Power Surge Spawn Rate [32-bit BE]
//          0x00=0%
//          0x02=10%
//          0x04=20%
//          0x06=30%
//          0x08=40%
//          0x0a=50%
//          0x0c=60%
//          0x0e=70&
//          0x10=80%
//          0x12=90%
//          0x14=100%
function custom1PowerSurgeSpawnRate(offset) => dword_be(profile(offset) * 7448 + 0x3D8A34 + offset)

// $3D8A38: Profile 1 Custom 1 Critical Mass Accumulation [32-bit BE]
//          0x00=0%
//          0x02=10%
//          0x04=20%
//          0x06=30%
//          0x08=40%
//          0x0a=50%
//          0x0c=60%
//          0x0e=70&
//          0x10=80%
//          0x12=90%
//          0x14=100%
function custom1CriticalMassAccumulation(offset) => dword_be(profile(offset) * 7448 + 0x3D8A38 + offset)

// $3D8A3C: Profile 1 Custom 1 Teams [32-bit BE]
//          0=No
//          1=Yes
function custom1Teams(offset) => dword_be(profile(offset) * 7448 + 0x3D8A3C + offset)

// $3D8A43: Profile 1 Custom 1 Team Selection [Bitflags]
//          0=Blue, 1=Red
//          Bit0=P1
//          Bit1=P2
//          Bit2=P3
//          Bit3=P4
function custom1TeamSelection(offset) => byte(profile(offset) * 7448 + 0x3D8A43 + offset)

// $3D8A44: Profile 1 Custom 1 Health Regenerate [32-bit BE]
//          0x00=0%
//          0x02=10%
//          0x04=20%
//          0x06=30%
//          0x08=40%
//          0x0a=50%
//          0x0c=60%
//          0x0e=70&
//          0x10=80%
//          0x12=90%
//          0x14=100%
function custom1HealthRegenerate(offset) => dword_be(profile(offset) * 7448 + 0x3D8A44 + offset)

// $3D8A48: Profile 1 Custom 1 Energy Regenerate [32-bit BE]
//          0x00=0%
//          0x02=10%
//          0x04=20%
//          0x06=30%
//          0x08=40%
//          0x0a=50%
//          0x0c=60%
//          0x0e=70&
//          0x10=80%
//          0x12=90%
//          0x14=100%
function custom1EnergyRegenerate(offset) => dword_be(profile(offset) * 7448 + 0x3D8A48 + offset)

// $3D8A4C: Profile 1 Custom 1 Monster Speed [32-bit BE]
//          0=Normal (slower than default)
//          1=Default
//          2=Fast
function custom1MonsterSpeed(offset) => dword_be(profile(offset) * 7448 + 0x3D8A4C + offset)

// $3D8A50: Profile 1 Custom 1 Use Tiny Monsters [32-bit BE]
//          0=No
//          1=Yes
function custom1UseTinyMonsters(offset) => dword_be(profile(offset) * 7448 + 0x3D8A50 + offset)

// $3D8A74: Profile 1 Custom 2 Game Mode [32-bit BE]
function custom2GameMode(offset) => dword_be(profile(offset) * 7448 + 0x3D8A74 + offset)

// $3D8A7B: Profile 1 Custom 2 Points Earned [Bitflags]
function custom2PointsEarned(offset) => byte(profile(offset) * 7448 + 0x3D8A7B + offset)

// $3D8A7C: Profile 1 Custom 2 Number of Respawns [32-bit BE]
function custom2NumberOfRespawns(offset) => dword_be(profile(offset) * 7448 + 0x3D8A7C + offset)

// $3D8A80: Profile 1 Custom 2 Round Length [32-bit BE]
function custom2RoundLength(offset) => dword_be(profile(offset) * 7448 + 0x3D8A80 + offset)

// $3D8A84: Profile 1 Custom 2 Rounds for Win [32-bit BE]
function custom2RoundsForWin(offset) => dword_be(profile(offset) * 7448 + 0x3D8A84 + offset)

// $3D8A88: Profile 1 Custom 2 Military Settings [32-bit BE]
function custom2MilitarySettings(offset) => dword_be(profile(offset) * 7448 + 0x3D8A88 + offset)

// $3D8A8C: Profile 1 Custom 2 Military Aggression [32-bit BE]
function custom2MilitaryAggression(offset) => dword_be(profile(offset) * 7448 + 0x3D8A8C + offset)

// $3D8A93: Profile 1 Custom 2 Vehicle Types [Bitflags]
function custom2VehicleTypes(offset) => byte(profile(offset) * 7448 + 0x3D8A93 + offset)

// $3D8A94: Profile 1 Custom 2 Powerup Types [32-bit BE]
function custom2PowerupTypes(offset) => dword_be(profile(offset) * 7448 + 0x3D8A94 + offset)

// $3D8A98: Profile 1 Custom 2 Powerup Spawn Rate [32-bit BE]
function custom2PowerupSpawnRate(offset) => dword_be(profile(offset) * 7448 + 0x3D8A98 + offset)

// $3D8A9F: Profile 1 Custom 2 Power Surge Types [Bitflags]
function custom2PowerSurgeTypes(offset) => byte(profile(offset) * 7448 + 0x3D8A9F + offset)

// $3D8AA0: Profile 1 Custom 2 Power Surge Spawn Rate [32-bit BE]
function custom2PowerSurgeSpawnRate(offset) => dword_be(profile(offset) * 7448 + 0x3D8AA0 + offset)

// $3D8AA4: Profile 1 Custom 2 Critical Mass Accumulation [32-bit BE]
function custom2CriticalMassAccumulation(offset) => dword_be(profile(offset) * 7448 + 0x3D8AA4 + offset)

// $3D8AA8: Profile 1 Custom 2 Teams [32-bit BE]
function custom2Teams(offset) => dword_be(profile(offset) * 7448 + 0x3D8AA8 + offset)

// $3D8AAF: Profile 1 Custom 2 Team Selection [Bitflags]
function custom2TeamSelection(offset) => byte(profile(offset) * 7448 + 0x3D8AAF + offset)

// $3D8AB0: Profile 1 Custom 2 Health Regenerate [32-bit BE]
function custom2HealthRegenerate(offset) => dword_be(profile(offset) * 7448 + 0x3D8AB0 + offset)

// $3D8AB4: Profile 1 Custom 2 Energy Regenerate [32-bit BE]
function custom2EnergyRegenerate(offset) => dword_be(profile(offset) * 7448 + 0x3D8AB4 + offset)

// $3D8AB8: Profile 1 Custom 2 Monster Speed [32-bit BE]
function custom2MonsterSpeed(offset) => dword_be(profile(offset) * 7448 + 0x3D8AB8 + offset)

// $3D8ABC: Profile 1 Custom 2 Use Tiny Monsters [32-bit BE]
function custom2UseTinyMonsters(offset) => dword_be(profile(offset) * 7448 + 0x3D8ABC + offset)

// $3D8AE0: Profile 1 Custom 3 Game Mode [32-bit BE]
function custom3GameMode(offset) => dword_be(profile(offset) * 7448 + 0x3D8AE0 + offset)

// $3D8AE7: Profile 1 Custom 3 Points Earned [Bitflags]
function custom3PointsEarned(offset) => byte(profile(offset) * 7448 + 0x3D8AE7 + offset)

// $3D8AE8: Profile 1 Custom 3 Number of Respawns [32-bit BE]
function custom3NumberOfRespawns(offset) => dword_be(profile(offset) * 7448 + 0x3D8AE8 + offset)

// $3D8AEC: Profile 1 Custom 3 Round Length [32-bit BE]
function custom3RoundLength(offset) => dword_be(profile(offset) * 7448 + 0x3D8AEC + offset)

// $3D8AF0: Profile 1 Custom 3 Rounds for Win [32-bit BE]
function custom3RoundsForWin(offset) => dword_be(profile(offset) * 7448 + 0x3D8AF0 + offset)

// $3D8AF4: Profile 1 Custom 3 Military Settings [32-bit BE]
function custom3MilitarySettings(offset) => dword_be(profile(offset) * 7448 + 0x3D8AF4 + offset)

// $3D8AF8: Profile 1 Custom 3 Military Aggression [32-bit BE]
function custom3MilitaryAggression(offset) => dword_be(profile(offset) * 7448 + 0x3D8AF8 + offset)

// $3D8AFF: Profile 1 Custom 3 Vehicle Types [Bitflags]
function custom3VehicleTypes(offset) => byte(profile(offset) * 7448 + 0x3D8AFF + offset)

// $3D8B00: Profile 1 Custom 3 Powerup Types [32-bit BE]
function custom3PowerupTypes(offset) => dword_be(profile(offset) * 7448 + 0x3D8B00 + offset)

// $3D8B04: Profile 1 Custom 3 Powerup Spawn Rate [32-bit BE]
function custom3PowerupSpawnRate(offset) => dword_be(profile(offset) * 7448 + 0x3D8B04 + offset)

// $3D8B0B: Profile 1 Custom 3 Power Surge Types [Bitflags]
function custom3PowerSurgeTypes(offset) => byte(profile(offset) * 7448 + 0x3D8B0B + offset)

// $3D8B0C: Profile 1 Custom 3 Power Surge Spawn Rate [32-bit BE]
function custom3PowerSurgeSpawnRate(offset) => dword_be(profile(offset) * 7448 + 0x3D8B0C + offset)

// $3D8B10: Profile 1 Custom 3 Critical Mass Accumulation [32-bit BE]
function custom3CriticalMassAccumulation(offset) => dword_be(profile(offset) * 7448 + 0x3D8B10 + offset)

// $3D8B14: Profile 1 Custom 3 Teams [32-bit BE]
function custom3Teams(offset) => dword_be(profile(offset) * 7448 + 0x3D8B14 + offset)

// $3D8B1B: Profile 1 Custom 3 Team Selection [Bitflags]
function custom3TeamSelection(offset) => byte(profile(offset) * 7448 + 0x3D8B1B + offset)

// $3D8B1C: Profile 1 Custom 3 Health Regenerate [32-bit BE]
function custom3HealthRegenerate(offset) => dword_be(profile(offset) * 7448 + 0x3D8B1C + offset)

// $3D8B20: Profile 1 Custom 3 Energy Regenerate [32-bit BE]
function custom3EnergyRegenerate(offset) => dword_be(profile(offset) * 7448 + 0x3D8B20 + offset)

// $3D8B24: Profile 1 Custom 3 Monster Speed [32-bit BE]
function custom3MonsterSpeed(offset) => dword_be(profile(offset) * 7448 + 0x3D8B24 + offset)

// $3D8B28: Profile 1 Custom 3 Use Tiny Monsters [32-bit BE]
function custom3UseTinyMonsters(offset) => dword_be(profile(offset) * 7448 + 0x3D8B28 + offset)

// $3D8B4C: Profile 1 Custom 4 Game Mode [32-bit BE]
function custom4GameMode(offset) => dword_be(profile(offset) * 7448 + 0x3D8B4C + offset)

// $3D8B53: Profile 1 Custom 4 Points Earned [Bitflags]
function custom4PointsEarned(offset) => byte(profile(offset) * 7448 + 0x3D8B53 + offset)

// $3D8B54: Profile 1 Custom 4 Number of Respawns [32-bit BE]
function custom4NumberOfRespawns(offset) => dword_be(profile(offset) * 7448 + 0x3D8B54 + offset)

// $3D8B58: Profile 1 Custom 4 Round Length [32-bit BE]
function custom4RoundLength(offset) => dword_be(profile(offset) * 7448 + 0x3D8B58 + offset)

// $3D8B5C: Profile 1 Custom 4 Rounds for Win [32-bit BE]
function custom4RoundsForWin(offset) => dword_be(profile(offset) * 7448 + 0x3D8B5C + offset)

// $3D8B60: Profile 1 Custom 4 Military Settings [32-bit BE]
function custom4MilitarySettings(offset) => dword_be(profile(offset) * 7448 + 0x3D8B60 + offset)

// $3D8B64: Profile 1 Custom 4 Military Aggression [32-bit BE]
function custom4MilitaryAggression(offset) => dword_be(profile(offset) * 7448 + 0x3D8B64 + offset)

// $3D8B6B: Profile 1 Custom 4 Vehicle Types [Bitflags]
function custom4VehicleTypes(offset) => byte(profile(offset) * 7448 + 0x3D8B6B + offset)

// $3D8B6C: Profile 1 Custom 4 Powerup Types [32-bit BE]
function custom4PowerupTypes(offset) => dword_be(profile(offset) * 7448 + 0x3D8B6C + offset)

// $3D8B70: Profile 1 Custom 4 Powerup Spawn Rate [32-bit BE]
function custom4PowerupSpawnRate(offset) => dword_be(profile(offset) * 7448 + 0x3D8B70 + offset)

// $3D8B77: Profile 1 Custom 4 Power Surge Types [Bitflags]
function custom4PowerSurgeTypes(offset) => byte(profile(offset) * 7448 + 0x3D8B77 + offset)

// $3D8B78: Profile 1 Custom 4 Power Surge Spawn Rate [32-bit BE]
function custom4PowerSurgeSpawnRate(offset) => dword_be(profile(offset) * 7448 + 0x3D8B78 + offset)

// $3D8B7C: Profile 1 Custom 4 Critical Mass Accumulation [32-bit BE]
function custom4CriticalMassAccumulation(offset) => dword_be(profile(offset) * 7448 + 0x3D8B7C + offset)

// $3D8B80: Profile 1 Custom 4 Teams [32-bit BE]
function custom4Teams(offset) => dword_be(profile(offset) * 7448 + 0x3D8B80 + offset)

// $3D8B87: Profile 1 Custom 4 Team Selection [Bitflags]
function custom4TeamSelection(offset) => byte(profile(offset) * 7448 + 0x3D8B87 + offset)

// $3D8B88: Profile 1 Custom 4 Health Regenerate [32-bit BE]
function custom4HealthRegenerate(offset) => dword_be(profile(offset) * 7448 + 0x3D8B88 + offset)

// $3D8B8C: Profile 1 Custom 4 Energy Regenerate [32-bit BE]
function custom4EnergyRegenerate(offset) => dword_be(profile(offset) * 7448 + 0x3D8B8C + offset)

// $3D8B90: Profile 1 Custom 4 Monster Speed [32-bit BE]
function custom4MonsterSpeed(offset) => dword_be(profile(offset) * 7448 + 0x3D8B90 + offset)

// $3D8B94: Profile 1 Custom 4 Use Tiny Monsters [32-bit BE]
function custom4UseTinyMonsters(offset) => dword_be(profile(offset) * 7448 + 0x3D8B94 + offset)

// $3D8C04: Profile 1 Game Mode [32-bit BE]
//          0=Versus
//          1=Classic Melee
//          2=Classic Destruction
//          3=Last Man Standing/Training
//          4=Custom 1
//          5=Custom 2
//          6=Custom 3
//          7=Custom 4
function gameMode(offset) => dword_be(profile(offset) * 7448 + 0x3D8C04 + offset)

// $3D8C08: Profile 1 Sound Volume [Float BE]
function soundVolume(offset) => float_be(profile(offset) * 7448 + 0x3D8C08 + offset)

// $3D8C0C: Profile 1 Music Volume [Float BE]
function musicVolume(offset) => float_be(profile(offset) * 7448 + 0x3D8C0C + offset)

// $3D8C10: Profile 1 Brightness [Float BE]
//          1=Default 37%
function brightness(offset) => float_be(profile(offset) * 7448 + 0x3D8C10 + offset)

// $3D8C14: Profile 1 Language [32-bit BE]
//          0=English
//          1=Japanese
function language(offset) => dword_be(profile(offset) * 7448 + 0x3D8C14 + offset)

// $3D8C18: Profile 1 Subtitles [32-bit BE]
//          0=No
//          1=Yes
function subtitles(offset) => dword_be(profile(offset) * 7448 + 0x3D8C18 + offset)

// $3D8C1C: Profile 1 Difficulty [32-bit BE]
//          0=Easy
//          1=Normal
//          2=Hard
function difficulty(offset) => dword_be(profile(offset) * 7448 + 0x3D8C1C + offset)

// $3E1DA8: Map [24 Bytes ASCII]
//          every map name starts with 0x00
//          Sydney
//          SanFrancisco
//          Osaka
//          Seattle
//          MonsterIsland
//          MonsterIsland_Tutorial
//          London
//          NewYork
//          Tokyo
//          Mothership
function map(offset) => byte(0x3E1DA8 + offset)

// $3E1DB6: Training = 0x5f [8-bit]
function training(offset) => byte(0x3E1DB6 + offset)

// $3E1DCC: P1 Character [32-bit BE]
function p1Char(offset) => dword_be(0x3E1DCC + offset)

// $3E1DD0: P2 Character [32-bit BE]
function p2Char(offset) => dword_be(0x3E1DD0 + offset)

// $3E1DD4: P3 Character [32-bit BE]
function p3Char(offset) => dword_be(0x3E1DD4 + offset)

// $3E1DD8: P4 Character [32-bit BE]
function p4Char(offset) => dword_be(0x3E1DD8 + offset)

// $3E1DDC: P1 Rounds Won [32-bit BE]
function p1RoundsWon(offset) => dword_be(0x3E1DDC + offset)

// $3E1DE0: P2 Rounds Won [32-bit BE]
function p2RoundsWon(offset) => dword_be(0x3E1DE0 + offset)

// $3E1DE4: P3 Rounds Won [32-bit BE]
function p3RoundsWon(offset) => dword_be(0x3E1DE4 + offset)

// $3E1DE8: P4 Rounds Won [32-bit BE]
function p4RoundsWon(offset) => dword_be(0x3E1DE8 + offset)

// $3E20BC: Current Round [32-bit BE]
function currentRound(offset) => dword_be(0x3E20BC + offset)

// $3E218C: Number of Players/CPUs [32-bit BE]
function numOfPlayers(offset) => dword_be(0x3E218C + offset)

// $3E2190: Number of Active Players bitflags [32-bit BE]
//          Game intro cutscene started >= 1
function activePlayers(offset) => dword_be(0x3E2190 + offset)

// $3E21A8: Story = 1 [32-bit BE]
function story(offset) => dword_be(0x3E21A8 + offset)

// $3E21B8: Demo mode = 0x01000000 [32-bit BE]
//          press start to end cutscene or game
//          training = 0x00010000
function demoMode(offset) => dword_be(0x3E21B8 + offset)

// $3E5780: Ingame = 0x40000003 [32-bit BE]
function ingame(offset) => dword_be(0x3E5780 + offset)

// $432840: Battle Pointer [32-bit BE]
//          +0x58 | Pointer [32-bit BE]
//          ++0x54 | Pointer [32-bit BE]
//          +++0x90 | Pointer [32-bit BE]
//          ++++0x00 | Onscreen Timer [32-bit BE ASCII]
function battlePointer(offset) => dword_be(0x432840 + offset)

// $4329AC: Round Time Elapsed [Float BE]
function roundTimeElapsed(offset) => float_be(0x4329AC + offset)

// $4329C0: P1 KOs Inflicted [32-bit BE]
function p1KosInflicted(offset) => dword_be(0x4329C0 + offset)

// $4329C4: P1 Total KOs Inflicted [32-bit BE]
function p1TotalKosInflicted(offset) => dword_be(0x4329C4 + offset)

// $4329C8: P1 Knockdowns Inflicted [32-bit BE]
function p1KnockdownsInflicted(offset) => dword_be(0x4329C8 + offset)

// $4329CC: P1 Total Knockdowns Inflicted [32-bit BE]
function p1TotalKnockdownsInflicted(offset) => dword_be(0x4329CC + offset)

// $4329D8: P1 Destruction Points [32-bit BE]
function p1DestructionPoints(offset) => dword_be(0x4329D8 + offset)

// $4329DC: P1 Total Destruction Points [32-bit BE]
function p1TotalDestructionPoints(offset) => dword_be(0x4329DC + offset)

// $4329E0: P1 Combat Points [32-bit BE]
function p1CombatPoints(offset) => dword_be(0x4329E0 + offset)

// $4329E4: P1 Total Combat Points [32-bit BE]
function p1TotalCombatPoints(offset) => dword_be(0x4329E4 + offset)

// $4329E8: P1 Military Points [32-bit BE]
function p1MilitaryPoints(offset) => dword_be(0x4329E8 + offset)

// $4329EC: P1 Total Military Points [32-bit BE]
function p1TotalMilitaryPoints(offset) => dword_be(0x4329EC + offset)

// $4329F0: P1 Round Points [32-bit BE]
function p1RoundPoints(offset) => dword_be(0x4329F0 + offset)

// $4329F4: P1 Total Round Points [32-bit BE]
function p1TotalRoundPoints(offset) => dword_be(0x4329F4 + offset)

// $4329FC: P1 Respawns used [32-bit BE]
function p1RespawnsUsed(offset) => dword_be(0x4329FC + offset)

// $432A04: P2 KOs Inflicted [32-bit BE]
function p2KosInflicted(offset) => dword_be(0x432A04 + offset)

// $432A08: P2 Total KOs Inflicted [32-bit BE]
function p2TotalKosInflicted(offset) => dword_be(0x432A08 + offset)

// $432A0C: P2 Knockdowns Inflicted [32-bit BE]
function p2KnockdownsInflicted(offset) => dword_be(0x432A0C + offset)

// $432A10: P2 Total Knockdowns Inflicted [32-bit BE]
function p2TotalKnockdownsInflicted(offset) => dword_be(0x432A10 + offset)

// $432A1C: P2 Destruction Points [32-bit BE]
function p2DestructionPoints(offset) => dword_be(0x432A1C + offset)

// $432A20: P2 Total Destruction Points [32-bit BE]
function p2TotalDestructionPoints(offset) => dword_be(0x432A20 + offset)

// $432A24: P2 Combat Points [32-bit BE]
function p2CombatPoints(offset) => dword_be(0x432A24 + offset)

// $432A28: P2 Total Combat Points [32-bit BE]
function p2TotalCombatPoints(offset) => dword_be(0x432A28 + offset)

// $432A2C: P2 Military Points [32-bit BE]
function p2MilitaryPoints(offset) => dword_be(0x432A2C + offset)

// $432A30: P2 Total Military Points [32-bit BE]
function p2TotalMilitaryPoints(offset) => dword_be(0x432A30 + offset)

// $432A34: P2 Round Points [32-bit BE]
function p2RoundPoints(offset) => dword_be(0x432A34 + offset)

// $432A38: P2 Total Round Points [32-bit BE]
function p2TotalRoundPoints(offset) => dword_be(0x432A38 + offset)

// $432A40: P2 Respawns used [32-bit BE]
function p2RespawnsUsed(offset) => dword_be(0x432A40 + offset)

// $432A48: P3 KOs Inflicted [32-bit BE]
function p3KosInflicted(offset) => dword_be(0x432A48 + offset)

// $432A4C: P3 Total KOs Inflicted [32-bit BE]
function p3TotalKosInflicted(offset) => dword_be(0x432A4C + offset)

// $432A50: P3 Knockdowns Inflicted [32-bit BE]
function p3KnockdownsInflicted(offset) => dword_be(0x432A50 + offset)

// $432A54: P3 Total Knockdowns Inflicted [32-bit BE]
function p3TotalKnockdownsInflicted(offset) => dword_be(0x432A54 + offset)

// $432A60: P3 Destruction Points [32-bit BE]
function p3DestructionPoints(offset) => dword_be(0x432A60 + offset)

// $432A64: P3 Total Destruction Points [32-bit BE]
function p3TotalDestructionPoints(offset) => dword_be(0x432A64 + offset)

// $432A68: P3 Combat Points [32-bit BE]
function p3CombatPoints(offset) => dword_be(0x432A68 + offset)

// $432A6C: P3 Total Combat Points [32-bit BE]
function p3TotalCombatPoints(offset) => dword_be(0x432A6C + offset)

// $432A70: P3 Military Points [32-bit BE]
function p3MilitaryPoints(offset) => dword_be(0x432A70 + offset)

// $432A74: P3 Total Military Points [32-bit BE]
function p3TotalMilitaryPoints(offset) => dword_be(0x432A74 + offset)

// $432A78: P3 Round Points [32-bit BE]
function p3RoundPoints(offset) => dword_be(0x432A78 + offset)

// $432A7C: P3 Total Round Points [32-bit BE]
function p3TotalRoundPoints(offset) => dword_be(0x432A7C + offset)

// $432A84: P3 Respawns used [32-bit BE]
function p3RespawnsUsed(offset) => dword_be(0x432A84 + offset)

// $432A8C: P4 KOs Inflicted [32-bit BE]
function p4KosInflicted(offset) => dword_be(0x432A8C + offset)

// $432A90: P4 Total KOs Inflicted [32-bit BE]
function p4TotalKosInflicted(offset) => dword_be(0x432A90 + offset)

// $432A94: P4 Knockdowns Inflicted [32-bit BE]
function p4KnockdownsInflicted(offset) => dword_be(0x432A94 + offset)

// $432A98: P4 Total Knockdowns Inflicted [32-bit BE]
function p4TotalKnockdownsInflicted(offset) => dword_be(0x432A98 + offset)

// $432AA4: P4 Destruction Points [32-bit BE]
function p4DestructionPoints(offset) => dword_be(0x432AA4 + offset)

// $432AA8: P4 Total Destruction Points [32-bit BE]
function p4TotalDestructionPoints(offset) => dword_be(0x432AA8 + offset)

// $432AAC: P4 Combat Points [32-bit BE]
function p4CombatPoints(offset) => dword_be(0x432AAC + offset)

// $432AB0: P4 Total Combat Points [32-bit BE]
function p4TotalCombatPoints(offset) => dword_be(0x432AB0 + offset)

// $432AB4: P4 Military Points [32-bit BE]
function p4MilitaryPoints(offset) => dword_be(0x432AB4 + offset)

// $432AB8: P4 Total Military Points [32-bit BE]
function p4TotalMilitaryPoints(offset) => dword_be(0x432AB8 + offset)

// $432ABC: P4 Round Points [32-bit BE]
function p4RoundPoints(offset) => dword_be(0x432ABC + offset)

// $432AC0: P4 Total Round Points [32-bit BE]
function p4TotalRoundPoints(offset) => dword_be(0x432AC0 + offset)

// $432AC8: P4 Respawns used [32-bit BE]
function p4RespawnsUsed(offset) => dword_be(0x432AC8 + offset)

// $79CA54: [EU] Main Menu Pointer [32-bit BE]
function eumenuPointer(offset) => dword_be(0x79CA54 + offset)

// $79D0D4: [US] Main Menu Pointer [32-bit BE]
function menuPointer(offset) => dword_be(0x79D0D4 + offset)

function USHash() => discSerial() == 0x52475a45
function EUHash() => discSerial() == 0x52475a50

US = 0
EU = -1712

Chars = [
    "Godzilla 2000",
    "Anguirus",
    "Fire Rodan",
    "Mothra",
    "King Caesar",
    "Baragon",
    "Varan",
    "Gigan",
    "Megalon",
    "King Ghidorah",
    "Orga",
    "Mechagodzilla",
    "Kiryu",
    "Moguera",
    "Mecha-King Ghidorah",
    "Jet Jaguar",
    "SpaceGodzilla",
    "Destoroyah",
    "Krystalak",
    "Biollante",
    "Megaguirus",
    "Titanosaurus",
    "Obsidius",
    "Mechagodzilla 2",
    "Godzilla 1954",
    "Godzilla 1990s",
    "Mothra"
]

SanFrancisco = [0x00,0x53,0x61,0x6e]
Osaka = [0x00,0x4f,0x73,0x61]
Seattle = [0x00,0x53,0x65,0x61]
MonsterIsland = [0x00,0x4d,0x6f,0x6e]
London = [0x00,0x4c,0x6f,0x6e]
NewYork = [0x00,0x4e,0x65,0x77]
Tokyo = [0x00,0x54,0x6f,0x6b]
Mothership = [0x00,0x4d,0x6f,0x74]

Maps = [
    SanFrancisco,
    Osaka,
    Seattle,
    MonsterIsland,
    London,
    NewYork,
    Tokyo,
    Mothership
]

function StringCompare(address, string)
{
    return all_of(range(0, length(string) - 1), i => byte(address + i) == string[i])
}

function StringPrev(address, string)
{
    return all_of(range(0, length(string) - 1), i => prev(byte(address + i)) == string[i])
}

function Guards(offset) {
    return activePlayers(offset) >= 1 && demoMode(offset) != 16777216
}

function BrawlGuards(offset) {
    return activePlayers(offset) == 1 && demoMode(offset) != 16777216
}

function Cheat(offset) {
    return storeCheat(offset) != 255
}

function PointCheat(offset) {
    return disable_when(OutgameCheck(offset) &&
        (storePoints(offset) - (prev(storePoints(offset)))) == 90000)
}

function EUStoryCheat(offset) {
    return disable_when(OutgameCheck(offset) &&
        EUMainMenu(offset) && (storyDay(offset) - (prev(storyDay(offset)))) > 0)
}

function StoryCheat(offset) {
    return disable_when(OutgameCheck(offset) &&
        MainMenu(offset) && (storyDay(offset) - (prev(storyDay(offset)))) > 0)
}

function IngameCheck(offset) {
    return ingame(offset) == 1073741827
}

function OutgameCheck(offset) {
    return ingame(offset) != 1073741827
}

function Timer(offset, asciiHex) {
    return dword_be(dword_be((dword_be((dword_be((battlePointer(offset) & 0x1FFFFFF) + 0x000058) & 0x1FFFFFF) + 0x000054) &
              0x1FFFFFF) + 0x000090) & 0x1FFFFFF) == asciiHex
}

function EUMainMenu(offset) {
    return dword_be((dword_be((eumenuPointer(offset) & 0x1FFFFFF) + 0x0007B8) & 0x1FFFFFF) + 0x000024) == 1000
}

function MainMenu(offset) {
    return dword_be((dword_be((menuPointer(offset) & 0x1FFFFFF) + 0x0007B8) & 0x1FFFFFF) + 0x000024) == 1000
}

function Progression(Title, ID) {
    achievement(
        title = Title, 
        description = "Complete Story Mode as " + Chars[ID] + ".", 
        points = 5,
        trigger = always_true() && (USHash() && Guards(US) && Cheat(US) && IngameCheck(US) && 
        __ornext(storyMission(US) == 17 || storyMission(US) == 55) && missionComplete(US) > prev(missionComplete(US)) && 
        storyCharacter(US) == ID && PointCheat(US) && StoryCheat(US) || EUHash() && Guards(EU) && Cheat(EU) && IngameCheck(EU) && 
        __ornext(storyMission(EU) == 17 || storyMission(EU) == 55) && missionComplete(EU) > prev(missionComplete(EU)) && 
        storyCharacter(EU) == ID && PointCheat(EU) && EUStoryCheat(EU)),
        type = "win_condition"
    )
}

function ProgMutant(Title, ID) {
    achievement(
        title = Title, 
        description = "Complete Story Mode as " + Chars[ID] + ".", 
        points = 5,
        trigger = always_true() && (USHash() && Guards(US) && Cheat(US) && IngameCheck(US) && 
        storyMission(US) == 55 && missionComplete(US) > prev(missionComplete(US)) && 
        storyCharacter(US) == ID && PointCheat(US) && StoryCheat(US) || EUHash() && Guards(EU) && Cheat(EU) && IngameCheck(EU) && 
        storyMission(EU) == 55 && missionComplete(EU) > prev(missionComplete(EU)) && 
        storyCharacter(EU) == ID && PointCheat(EU) && EUStoryCheat(EU)),
        type = "win_condition"
    )
}

function Tyrant(Title, ID) {
    achievement(
        title = Title, 
        description = "Become a Tyrant as " + Chars[ID] + " on Hard.", 
        points = 10,
        trigger = always_true() && (USHash() && Guards(US) && Cheat(US) && IngameCheck(US) && 
        storyMission(US) == 55 && missionComplete(US) > prev(missionComplete(US)) && 
        storyCharacter(US) == ID && difficulty(US) == 2 && PointCheat(US) && StoryCheat(US) || EUHash() && Guards(EU) && Cheat(EU) && IngameCheck(EU) && 
        storyMission(EU) == 55 && missionComplete(EU) > prev(missionComplete(EU)) && 
        storyCharacter(EU) == ID && difficulty(EU) == 2 && PointCheat(EU) && EUStoryCheat(EU))
    )
}

Progression("Monster of the Millenium", 0)
Progression("The Last Ankylosaurus", 1)
Progression("Back from the Dead", 2)
Progression("Mother Moth", 3)
Progression("Legendary Lion Dog", 4)
Progression("Subterranean Defender", 5)
Progression("Varanopode", 6)
Progression("Attack of the Scythed Goose", 7)
Progression("Mega Drills", 8)
Progression("Cosmic Emperor", 9)
Progression("Organized Destruction", 10)
Progression("Extraterrestrial Fake", 11)
Progression("Key to Defense", 12)
Progression("Mecha Mole", 13)
Progression("Future Terminator", 14)
Progression("Red but Not Alone", 15)
ProgMutant("Death Corona", 16)
ProgMutant("Destoroyah of Worlds", 17)
ProgMutant("Son of SpaceGodzilla", 18)
ProgMutant("Little Shop of Horrors", 19)
ProgMutant("Omega Dragonfly", 20)
ProgMutant("Not a Sauropod", 21)
ProgMutant("Magmouth", 22)
Progression("Ready Anytime", 23)

Tyrant("Tyrant of the Monsters", 0)
Tyrant("Killer of the Living", 1)
Tyrant("Reborn to Rule", 2)
Tyrant("Queen's Rage", 3)
Tyrant("Tyranny of the Seesaw", 4)
Tyrant("Fierce Tyrant of the Underground", 5)
Tyrant("Varan, a Tyrant? How Unbelievable", 6)
Tyrant("GIGAAAAN!!! RISE!", 7)
Tyrant("Seatopian Dystopia", 8)
Tyrant("Tyrant Zero", 9)
Tyrant("It's All Orga Now", 10)
Tyrant("Planet for the Simians", 11)
Tyrant("Tyranny of Our Own Making", 12)
Tyrant("Monster Universal Expert Robot", 13)
Tyrant("Critical Cyborg", 14)
Tyrant("Redman Roleplay", 15)
Tyrant("Galaxy-Eyes Crystal Godzilla", 16)
Tyrant("King of Hell and Earth", 17)
Tyrant("Krystal Khaos", 18)
Tyrant("Bio Wars", 19)
Tyrant("Killer Queen", 20)
Tyrant("Life Finds a Way", 21)
Tyrant("Mantle of Tyranny", 22)
Tyrant("Anti-Monster Superweapon", 23)

achievement(
    title = "Original King's Reign",
    description = "Win a game of Hard Versus as Godzilla 1954 against P2 as Godzilla 1990's, P3 as Godzilla 2000, and P4 as SpaceGodzilla.",
    points = 5,
    trigger = always_true() && (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) && 
    gameMode(US) == 0 && difficulty(US) == 2 && numOfPlayers(US) == 4 && p1Char(US) == 24 && p2Char(US) == 25 && p3Char(US) == 0 && p4Char(US) == 16 && 
    p1RoundsWon(US) == 2 && p1RoundsWon(US) > prev(p1RoundsWon(US)) && PointCheat(US) && StoryCheat(US)) || 
    (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) && 
    gameMode(EU) == 0 && difficulty(EU) == 2 && numOfPlayers(EU) == 4 && p1Char(EU) == 24 && p2Char(EU) == 25 && p3Char(EU) == 0 && p4Char(EU) == 16 && 
    p1RoundsWon(EU) == 2 && p1RoundsWon(EU) > prev(p1RoundsWon(EU)) && PointCheat(EU) && EUStoryCheat(EU))
)

achievement(
    title = "Smooth Moves",
    description = "Win a game of Hard Classic Melee with a score of at least 5,000.",
    points = 5,
    trigger = always_true() && (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) && 
    gameMode(US) == 1 && difficulty(US) == 2 && p1TotalRoundPoints(US) >= 5000 && 
    p1RoundsWon(US) > prev(p1RoundsWon(US)) && PointCheat(US) && StoryCheat(US)) || 
    (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) && 
    gameMode(EU) == 1 && difficulty(EU) == 2 && p1TotalRoundPoints(EU) >= 5000 && 
    p1RoundsWon(EU) == 2 && p1RoundsWon(EU) > prev(p1RoundsWon(EU)) && PointCheat(EU) && EUStoryCheat(EU))
)

achievement(
    title = "Unleashed Destruction",
    description = "Win a game of Classic Destruction with a score of at least 10,000.",
    points = 5,
    trigger = always_true() && (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) && 
    gameMode(US) == 2 && p1TotalRoundPoints(US) >= 10000 && 
    p1RoundsWon(US) > prev(p1RoundsWon(US)) && PointCheat(US) && StoryCheat(US)) || 
    (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) && 
    gameMode(EU) == 2 && p1TotalRoundPoints(EU) >= 10000 && 
    p1RoundsWon(EU) == 2 && p1RoundsWon(EU) > prev(p1RoundsWon(EU)) && PointCheat(EU) && EUStoryCheat(EU))
)

// Custom default settings
//  custom1GameMode(US) == 0 && custom1PointsEarned(US) == 0 && custom1NumberOfRespawns(US) == 0 && 
//  custom1RoundLength(US) == 3 && custom1RoundsForWin(US) == 1 && custom1MilitarySettings(US) == 0 && 
//  custom1MilitaryAggression(US) == 10 && custom1VehicleTypes(US) == 45 && custom1PowerupTypes(US) == 10 && 
//  custom1PowerupSpawnRate(US) == 10 && custom1PowerSurgeTypes(US) == 0 && custom1PowerSurgeSpawnRate(US) == 0 && 
//  custom1CriticalMassAccumulation(US) == 10 && custom1Teams(US) == 0 && custom1TeamSelection(US) == 0 && 
//  custom1HealthRegenerate(US) == 10 && custom1EnergyRegenerate(US) == 10 && custom1MonsterSpeed(US) == 1

achievement(
    title = "Burning Godzilla",
    description = "Win a Hard Custom game as Godzilla 1990's against P2 as Biollante, P3 as Mecha-King Ghidorah, and P4 as Destoroyah with default settings except slowest monster speed and maxed out Power Surge & Critical Mass settings.",
    points = 5,
    trigger = always_true() && (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) && 
    gameMode(US) == 4 && difficulty(US) == 2 && numOfPlayers(US) == 4 && p1Char(US) == 25 && p2Char(US) == 19 && p3Char(US) == 14 && p4Char(US) == 17 && 
    custom1GameMode(US) == 0 && custom1NumberOfRespawns(US) == 0 && 
    custom1RoundLength(US) == 3 && custom1RoundsForWin(US) == 1 && custom1MilitarySettings(US) == 0 && 
    custom1MilitaryAggression(US) == 10 && custom1VehicleTypes(US) == 45 && custom1PowerupTypes(US) == 10 && 
    custom1PowerupSpawnRate(US) == 10 && custom1PowerSurgeTypes(US) == 127 && custom1PowerSurgeSpawnRate(US) == 20 && 
    custom1CriticalMassAccumulation(US) == 20 && custom1Teams(US) == 0 && 
    custom1HealthRegenerate(US) == 10 && custom1EnergyRegenerate(US) == 10 && custom1MonsterSpeed(US) == 0 && 
    p1RoundsWon(US) == 2 && p1RoundsWon(US) > prev(p1RoundsWon(US)) && PointCheat(US) && StoryCheat(US)) || 
    (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) && 
    gameMode(US) == 5 && difficulty(US) == 2 && numOfPlayers(US) == 4 && p1Char(US) == 25 && p2Char(US) == 19 && p3Char(US) == 14 && p4Char(US) == 17 && 
    custom2GameMode(US) == 0 && custom2NumberOfRespawns(US) == 0 && 
    custom2RoundLength(US) == 3 && custom2RoundsForWin(US) == 1 && custom2MilitarySettings(US) == 0 && 
    custom2MilitaryAggression(US) == 10 && custom2VehicleTypes(US) == 45 && custom2PowerupTypes(US) == 10 && 
    custom2PowerupSpawnRate(US) == 10 && custom2PowerSurgeTypes(US) == 127 && custom2PowerSurgeSpawnRate(US) == 20 && 
    custom2CriticalMassAccumulation(US) == 20 && custom2Teams(US) == 0 && 
    custom2HealthRegenerate(US) == 10 && custom2EnergyRegenerate(US) == 10 && custom2MonsterSpeed(US) == 0 && 
    p1RoundsWon(US) == 2 && p1RoundsWon(US) > prev(p1RoundsWon(US)) && PointCheat(US) && StoryCheat(US)) || 
    (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) && 
    gameMode(US) == 6 && difficulty(US) == 2 && numOfPlayers(US) == 4 && p1Char(US) == 25 && p2Char(US) == 19 && p3Char(US) == 14 && p4Char(US) == 17 && 
    custom3GameMode(US) == 0 && custom3NumberOfRespawns(US) == 0 && 
    custom3RoundLength(US) == 3 && custom3RoundsForWin(US) == 1 && custom3MilitarySettings(US) == 0 && 
    custom3MilitaryAggression(US) == 10 && custom3VehicleTypes(US) == 45 && custom3PowerupTypes(US) == 10 && 
    custom3PowerupSpawnRate(US) == 10 && custom3PowerSurgeTypes(US) == 127 && custom3PowerSurgeSpawnRate(US) == 20 && 
    custom3CriticalMassAccumulation(US) == 20 && custom3Teams(US) == 0 && 
    custom3HealthRegenerate(US) == 10 && custom3EnergyRegenerate(US) == 10 && custom3MonsterSpeed(US) == 0 && 
    p1RoundsWon(US) == 2 && p1RoundsWon(US) > prev(p1RoundsWon(US)) && PointCheat(US) && StoryCheat(US)) || 
    (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) && 
    gameMode(US) == 7 && difficulty(US) == 2 && numOfPlayers(US) == 4 && p1Char(US) == 25 && p2Char(US) == 19 && p3Char(US) == 14 && p4Char(US) == 17 && 
    custom4GameMode(US) == 0 && custom4NumberOfRespawns(US) == 0 && 
    custom4RoundLength(US) == 3 && custom4RoundsForWin(US) == 1 && custom4MilitarySettings(US) == 0 && 
    custom4MilitaryAggression(US) == 10 && custom4VehicleTypes(US) == 45 && custom4PowerupTypes(US) == 10 && 
    custom4PowerupSpawnRate(US) == 10 && custom4PowerSurgeTypes(US) == 127 && custom4PowerSurgeSpawnRate(US) == 20 && 
    custom4CriticalMassAccumulation(US) == 20 && custom4Teams(US) == 0 && 
    custom4HealthRegenerate(US) == 10 && custom4EnergyRegenerate(US) == 10 && custom4MonsterSpeed(US) == 0 && 
    p1RoundsWon(US) == 2 && p1RoundsWon(US) > prev(p1RoundsWon(US)) && PointCheat(US) && StoryCheat(US)) || 
    (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) && 
    gameMode(EU) == 4 && difficulty(EU) == 2 && numOfPlayers(EU) == 4 && p1Char(EU) == 25 && p2Char(EU) == 19 && p3Char(EU) == 14 && p4Char(EU) == 17 && 
    custom1GameMode(EU) == 0 && custom1NumberOfRespawns(EU) == 0 && 
    custom1RoundLength(EU) == 3 && custom1RoundsForWin(EU) == 1 && custom1MilitarySettings(EU) == 0 && 
    custom1MilitaryAggression(EU) == 10 && custom1VehicleTypes(EU) == 45 && custom1PowerupTypes(EU) == 10 && 
    custom1PowerupSpawnRate(EU) == 10 && custom1PowerSurgeTypes(EU) == 127 && custom1PowerSurgeSpawnRate(EU) == 20 && 
    custom1CriticalMassAccumulation(EU) == 20 && custom1Teams(EU) == 0 && 
    custom1HealthRegenerate(EU) == 10 && custom1EnergyRegenerate(EU) == 10 && custom1MonsterSpeed(EU) == 0 && 
    p1RoundsWon(EU) == 2 && p1RoundsWon(EU) > prev(p1RoundsWon(EU)) && PointCheat(EU) && EUStoryCheat(EU)) || 
    (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) && 
    gameMode(EU) == 5 && difficulty(EU) == 2 && numOfPlayers(EU) == 4 && p1Char(EU) == 25 && p2Char(EU) == 19 && p3Char(EU) == 14 && p4Char(EU) == 17 && 
    custom2GameMode(EU) == 0 && custom2NumberOfRespawns(EU) == 0 && 
    custom2RoundLength(EU) == 3 && custom2RoundsForWin(EU) == 1 && custom2MilitarySettings(EU) == 0 && 
    custom2MilitaryAggression(EU) == 10 && custom2VehicleTypes(EU) == 45 && custom2PowerupTypes(EU) == 10 && 
    custom2PowerupSpawnRate(EU) == 10 && custom2PowerSurgeTypes(EU) == 127 && custom2PowerSurgeSpawnRate(EU) == 20 && 
    custom2CriticalMassAccumulation(EU) == 20 && custom2Teams(EU) == 0 && 
    custom2HealthRegenerate(EU) == 10 && custom2EnergyRegenerate(EU) == 10 && custom2MonsterSpeed(EU) == 0 && 
    p1RoundsWon(EU) == 2 && p1RoundsWon(EU) > prev(p1RoundsWon(EU)) && PointCheat(EU) && EUStoryCheat(EU)) || 
    (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) && 
    gameMode(EU) == 6 && difficulty(EU) == 2 && numOfPlayers(EU) == 4 && p1Char(EU) == 25 && p2Char(EU) == 19 && p3Char(EU) == 14 && p4Char(EU) == 17 && 
    custom3GameMode(EU) == 0 && custom3NumberOfRespawns(EU) == 0 && 
    custom3RoundLength(EU) == 3 && custom3RoundsForWin(EU) == 1 && custom3MilitarySettings(EU) == 0 && 
    custom3MilitaryAggression(EU) == 10 && custom3VehicleTypes(EU) == 45 && custom3PowerupTypes(EU) == 10 && 
    custom3PowerupSpawnRate(EU) == 10 && custom3PowerSurgeTypes(EU) == 127 && custom3PowerSurgeSpawnRate(EU) == 20 && 
    custom3CriticalMassAccumulation(EU) == 20 && custom3Teams(EU) == 0 && 
    custom3HealthRegenerate(EU) == 10 && custom3EnergyRegenerate(EU) == 10 && custom3MonsterSpeed(EU) == 0 && 
    p1RoundsWon(EU) == 2 && p1RoundsWon(EU) > prev(p1RoundsWon(EU)) && PointCheat(EU) && EUStoryCheat(EU)) || 
    (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) && 
    gameMode(EU) == 7 && difficulty(EU) == 2 && numOfPlayers(EU) == 4 && p1Char(EU) == 25 && p2Char(EU) == 19 && p3Char(EU) == 14 && p4Char(EU) == 17 && 
    custom4GameMode(EU) == 0 && custom4NumberOfRespawns(EU) == 0 && 
    custom4RoundLength(EU) == 3 && custom4RoundsForWin(EU) == 1 && custom4MilitarySettings(EU) == 0 && 
    custom4MilitaryAggression(EU) == 10 && custom4VehicleTypes(EU) == 45 && custom4PowerupTypes(EU) == 10 && 
    custom4PowerupSpawnRate(EU) == 10 && custom4PowerSurgeTypes(EU) == 127 && custom4PowerSurgeSpawnRate(EU) == 20 && 
    custom4CriticalMassAccumulation(EU) == 20 && custom4Teams(EU) == 0 && 
    custom4HealthRegenerate(EU) == 10 && custom4EnergyRegenerate(EU) == 10 && custom4MonsterSpeed(EU) == 0 && 
    p1RoundsWon(EU) == 2 && p1RoundsWon(EU) > prev(p1RoundsWon(EU)) && PointCheat(EU) && EUStoryCheat(EU))
)

achievement(
    title = "GVBA",
    description = "Win a Hard Custom game as Godzilla 2000 on the blue team against P2 as Varan, P3 as Baragon, and P4 as Anguirus on the red team with default settings.",
    points = 10,
    trigger = always_true() && (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) && 
    gameMode(US) == 4 && difficulty(US) == 2 && numOfPlayers(US) == 4 && p1Char(US) == 0 && p2Char(US) == 6 && p3Char(US) == 5 && p4Char(US) == 1 && 
    custom1GameMode(US) == 0 && custom1NumberOfRespawns(US) == 0 && 
    custom1RoundLength(US) == 3 && custom1RoundsForWin(US) == 1 && custom1MilitarySettings(US) == 0 && 
    custom1MilitaryAggression(US) == 10 && custom1VehicleTypes(US) == 45 && custom1PowerupTypes(US) == 10 && 
    custom1PowerupSpawnRate(US) == 10 && custom1PowerSurgeTypes(US) == 0 && custom1PowerSurgeSpawnRate(US) == 0 && 
    custom1CriticalMassAccumulation(US) == 10 && custom1Teams(US) == 1 && custom1TeamSelection(US) == 14 && 
    custom1HealthRegenerate(US) == 10 && custom1EnergyRegenerate(US) == 10 && custom1MonsterSpeed(US) == 1 && 
    p1RoundsWon(US) == 2 && p1RoundsWon(US) > prev(p1RoundsWon(US)) && PointCheat(US) && StoryCheat(US)) || 
    (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) && 
    gameMode(US) == 5 && difficulty(US) == 2 && numOfPlayers(US) == 4 && p1Char(US) == 0 && p2Char(US) == 6 && p3Char(US) == 5 && p4Char(US) == 1 && 
    custom2GameMode(US) == 0 && custom2NumberOfRespawns(US) == 0 && 
    custom2RoundLength(US) == 3 && custom2RoundsForWin(US) == 1 && custom2MilitarySettings(US) == 0 && 
    custom2MilitaryAggression(US) == 10 && custom2VehicleTypes(US) == 45 && custom2PowerupTypes(US) == 10 && 
    custom2PowerupSpawnRate(US) == 10 && custom2PowerSurgeTypes(US) == 0 && custom2PowerSurgeSpawnRate(US) == 0 && 
    custom2CriticalMassAccumulation(US) == 10 && custom2Teams(US) == 1 && custom2TeamSelection(US) == 14 && 
    custom2HealthRegenerate(US) == 10 && custom2EnergyRegenerate(US) == 10 && custom2MonsterSpeed(US) == 1 && 
    p1RoundsWon(US) == 2 && p1RoundsWon(US) > prev(p1RoundsWon(US)) && PointCheat(US) && StoryCheat(US)) || 
    (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) && 
    gameMode(US) == 6 && difficulty(US) == 2 && numOfPlayers(US) == 4 && p1Char(US) == 0 && p2Char(US) == 6 && p3Char(US) == 5 && p4Char(US) == 1 && 
    custom3GameMode(US) == 0 && custom3NumberOfRespawns(US) == 0 && 
    custom3RoundLength(US) == 3 && custom3RoundsForWin(US) == 1 && custom3MilitarySettings(US) == 0 && 
    custom3MilitaryAggression(US) == 10 && custom3VehicleTypes(US) == 45 && custom3PowerupTypes(US) == 10 && 
    custom3PowerupSpawnRate(US) == 10 && custom3PowerSurgeTypes(US) == 0 && custom3PowerSurgeSpawnRate(US) == 0 && 
    custom3CriticalMassAccumulation(US) == 10 && custom3Teams(US) == 1 && custom3TeamSelection(US) == 14 && 
    custom3HealthRegenerate(US) == 10 && custom3EnergyRegenerate(US) == 10 && custom3MonsterSpeed(US) == 1 && 
    p1RoundsWon(US) == 2 && p1RoundsWon(US) > prev(p1RoundsWon(US)) && PointCheat(US) && StoryCheat(US)) || 
    (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) && 
    gameMode(US) == 7 && difficulty(US) == 2 && numOfPlayers(US) == 4 && p1Char(US) == 0 && p2Char(US) == 6 && p3Char(US) == 5 && p4Char(US) == 1 && 
    custom4GameMode(US) == 0 && custom4NumberOfRespawns(US) == 0 && 
    custom4RoundLength(US) == 3 && custom4RoundsForWin(US) == 1 && custom4MilitarySettings(US) == 0 && 
    custom4MilitaryAggression(US) == 10 && custom4VehicleTypes(US) == 45 && custom4PowerupTypes(US) == 10 && 
    custom4PowerupSpawnRate(US) == 10 && custom4PowerSurgeTypes(US) == 0 && custom4PowerSurgeSpawnRate(US) == 0 && 
    custom4CriticalMassAccumulation(US) == 10 && custom4Teams(US) == 1 && custom4TeamSelection(US) == 14 && 
    custom4HealthRegenerate(US) == 10 && custom4EnergyRegenerate(US) == 10 && custom4MonsterSpeed(US) == 1 && 
    p1RoundsWon(US) == 2 && p1RoundsWon(US) > prev(p1RoundsWon(US)) && PointCheat(US) && StoryCheat(US)) || 
    (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) && 
    gameMode(EU) == 4 && difficulty(EU) == 2 && numOfPlayers(EU) == 4 && p1Char(EU) == 0 && p2Char(EU) == 6 && p3Char(EU) == 5 && p4Char(EU) == 1 && 
    custom1GameMode(EU) == 0 && custom1NumberOfRespawns(EU) == 0 && 
    custom1RoundLength(EU) == 3 && custom1RoundsForWin(EU) == 1 && custom1MilitarySettings(EU) == 0 && 
    custom1MilitaryAggression(EU) == 10 && custom1VehicleTypes(EU) == 45 && custom1PowerupTypes(EU) == 10 && 
    custom1PowerupSpawnRate(EU) == 10 && custom1PowerSurgeTypes(EU) == 0 && custom1PowerSurgeSpawnRate(EU) == 0 && 
    custom1CriticalMassAccumulation(EU) == 10 && custom1Teams(EU) == 1 && custom1TeamSelection(EU) == 14 && 
    custom1HealthRegenerate(EU) == 10 && custom1EnergyRegenerate(EU) == 10 && custom1MonsterSpeed(EU) == 1 && 
    p1RoundsWon(EU) == 2 && p1RoundsWon(EU) > prev(p1RoundsWon(EU)) && PointCheat(EU) && EUStoryCheat(EU)) || 
    (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) && 
    gameMode(EU) == 5 && difficulty(EU) == 2 && numOfPlayers(EU) == 4 && p1Char(EU) == 0 && p2Char(EU) == 6 && p3Char(EU) == 5 && p4Char(EU) == 1 && 
    custom2GameMode(EU) == 0 && custom2NumberOfRespawns(EU) == 0 && 
    custom2RoundLength(EU) == 3 && custom2RoundsForWin(EU) == 1 && custom2MilitarySettings(EU) == 0 && 
    custom2MilitaryAggression(EU) == 10 && custom2VehicleTypes(EU) == 45 && custom2PowerupTypes(EU) == 10 && 
    custom2PowerupSpawnRate(EU) == 10 && custom2PowerSurgeTypes(EU) == 0 && custom2PowerSurgeSpawnRate(EU) == 0 && 
    custom2CriticalMassAccumulation(EU) == 10 && custom2Teams(EU) == 1 && custom2TeamSelection(EU) == 14 && 
    custom2HealthRegenerate(EU) == 10 && custom2EnergyRegenerate(EU) == 10 && custom2MonsterSpeed(EU) == 1 && 
    p1RoundsWon(EU) == 2 && p1RoundsWon(EU) > prev(p1RoundsWon(EU)) && PointCheat(EU) && EUStoryCheat(EU)) || 
    (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) && 
    gameMode(EU) == 6 && difficulty(EU) == 2 && numOfPlayers(EU) == 4 && p1Char(EU) == 0 && p2Char(EU) == 6 && p3Char(EU) == 5 && p4Char(EU) == 1 && 
    custom3GameMode(EU) == 0 && custom3NumberOfRespawns(EU) == 0 && 
    custom3RoundLength(EU) == 3 && custom3RoundsForWin(EU) == 1 && custom3MilitarySettings(EU) == 0 && 
    custom3MilitaryAggression(EU) == 10 && custom3VehicleTypes(EU) == 45 && custom3PowerupTypes(EU) == 10 && 
    custom3PowerupSpawnRate(EU) == 10 && custom3PowerSurgeTypes(EU) == 0 && custom3PowerSurgeSpawnRate(EU) == 0 && 
    custom3CriticalMassAccumulation(EU) == 10 && custom3Teams(EU) == 1 && custom3TeamSelection(EU) == 14 && 
    custom3HealthRegenerate(EU) == 10 && custom3EnergyRegenerate(EU) == 10 && custom3MonsterSpeed(EU) == 1 && 
    p1RoundsWon(EU) == 2 && p1RoundsWon(EU) > prev(p1RoundsWon(EU)) && PointCheat(EU) && EUStoryCheat(EU)) || 
    (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) && 
    gameMode(EU) == 7 && difficulty(EU) == 2 && numOfPlayers(EU) == 4 && p1Char(EU) == 0 && p2Char(EU) == 6 && p3Char(EU) == 5 && p4Char(EU) == 1 && 
    custom4GameMode(EU) == 0 && custom4NumberOfRespawns(EU) == 0 && 
    custom4RoundLength(EU) == 3 && custom4RoundsForWin(EU) == 1 && custom4MilitarySettings(EU) == 0 && 
    custom4MilitaryAggression(EU) == 10 && custom4VehicleTypes(EU) == 45 && custom4PowerupTypes(EU) == 10 && 
    custom4PowerupSpawnRate(EU) == 10 && custom4PowerSurgeTypes(EU) == 0 && custom4PowerSurgeSpawnRate(EU) == 0 && 
    custom4CriticalMassAccumulation(EU) == 10 && custom4Teams(EU) == 1 && custom4TeamSelection(EU) == 14 && 
    custom4HealthRegenerate(EU) == 10 && custom4EnergyRegenerate(EU) == 10 && custom4MonsterSpeed(EU) == 1 && 
    p1RoundsWon(EU) == 2 && p1RoundsWon(EU) > prev(p1RoundsWon(EU)) && PointCheat(EU) && EUStoryCheat(EU))
)

achievement(
    title = "Guardian Monsters", 
    description = "Unlock all of the Earth Defender monsters.", 
    points = 10,
    trigger = always_true() && (USHash() && Guards(US) && Cheat(US) && OutgameCheck(US) && 
    __ornext(monstersUnlocked1(bit0, US) > prev(monstersUnlocked1(bit0, US)) || 
    monstersUnlocked1(bit1, US) > prev(monstersUnlocked1(bit1, US)) || 
    monstersUnlocked2(bit1, US) > prev(monstersUnlocked2(bit1, US)) || 
    monstersUnlocked3(bit4, US) > prev(monstersUnlocked3(bit4, US)) || 
    monstersUnlocked3(bit5, US) > prev(monstersUnlocked3(bit5, US))) && 
    monstersUnlocked1(bit0, US) == 1 && monstersUnlocked1(bit1, US) == 1 && 
    monstersUnlocked2(bit1, US) == 1 && monstersUnlocked3(bit4, US) == 1 && 
    monstersUnlocked3(bit5, US) == 1 && 
    monstersAvailable1(bit0, US) == 1 && monstersAvailable1(bit1, US) == 1 && 
    monstersAvailable2(bit1, US) == 1 && monstersAvailable3(bit4, US) == 1 && 
    monstersAvailable3(bit5, US) == 1 && PointCheat(US) && StoryCheat(US) || EUHash() && Guards(EU) && Cheat(EU) && OutgameCheck(EU) && 
    __ornext(monstersUnlocked1(bit0, EU) > prev(monstersUnlocked1(bit0, EU)) || 
    monstersUnlocked1(bit1, EU) > prev(monstersUnlocked1(bit1, EU)) || 
    monstersUnlocked2(bit1, EU) > prev(monstersUnlocked2(bit1, EU)) || 
    monstersUnlocked3(bit4, EU) > prev(monstersUnlocked3(bit4, EU)) || 
    monstersUnlocked3(bit5, EU) > prev(monstersUnlocked3(bit5, EU))) && 
    monstersUnlocked1(bit0, EU) == 1 && monstersUnlocked1(bit1, EU) == 1 && 
    monstersUnlocked2(bit1, EU) == 1 && monstersUnlocked3(bit4, EU) == 1 && 
    monstersUnlocked3(bit5, EU) == 1 && 
    monstersAvailable1(bit0, EU) == 1 && monstersAvailable1(bit1, EU) == 1 && 
    monstersAvailable2(bit1, EU) == 1 && monstersAvailable3(bit4, EU) == 1 && 
    monstersAvailable3(bit5, EU) == 1 && PointCheat(EU) && EUStoryCheat(EU))
)

achievement(
    title = "GDF Strong", 
    description = "Unlock all of the GDF monsters.", 
    points = 10,
    trigger = always_true() && (USHash() && Guards(US) && Cheat(US) && OutgameCheck(US) && 
    __ornext(monstersUnlocked2(bit6, US) > prev(monstersUnlocked2(bit6, US)) || 
    monstersUnlocked3(bit0, US) > prev(monstersUnlocked3(bit0, US)) || 
    monstersUnlocked3(bit1, US) > prev(monstersUnlocked3(bit1, US)) || 
    monstersUnlocked3(bit2, US) > prev(monstersUnlocked3(bit2, US))) && 
    monstersUnlocked2(bit6, US) == 1 && monstersUnlocked3(bit0, US) == 1 && 
    monstersUnlocked3(bit1, US) == 1 && monstersUnlocked3(bit2, US) == 1 && 
    monstersAvailable2(bit6, US) == 1 && monstersAvailable3(bit0, US) == 1 && 
    monstersAvailable3(bit1, US) == 1 && monstersAvailable3(bit2, US) == 1 && PointCheat(US) && StoryCheat(US)
    || EUHash() && Guards(EU) && Cheat(EU) && OutgameCheck(EU) && 
    __ornext(monstersUnlocked2(bit6, EU) > prev(monstersUnlocked2(bit6, EU)) || 
    monstersUnlocked3(bit0, EU) > prev(monstersUnlocked3(bit0, EU)) || 
    monstersUnlocked3(bit1, EU) > prev(monstersUnlocked3(bit1, EU)) || 
    monstersUnlocked3(bit2, EU) > prev(monstersUnlocked3(bit2, EU))) && 
    monstersUnlocked2(bit6, EU) == 1 && monstersUnlocked3(bit0, EU) == 1 && 
    monstersUnlocked3(bit1, EU) == 1 && monstersUnlocked3(bit2, EU) == 1 && 
    monstersAvailable2(bit6, EU) == 1 && monstersAvailable3(bit0, EU) == 1 && 
    monstersAvailable3(bit1, EU) == 1 && monstersAvailable3(bit2, EU) == 1 && PointCheat(EU) && EUStoryCheat(EU))
)

achievement(
    title = "Terraphobe", 
    description = "Unlock all of the Alien monsters.", 
    points = 10,
    trigger = always_true() && (USHash() && Guards(US) && Cheat(US) && OutgameCheck(US) && 
    __ornext(monstersUnlocked3(bit3, US) > prev(monstersUnlocked3(bit3, US)) || 
    monstersUnlocked3(bit6, US) > prev(monstersUnlocked3(bit6, US))) && 
    monstersUnlocked3(bit3, US) == 1 && monstersUnlocked3(bit6, US) == 1 && 
    monstersAvailable3(bit3, US) == 1 && monstersAvailable3(bit6, US) == 1 && PointCheat(US) && StoryCheat(US)
    || EUHash() && Guards(EU) && Cheat(EU) && OutgameCheck(EU) && 
    __ornext(monstersUnlocked3(bit3, EU) > prev(monstersUnlocked3(bit3, EU)) || 
    monstersUnlocked3(bit6, EU) > prev(monstersUnlocked3(bit6, EU))) && 
    monstersUnlocked3(bit3, EU) == 1 && monstersUnlocked3(bit6, EU) == 1 && 
    monstersAvailable3(bit3, EU) == 1 && monstersAvailable3(bit3, EU) == 1 && PointCheat(EU) && EUStoryCheat(EU))
)

achievement(
    title = "Lone Wolves", 
    description = "Unlock all of the Mutant monsters.", 
    points = 10,
    trigger = always_true() && (USHash() && Guards(US) && Cheat(US) && OutgameCheck(US) && 
    __ornext(monstersUnlocked2(bit0, US) > prev(monstersUnlocked2(bit0, US)) || 
    monstersUnlocked2(bit2, US) > prev(monstersUnlocked2(bit2, US)) || 
    monstersUnlocked2(bit3, US) > prev(monstersUnlocked2(bit3, US)) || 
    monstersUnlocked2(bit4, US) > prev(monstersUnlocked2(bit4, US)) || 
    monstersUnlocked2(bit5, US) > prev(monstersUnlocked2(bit5, US)) || 
    monstersUnlocked2(bit7, US) > prev(monstersUnlocked2(bit7, US))) && 
    monstersUnlocked2(bit0, US) == 1 && monstersUnlocked2(bit2, US) == 1 && 
    monstersUnlocked2(bit3, US) == 1 && monstersUnlocked2(bit4, US) == 1 && 
    monstersUnlocked2(bit5, US) == 1 && monstersUnlocked2(bit7, US) == 1 && 
    monstersAvailable2(bit0, US) == 1 && monstersAvailable2(bit2, US) == 1 && 
    monstersAvailable2(bit3, US) == 1 && monstersAvailable2(bit4, US) == 1 && 
    monstersAvailable2(bit5, US) == 1 && monstersAvailable2(bit7, US) == 1 && PointCheat(US) && StoryCheat(US)
    || EUHash() && Guards(EU) && Cheat(EU) && OutgameCheck(EU) && 
    __ornext(monstersUnlocked2(bit0, EU) > prev(monstersUnlocked2(bit0, EU)) || 
    monstersUnlocked2(bit2, EU) > prev(monstersUnlocked2(bit2, EU)) || 
    monstersUnlocked2(bit3, EU) > prev(monstersUnlocked2(bit3, EU)) || 
    monstersUnlocked2(bit4, EU) > prev(monstersUnlocked2(bit4, EU)) || 
    monstersUnlocked2(bit5, EU) > prev(monstersUnlocked2(bit5, EU)) || 
    monstersUnlocked2(bit7, EU) > prev(monstersUnlocked2(bit7, EU))) && 
    monstersUnlocked2(bit0, EU) == 1 && monstersUnlocked2(bit2, EU) == 1 && 
    monstersUnlocked2(bit3, EU) == 1 && monstersUnlocked2(bit4, EU) == 1 && 
    monstersUnlocked2(bit5, EU) == 1 && monstersUnlocked2(bit7, EU) == 1 && 
    monstersAvailable2(bit0, EU) == 1 && monstersAvailable2(bit2, EU) == 1 && 
    monstersAvailable2(bit3, EU) == 1 && monstersAvailable2(bit4, EU) == 1 && 
    monstersAvailable2(bit5, EU) == 1 && monstersAvailable2(bit7, EU) == 1 && PointCheat(EU) && EUStoryCheat(EU))
)

achievement(
    title = "Gojira", 
    description = "Unlock Godzilla 1954.", 
    points = 25,
    trigger = always_true() && (USHash() && Guards(US) && Cheat(US) && OutgameCheck(US) && 
    monstersUnlocked3(bit7, US) > prev(monstersUnlocked3(bit7, US)) && 
    monstersUnlocked3(bit7, US) == 1 && monstersAvailable3(bit7, US) == 1 && PointCheat(US) && StoryCheat(US) || EUHash() && Guards(EU) && Cheat(EU) && OutgameCheck(EU) && 
    monstersUnlocked3(bit7, EU) > prev(monstersUnlocked3(bit7, EU)) && 
    monstersUnlocked3(bit7, EU) == 1 && monstersAvailable3(bit7, EU) == 1 && PointCheat(EU) && EUStoryCheat(EU))
)

achievement(
    title = "Worldwide Destruction", 
    description = "Unlock all of the Environments.", 
    points = 10,
    trigger = always_true() && (USHash() && Guards(US) && Cheat(US) && OutgameCheck(US) && 
    environments(US) > prev(environments(US)) && environments(US) == 127 && PointCheat(US) && StoryCheat(US) || EUHash() && Guards(EU) && Cheat(EU) && OutgameCheck(EU) && 
    environments(EU) > prev(environments(EU)) && environments(EU) == 127 && PointCheat(EU) && EUStoryCheat(EU))
)

achievement(
    title = "Concept Collector", 
    description = "Unlock all of the Gallery 1 items.", 
    points = 10,
    trigger = always_true() && (USHash() && Guards(US) && Cheat(US) && OutgameCheck(US) && 
    __ornext(gallery11(US) > prev(gallery11(US)) || gallery12(US) > prev(gallery12(US)) || 
    gallery13(US) > prev(gallery13(US)) || gallery14(US) > prev(gallery14(US))) && 
    gallery11(US) == 7 && gallery12(US) == 255 && gallery13(US) == 255 && gallery14(US) == 255 && PointCheat(US) && StoryCheat(US)
    || EUHash() && Guards(EU) && Cheat(EU) && OutgameCheck(EU) && 
    __ornext(gallery11(EU) > prev(gallery11(EU)) || gallery12(EU) > prev(gallery12(EU)) || 
    gallery13(EU) > prev(gallery13(EU)) || gallery14(EU) > prev(gallery14(EU))) && 
    gallery11(EU) == 7 && gallery12(EU) == 255 && gallery13(EU) == 255 && gallery14(EU) == 255 && PointCheat(EU) && EUStoryCheat(EU))
)

achievement(
    title = "Monster Files", 
    description = "Unlock all of the Gallery 2 items.", 
    points = 25,
    trigger = always_true() && (USHash() && Guards(US) && Cheat(US) && OutgameCheck(US) && 
    __ornext(gallery21(US) > prev(gallery21(US)) || gallery22(US) > prev(gallery22(US)) || 
    gallery23(US) > prev(gallery23(US)) || gallery24(US) > prev(gallery24(US))) && 
    gallery21(US) == 3 && gallery22(US) == 255 && gallery23(US) == 255 && gallery24(US) == 255 && PointCheat(US) && StoryCheat(US)
    || EUHash() && Guards(EU) && Cheat(EU) && OutgameCheck(EU) && 
    __ornext(gallery21(EU) > prev(gallery21(EU)) || gallery22(EU) > prev(gallery22(EU)) || 
    gallery23(EU) > prev(gallery23(EU)) || gallery24(EU) > prev(gallery24(EU))) && 
    gallery21(EU) == 3 && gallery22(EU) == 255 && gallery23(EU) == 255 && gallery24(EU) == 255 && PointCheat(EU) && EUStoryCheat(EU))
)

leaderboard(
    title = "Point Cheater",
    description = "Gained 9000 points while outside of a match.",
    start  = always_true() && (USHash() && Guards(US) && OutgameCheck(US) &&
             (storePoints(US) - (prev(storePoints(US)))) == 90000) || 
             (EUHash() && Guards(EU) && OutgameCheck(EU) && 
             (storePoints(EU) - (prev(storePoints(EU)))) == 90000),
    cancel = always_false(),
    submit = always_true(),
    value  = measured(0),
    format = "VALUE"
)

leaderboard(
    title = "Unlock Cheater",
    description = "Unlocked everything.",
    start  = always_true() && (USHash() && Guards(US) && storeCheat(US) == 255) || 
    (EUHash() && Guards(EU) && storeCheat(EU) == 255),
    cancel = always_false(),
    submit = always_true(),
    value  = measured(0),
    format = "VALUE"
)

leaderboard(
    title = "Story Cheater",
    description = "Changed the Story Day value while outside of a match.",
    start  = always_true() && (USHash() && Guards(US) && OutgameCheck(US) &&
             MainMenu(US) && (storyDay(US) - (prev(storyDay(US)))) > 0) || 
             (EUHash() && Guards(EU) && OutgameCheck(EU) &&
             EUMainMenu(EU) && (storyDay(EU) - (prev(storyDay(EU)))) > 0),
    cancel = always_false(),
    submit = always_true(),
    value  = measured(0),
    format = "VALUE"
)

leaderboard(
    title = "Classic Melee",
    description = "Earn the most points in a game of Classic Melee.",
    start  = always_true() && (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) &&
             gameMode(US) == 1) && prev(p1RoundsWon(US)) == 0 && p1RoundsWon(US) == 1 || 
             (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) &&
             gameMode(EU) == 1 && prev(p1RoundsWon(EU)) == 0 && p1RoundsWon(EU) == 1),
    cancel = always_false(),
    submit = always_true(),
    value  = max_of(
             measured(p1TotalRoundPoints(US), when=USHash()),
             measured(p1TotalRoundPoints(EU), when=EUHash())
             ),
    format = "VALUE"
)

leaderboard(
    title = "Classic Destruction",
    description = "Earn the most points in a game of Classic Destruction.",
    start  = always_true() && (USHash() && BrawlGuards(US) && Cheat(US) && IngameCheck(US) &&
             gameMode(US) == 2) && prev(p1RoundsWon(US)) == 0 && p1RoundsWon(US) == 1 || 
             (EUHash() && BrawlGuards(EU) && Cheat(EU) && IngameCheck(EU) &&
             gameMode(EU) == 2 && prev(p1RoundsWon(EU)) == 0 && p1RoundsWon(EU) == 1),
    cancel = always_false(),
    submit = always_true(),
    value  = max_of(
             measured(p1TotalRoundPoints(US), when=USHash()),
             measured(p1TotalRoundPoints(EU), when=EUHash())
             ),
    format = "VALUE"
)

Chars = {
    0:"Godzilla 2000",
    1:"Anguirus",
    2:"Fire Rodan",
    3:"Mothra Larva",
    4:"King Caesar",
    5:"Baragon",
    6:"Varan",
    7:"Gigan",
    8:"Megalon",
    9:"King Ghidorah",
    10:"Orga",
    11:"Mechagodzilla",
    12:"Kiryu",
    13:"Moguera",
    14:"Mecha-King Ghidorah",
    15:"Jet Jaguar",
    16:"SpaceGodzilla",
    17:"Destoroyah",
    18:"Krystalak",
    19:"Biollante",
    20:"Megaguirus",
    21:"Titanosaurus",
    22:"Obsidius",
    23:"Mechagodzilla 2",
    24:"Godzilla 1954",
    25:"Godzilla 1990s",
    26:"Mothra"
}

Diffs = {
    0:"Easy",
    1:"Normal",
    2:"Hard"
}

UnlockCheat = {
    0:"",
    255:" • Store Unlocked!"
}

rich_presence_conditional_display((USHash() && demoMode(US) == 16777216 || 
    EUHash() && demoMode(EU) == 16777216), 
    "Watching the Demo"
)

rich_presence_conditional_display(USHash() && Guards(US) && MainMenu(US), 
    "Main Menu • {0}{1}",
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)

rich_presence_conditional_display(EUHash() && Guards(EU) && MainMenu(EU), 
    "Main Menu • {0}{1}",
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)

rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 3 && IngameCheck(US) && training(US) == 0x5f, 
    "{0} is Training against {1} • {2}{3}",
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 3 && IngameCheck(EU) && training(EU) == 0x5f, 
    "{0} is Training against {1} • {2}{3}",
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)

rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 0 && IngameCheck(US) && story(US) == 1, 
    "{0} is on Day {1} of {2} Story • {3}{4}",
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_macro("Number", storyDay(US)),
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 0 && IngameCheck(EU) && story(EU) == 1, 
    "{0} is on Day {1} of {2} Story • {3}{4}",
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_macro("Number", storyDay(EU)),
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)

rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 0 && IngameCheck(US) && numOfPlayers(US) == 2, 
    "{0} Versus: {1} vs. {2} • {3}-{4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_macro("Number", p1RoundsWon(US)),
    rich_presence_macro("Number", p2RoundsWon(US)),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 0 && IngameCheck(EU) && numOfPlayers(EU) == 2, 
    "{0} Versus: {1} vs. {2} • {3}-{4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_macro("Number", p1RoundsWon(EU)),
    rich_presence_macro("Number", p2RoundsWon(EU)),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 0 && IngameCheck(US) && numOfPlayers(US) == 3, 
    "{0} Versus: {1} vs. {2} vs. {3} • {4}-{5}-{6} • {7}{8}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_macro("Number", p1RoundsWon(US)),
    rich_presence_macro("Number", p2RoundsWon(US)),
    rich_presence_macro("Number", p3RoundsWon(US)),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 0 && IngameCheck(EU) && numOfPlayers(EU) == 3, 
    "{0} Versus: {1} vs. {2} vs. {3} • {4}-{5}-{6} • {7}{8}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_macro("Number", p1RoundsWon(EU)),
    rich_presence_macro("Number", p2RoundsWon(EU)),
    rich_presence_macro("Number", p3RoundsWon(EU)),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 0 && IngameCheck(US) && numOfPlayers(US) == 4, 
    "{0} Versus: {1} vs. {2} vs. {3} vs. {4} • {5}-{6}-{7}-{8} • {9}{10}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_lookup("Char", p4Char(US), Chars),
    rich_presence_macro("Number", p1RoundsWon(US)),
    rich_presence_macro("Number", p2RoundsWon(US)),
    rich_presence_macro("Number", p3RoundsWon(US)),
    rich_presence_macro("Number", p4RoundsWon(US)),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 0 && IngameCheck(EU) && numOfPlayers(EU) == 4, 
    "{0} Versus: {1} vs. {2} vs. {3} vs. {4} • {5}-{6}-{7}-{8} • {9}{10}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_lookup("Char", p4Char(EU), Chars),
    rich_presence_macro("Number", p1RoundsWon(EU)),
    rich_presence_macro("Number", p2RoundsWon(EU)),
    rich_presence_macro("Number", p3RoundsWon(EU)),
    rich_presence_macro("Number", p4RoundsWon(EU)),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)

rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 1 && IngameCheck(US) && numOfPlayers(US) == 2, 
    "{0} Classic Melee: {1} vs. {2} • {3}-{4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(US)),
    rich_presence_macro("Number", p2TotalRoundPoints(US)),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 1 && IngameCheck(EU) && numOfPlayers(EU) == 2, 
    "{0} Classic Melee: {1} vs. {2} • {3}-{4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(EU)),
    rich_presence_macro("Number", p2TotalRoundPoints(EU)),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 1 && IngameCheck(US) && numOfPlayers(US) == 3, 
    "{0} Classic Melee: {1} vs. {2} vs. {3} • {4}-{5}-{6} • {7}{8}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(US)),
    rich_presence_macro("Number", p2TotalRoundPoints(US)),
    rich_presence_macro("Number", p3TotalRoundPoints(US)),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 1 && IngameCheck(EU) && numOfPlayers(EU) == 3, 
    "{0} Classic Melee: {1} vs. {2} vs. {3} • {4}-{5}-{6} • {7}{8}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(EU)),
    rich_presence_macro("Number", p2TotalRoundPoints(EU)),
    rich_presence_macro("Number", p3TotalRoundPoints(EU)),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 1 && IngameCheck(US) && numOfPlayers(US) == 4, 
    "{0} Classic Melee: {1} vs. {2} vs. {3} vs. {4} • {5}-{6}-{7}-{8} • {9}{10}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_lookup("Char", p4Char(US), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(US)),
    rich_presence_macro("Number", p2TotalRoundPoints(US)),
    rich_presence_macro("Number", p3TotalRoundPoints(US)),
    rich_presence_macro("Number", p4TotalRoundPoints(US)),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 1 && IngameCheck(EU) && numOfPlayers(EU) == 4, 
    "{0} Classic Melee: {1} vs. {2} vs. {3} vs. {4} • {5}-{6}-{7}-{8} • {9}{10}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_lookup("Char", p4Char(EU), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(EU)),
    rich_presence_macro("Number", p2TotalRoundPoints(EU)),
    rich_presence_macro("Number", p3TotalRoundPoints(EU)),
    rich_presence_macro("Number", p4TotalRoundPoints(EU)),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)

rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 2 && IngameCheck(US) && numOfPlayers(US) == 2, 
    "{0} Classic Destruction: {1} vs. {2} • {3}-{4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(US)),
    rich_presence_macro("Number", p2TotalRoundPoints(US)),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 2 && IngameCheck(EU) && numOfPlayers(EU) == 2, 
    "{0} Classic Destruction: {1} vs. {2} • {3}-{4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(EU)),
    rich_presence_macro("Number", p2TotalRoundPoints(EU)),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 2 && IngameCheck(US) && numOfPlayers(US) == 3, 
    "{0} Classic Destruction: {1} vs. {2} vs. {3} • {4}-{5}-{6} • {7}{8}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(US)),
    rich_presence_macro("Number", p2TotalRoundPoints(US)),
    rich_presence_macro("Number", p3TotalRoundPoints(US)),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 2 && IngameCheck(EU) && numOfPlayers(EU) == 3, 
    "{0} Classic Destruction: {1} vs. {2} vs. {3} • {4}-{5}-{6} • {7}{8}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(EU)),
    rich_presence_macro("Number", p2TotalRoundPoints(EU)),
    rich_presence_macro("Number", p3TotalRoundPoints(EU)),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 2 && IngameCheck(US) && numOfPlayers(US) == 4, 
    "{0} Classic Destruction: {1} vs. {2} vs. {3} vs. {4} • {5}-{6}-{7}-{8} • {9}{10}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_lookup("Char", p4Char(US), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(US)),
    rich_presence_macro("Number", p2TotalRoundPoints(US)),
    rich_presence_macro("Number", p3TotalRoundPoints(US)),
    rich_presence_macro("Number", p4TotalRoundPoints(US)),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 2 && IngameCheck(EU) && numOfPlayers(EU) == 4, 
    "{0} Classic Destruction: {1} vs. {2} vs. {3} vs. {4} • {5}-{6}-{7}-{8} • {9}{10}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_lookup("Char", p4Char(EU), Chars),
    rich_presence_macro("Number", p1TotalRoundPoints(EU)),
    rich_presence_macro("Number", p2TotalRoundPoints(EU)),
    rich_presence_macro("Number", p3TotalRoundPoints(EU)),
    rich_presence_macro("Number", p4TotalRoundPoints(EU)),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)

rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 3 && IngameCheck(US) && numOfPlayers(US) == 2, 
    "{0} Last Man Standing: {1} vs. {2} • {3}{4}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 3 && IngameCheck(EU) && numOfPlayers(EU) == 2, 
    "{0} Last Man Standing: {1} vs. {2} • {3}{4}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 3 && IngameCheck(US) && numOfPlayers(US) == 3, 
    "{0} Last Man Standing: {1} vs. {2} vs. {3} • {4}{5}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 3 && IngameCheck(EU) && numOfPlayers(EU) == 3, 
    "{0} Last Man Standing: {1} vs. {2} vs. {3} • {4}{5}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 3 && IngameCheck(US) && numOfPlayers(US) == 4, 
    "{0} Last Man Standing: {1} vs. {2} vs. {3} vs. {4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_lookup("Char", p4Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 3 && IngameCheck(EU) && numOfPlayers(EU) == 4, 
    "{0} Last Man Standing: {1} vs. {2} vs. {3} vs. {4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_lookup("Char", p4Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)

rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 4 && IngameCheck(US) && numOfPlayers(US) == 2, 
    "{0} Custom 1: {1} vs. {2} • {3}{4}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 4 && IngameCheck(EU) && numOfPlayers(EU) == 2, 
    "{0} Custom 1: {1} vs. {2} • {3}{4}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 4 && IngameCheck(US) && numOfPlayers(US) == 3, 
    "{0} Custom 1: {1} vs. {2} vs. {3} • {4}{5}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 4 && IngameCheck(EU) && numOfPlayers(EU) == 3, 
    "{0} Custom 1: {1} vs. {2} vs. {3} • {4}{5}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 4 && IngameCheck(US) && numOfPlayers(US) == 4, 
    "{0} Custom 1: {1} vs. {2} vs. {3} vs. {4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_lookup("Char", p4Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 4 && IngameCheck(EU) && numOfPlayers(EU) == 4, 
    "{0} Custom 1: {1} vs. {2} vs. {3} vs. {4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_lookup("Char", p4Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)

rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 5 && IngameCheck(US) && numOfPlayers(US) == 2, 
    "{0} Custom 2: {1} vs. {2} • {3}{4}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 5 && IngameCheck(EU) && numOfPlayers(EU) == 2, 
    "{0} Custom 2: {1} vs. {2} • {3}{4}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 5 && IngameCheck(US) && numOfPlayers(US) == 3, 
    "{0} Custom 2: {1} vs. {2} vs. {3} • {4}{5}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 5 && IngameCheck(EU) && numOfPlayers(EU) == 3, 
    "{0} Custom 2: {1} vs. {2} vs. {3} • {4}{5}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 5 && IngameCheck(US) && numOfPlayers(US) == 4, 
    "{0} Custom 2: {1} vs. {2} vs. {3} vs. {4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_lookup("Char", p4Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 5 && IngameCheck(EU) && numOfPlayers(EU) == 4, 
    "{0} Custom 2: {1} vs. {2} vs. {3} vs. {4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_lookup("Char", p4Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)

rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 6 && IngameCheck(US) && numOfPlayers(US) == 2, 
    "{0} Custom 3: {1} vs. {2} • {3}{4}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 6 && IngameCheck(EU) && numOfPlayers(EU) == 2, 
    "{0} Custom 3: {1} vs. {2} • {3}{4}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 6 && IngameCheck(US) && numOfPlayers(US) == 3, 
    "{0} Custom 3: {1} vs. {2} vs. {3} • {4}{5}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 6 && IngameCheck(EU) && numOfPlayers(EU) == 3, 
    "{0} Custom 3: {1} vs. {2} vs. {3} • {4}{5}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 6 && IngameCheck(US) && numOfPlayers(US) == 4, 
    "{0} Custom 3: {1} vs. {2} vs. {3} vs. {4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_lookup("Char", p4Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 6 && IngameCheck(EU) && numOfPlayers(EU) == 4, 
    "{0} Custom 3: {1} vs. {2} vs. {3} vs. {4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_lookup("Char", p4Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)

rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 7 && IngameCheck(US) && numOfPlayers(US) == 2, 
    "{0} Custom 4: {1} vs. {2} • {3}{4}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 7 && IngameCheck(EU) && numOfPlayers(EU) == 2, 
    "{0} Custom 4: {1} vs. {2} • {3}{4}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 7 && IngameCheck(US) && numOfPlayers(US) == 3, 
    "{0} Custom 4: {1} vs. {2} vs. {3} • {4}{5}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 7 && IngameCheck(EU) && numOfPlayers(EU) == 3, 
    "{0} Custom 4: {1} vs. {2} vs. {3} • {4}{5}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)
rich_presence_conditional_display(USHash() && Guards(US) && gameMode(US) == 7 && IngameCheck(US) && numOfPlayers(US) == 4, 
    "{0} Custom 4: {1} vs. {2} vs. {3} vs. {4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(US), Diffs),
    rich_presence_lookup("Char", p1Char(US), Chars),
    rich_presence_lookup("Char", p2Char(US), Chars),
    rich_presence_lookup("Char", p3Char(US), Chars),
    rich_presence_lookup("Char", p4Char(US), Chars),
    rich_presence_macro("Number", storePoints(US)),
    rich_presence_lookup("Cheat", storeCheat(US), UnlockCheat)
)
rich_presence_conditional_display(EUHash() && Guards(EU) && gameMode(EU) == 7 && IngameCheck(EU) && numOfPlayers(EU) == 4, 
    "{0} Custom 4: {1} vs. {2} vs. {3} vs. {4} • {5}{6}",
    rich_presence_lookup("Diff", difficulty(EU), Diffs),
    rich_presence_lookup("Char", p1Char(EU), Chars),
    rich_presence_lookup("Char", p2Char(EU), Chars),
    rich_presence_lookup("Char", p3Char(EU), Chars),
    rich_presence_lookup("Char", p4Char(EU), Chars),
    rich_presence_macro("Number", storePoints(EU)),
    rich_presence_lookup("Cheat", storeCheat(EU), UnlockCheat)
)

rich_presence_display("Our world is on the brink of apocalyptic annihilation!")