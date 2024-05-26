fill -3704 104 3150 -3704 106 3151 minecraft:redstone_block replace
playsound minecraft:entity.warden.dig
playsound minecraft:entity.zoglin.angry

bossbar add trapped_cave "Trapped Cave"
bossbar set minecraft:trapped_cave max 600
bossbar set minecraft:trapped_cave value 600
bossbar set minecraft:trapped_cave color purple
bossbar set minecraft:trapped_cave style notched_6
bossbar set minecraft:trapped_cave players @a[distance=..5]

team add trapped_cave_team
team modify trapped_cave_team color green
team join trapped_cave_team @a[distance=..5]

scoreboard objectives add trapped_cave_objective minecraft.mined:minecraft.player_head
scoreboard objectives setdisplay sidebar trapped_cave_objective
scoreboard objectives modify trapped_cave_objective displayname "Trapped Cave"
scoreboard players set @a[team=trapped_cave_team] trapped_cave_objective 0
