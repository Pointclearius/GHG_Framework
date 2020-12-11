/*======================================
		Creates MAT Crate and
		loads into vehicle it was
		called from (usArmy)
======================================*/

params ["_pos", "_dir"];

_crate = createVehicle ["Box_Syndicate_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
_crate setDir _dir;

clearItemCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

_crate addItemCargoGlobal ["ACE_elasticBandage", 6]; 
_crate addItemCargoGlobal ["ACE_packingBandage", 6]; 
_crate addItemCargoGlobal ["rhssaf_30rnd_556x45_EPR_G36", 16]; 
_crate addItemCargoGlobal ["rhs_rpg7_PG7VR_mag", 6]; 
_crate addItemCargoGlobal ["rhs_mag_m67", 3]; 
_crate addItemCargoGlobal ["rhs_mag_an_m8hc", 6];
_crate addItemCargoGlobal ["rhs_mag_M441_HE", 8]; 
_crate addItemCargoGlobal ["rhs_mag_M585_white", 4]; 
_crate addItemCargoGlobal ["rhs_mag_m661_green", 2]; 
_crate addItemCargoGlobal ["rhs_mag_m662_red", 2]; 
_crate addItemCargoGlobal ["rhs_mag_m713_Red", 2]; 
_crate addItemCargoGlobal ["rhs_mag_m715_Green", 2]; 
_crate addItemCargoGlobal ["rhs_mag_m714_White", 4]; 
_crate addItemCargoGlobal ["ACE_EarPlugs", 3];