#include "script_component.hpp"
/*======================================
	ghg_fnc_zeusInit
	Handles zeus slot management
	Author: Quantx
======================================*/
if ( isServer ) then
{
    GVAR(zeusGroup) = createGroup sideLogic;

    // Failsafe if ghg_fnc_zeusInitObjects is not run
    [{ time > 10 }, {
        if ( isNil QGVAR(zeusObjects) ) then
        {
            GVAR(zeusObjects) = [];
        };
    }] call CBA_fnc_waitUntilAndExecute;
};

if ( !hasInterface ) exitWith {};

// Ensure virtual zeus players are invincible and force interface
if ( player isKindOf "VirtualCurator_F" ) then
{
	player allowDamage false;
	bis_fnc_forceCuratorInterface_force = true;
	
	[{
		if ( time > 0 ) then
		{
			params ["_args", "_handle"];
		
			if ( isNull curatorCamera ) then
			{
				openCuratorInterface;
			}
			else
			{
				_handle call CBA_fnc_removePerFrameHandler;
			};
		};
	}, 0.25, []] call CBA_fnc_addPerFrameHandler;
};

[{ time > 0 }, {
    [player] remoteExecCall [QFUNC(zeusSetup), 2];
}] call CBA_fnc_waitUntilAndExecute;