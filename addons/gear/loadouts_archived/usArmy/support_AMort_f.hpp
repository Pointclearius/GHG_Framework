/*======================================
	Loadout for Assistant MTR (usArmy)
======================================*/
class support_AMort_f : soldier_f
{
    
	
	class Weapon_3 : Weapon_3 // Launcher
    {
        classname = "ace_csw_carryMortarBaseplate";
    };
	
	class Vest : Vest
    {
        // List of items
		rhs_mag_30Rnd_556x45_M855A1_Stanag = 6;
		ACE_Kestrel4500 = 1;
		ACE_MapTools = 1;
		ACE_artilleryTable = 1;
    };
	
	class Backpack : Backpack
    {
        classname[] = { "B_Carryall_oli", "B_Carryall_mcamo", "B_Carryall_mcamo", "B_Carryall_cbr", "B_Carryall_cbr" };
        // List of items
		ACE_1Rnd_82mm_Mo_HE = 3;
		ACE_1Rnd_82mm_Mo_Smoke = 1;
		ACE_1Rnd_82mm_Mo_Illum = 1;
    };
	
	class Binoculars : Binoculars
    {
        classname = "Binocular";
    };
};