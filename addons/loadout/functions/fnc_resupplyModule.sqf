#include "script_component.hpp"
/*======================================
	ghg_fnc_resupplyModule
	Adds module for zeus to spawn resupply crates
	Author: BSuz
======================================*/
private _function = {
	params ["_modulePos","_attachedObject"];

	private _baseCratesList = parseSimpleArray (preprocessFile format ["\x\ghg\addons\loadout\loadouts\baseCrateList.sqf"]);
	
	private _baseCrateName = ["Medical"];
	private _baseCrateFile = ["ghg_medical_placeholder"];

	{
		_baseCrateName pushBack (_x select 0);
		_baseCrateFile pushBack (_x select 1);
	} forEach _baseCratesList;

	_baseCrateName append ["Demolitions", "Spare Wheel", "Spare Track", "Vehicle Fuel", "Vehicle Ammo"];
	_baseCrateFile append ["ghg_demolition_placeholder", "ghg_spare_wheel_placeholder", "ghg_spare_track_placeholder", "ghg_vehicle_fuel_placeholder", "ghg_vehicle_ammo_placeholder"];

	[
		"Spawn Resupply",
		[
			[
				"SIDES",
				"Select Side of resupply crate",
				[west],
				true
			],
			[
				"LIST",
				"Choose a resupply package",
				[
					_baseCrateFile,
					_baseCrateName,
					0,
					(10 min ((count _baseCrateName) + 0.5))
				]
			],
			[
					"CHECKBOX",
					"Airdrop Crate",
					false,
					true
			]
		],
		FUNC(zeusSpawnResupplyCrate),
		{},
		[
			_modulePos,
			_attachedObject
		]
	] call zen_dialog_fnc_create;	

};
["Resupply", "Spawn Crate", _function] call zen_custom_modules_fnc_register;