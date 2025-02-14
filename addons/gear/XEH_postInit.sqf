#include "script_component.hpp"
if ! ( GVARMAIN(is_mission_ghg) ) exitWith {};
/*======================================
    Everything in this file is run once on mission start
	Author: CBA_3
======================================*/
[] call FUNC(aiGearModule);
[] call FUNC(gearUp);
[] call FUNC(resupplyActions);
[] call FUNC(resupplyModule);
[] call FUNC(wreckInit);
[] call FUNC(deleteScopes);
[] call FUNC(anestheticInit);

["gearUp", FUNC(gearUp)] call CBA_fnc_addEventHandler;