/// @function globals();
/// @description Initializes global variables.
function globals() 
{
	
	//Player stats.
	global.maxHP = 5;
	global.hp = global.maxHP;

	//Indexes for player clothing options.
	global.playerHeadIndex = 0;
	global.playerBodyIndex = 0;
	
	//Color indexes.
	global.playerColor = c_orange;

	
	//Bodies.
	var _index = 0;
	while  (asset_get_index("spr_kaijuBody" + string(_index)) != -1)
	{
		global.bodies[_index] = asset_get_index("spr_kaijuBody" + string(_index));
		_index++;
	}
	
	//heads.
	var _index = 0;
	while  (asset_get_index("spr_kaijuHead" + string(_index)) != -1)
	{
		global.heads[_index] = asset_get_index("spr_kaijuHead" + string(_index));
		_index++;
	}
	
	//Particle system.
	global.particleSystem = part_system_create();
	
	//Background music.
	global.bgm = noone;
}
