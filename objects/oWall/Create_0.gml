/// @description Insert description here
// You can write your code in this editor

randomize();

//spriteSelection = 1;

spriteSelection = irandom_range(1,8);

image_xscale = 2;
image_yscale = 2;

sprite_index = asset_get_index("stonebrick_" + string(spriteSelection))