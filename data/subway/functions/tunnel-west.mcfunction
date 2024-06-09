# west = -x

# clean up surrounding mess - USE WITH CAUTION when debugging the function on air or other isolated area
# fill ~-15 ~-5 ~-5 ~ ~7 ~5 air replace

# TODO: cover bedrock with a couple of grass layers

# external blast protection
fill ~-10 ~-3 ~-5 ~ ~5 ~5 bedrock hollow

# clean up corners (TODO: can move this up after covering bedrock with grass)
fill ~-10 ~-3 ~-5 ~ ~-3 ~-5 air hollow
fill ~-10 ~5 ~-5 ~ ~5 ~-5 air hollow
fill ~-10 ~-3 ~5 ~ ~-3 ~5 air hollow
fill ~-10 ~5 ~5 ~ ~5 ~5 air hollow

# interior
fill ~-10 ~-1 ~-3 ~ ~3 ~3 stone hollow

# unblock path
fill ~-10 ~ ~-2 ~ ~2 ~2 air replace

# fill with two ways of rails
fill ~-10 ~ ~-1 ~ ~ ~-1 rail outline
fill ~-10 ~ ~1 ~ ~ ~1 rail outline

# place powered rails
setblock ~-3 ~ ~-1 powered_rail
setblock ~-3 ~ ~1 powered_rail

# place redstone under rails
setblock ~-3 ~-2 ~-1 redstone_torch
setblock ~-3 ~-2 ~1 redstone_torch

# place lights
setblock ~-3 ~4 ~-1 ochre_froglight
setblock ~-3 ~4 ~1 ochre_froglight

# place glass cover
setblock ~-3 ~3 ~-1 gray_stained_glass
setblock ~-3 ~3 ~1 gray_stained_glass
