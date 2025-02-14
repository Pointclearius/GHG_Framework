#include "script_component.hpp"
/*======================================
	ghg_fnc_radioJammerSpawnModule
	Called on mission Init
	Author: BSuz
======================================*/

private _function = {
	params ["_modulePos","_attachedObject"];
	if (_attachedObject isEqualTo objNull) exitWith {systemChat "No unit selected"};
	private _jammerFriendlyNames = ["CDF ZiL-131","Sand Humvee"/*,"Woodland Humvee","Black Humvee"*/];
	private _jammerClassNames = ["rhsgref_cdf_b_zil131_flatbed","rhsusf_m998_d_4dr"/*,"rhsusf_m998_w_4dr","LOP_ISTS_OPF_M998_D_4DR"*/];

	[
		"Spawn Jammer",
		[
			[
				"SLIDER:RADIUS",
				"Select range of jammer",
				[
					0,
					5000,
					500,
					0,
					_modulePos,
					[255,0,0,0.8]
				],
				true
			],
			[
				"LIST",
				"Choose a Jammer Vehicle",
				[
					_jammerClassNames,
					_jammerFriendlyNames,
					0,
					(10 min ((count _jammerFriendlyNames) + 0.5))
				]
			]
		],
		FUNC(radioJammerSpawn),
		{},
		[
			_modulePos,
			_attachedObject
		]
	] call zen_dialog_fnc_create;	

};
["Ghost Hawk Gaming", "Jammer - Spawn New", _function] call zen_custom_modules_fnc_register;