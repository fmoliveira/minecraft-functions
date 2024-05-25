# Build Sniffer House

## Playground

/tp @p -5708 62 11722 --> at water level
/fill ~ ~ ~ ~4 ~4 ~4 minecraft:bedrock hollow --> 5x5 cube
/fill -5708 62 11722 -5704 66 11726 bedrock hollow --> 5x5 cube
/fill -5708 62 11722 -5704 66 11726 air replace --> remove cube
/fill -5708 62 11722 -5708 62 11722 bedrock replace --> at water level

## Origin Position

-5730 62 11730 --> start from the left rear end to simplify math, always add on all axis XYZ

scale = 16 blocks
size = 1x3 --> 16x48

## Floor heights

total height = 16
levels = ground, 1f, 2f, roof --> 3 levels + roof = 4 floor tiles
usable height = 16 - 4 = 12 free blocks / 3 levels = 4 blocks tall at each level

## Place command block for relative positioning

/setblock -5731 62 11729 minecraft:command_block
/setblock -5731 63 11729 minecraft:lever[face=floor,facing=west]

## Test relative positioning from command block

/fill ~1 ~ ~1 ~32 ~6 ~16 minecraft:lime_concrete replace
/setblock -5731 62 11729 minecraft:air

# Activate command block script with redstone

<!-- /fill ~1 ~ ~1 ~32 ~16 ~16 minecraft:lime_concrete hollow -->

## Undo all

/execute positioned -5731 60 11729 run fill ~ ~ ~ ~34 ~20 ~18 minecraft:air replace

## Try building without command block

> MUCH BETTER!!!! Forget the command block. Could make this a function and try running the function with "execute positioning" as well.
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>

## POSITIONED EXECUTION BUILD!!!

### Body: 3 floors with 4 blocks tall each, positions OK, will reduce floor height to 3 blocks each

/execute positioned -5731 61 11729 run fill ~1 ~0 ~1 ~32 ~5 ~16 minecraft:red_wool hollow
/execute positioned -5731 61 11729 run fill ~1 ~5 ~1 ~32 ~10 ~16 minecraft:green_wool hollow
/execute positioned -5731 61 11729 run fill ~1 ~10 ~1 ~32 ~15 ~16 minecraft:green_wool hollow

### Head shape IS OK: two floors with 3 blocks tall each, next will define the color splitting on top of the yellow layer

/execute positioned -5731 61 11729 run fill ~33 ~0 ~5 ~48 ~4 ~12 minecraft:yellow_wool hollow
/execute positioned -5731 61 11729 run fill ~33 ~4 ~5 ~48 ~8 ~12 minecraft:yellow_wool hollow

## Head fur

/execute positioned -5731 61 11729 run fill ~33 ~-1 ~4 ~40 ~9 ~13 minecraft:red_wool hollow
/execute positioned -5731 61 11729 run fill ~40 ~0 ~4 ~40 ~9 ~13 minecraft:green_wool hollow

## Legs spread out

>>> CAN PROBABLY DO EACH SIDE ONLY ONCE and repeat with POSITIONED EXECUTION AS WELL!!!

## Undo all

/execute positioned -5731 60 11729 run fill ~ ~ ~ ~50 ~20 ~18 minecraft:air replace

## Execute function with origin position

/execute positioned -5731 60 11729 run function sniffer-house:facing-east

## Undo all with function

/execute positioned -5731 60 11729 run function sniffer-house:undo
