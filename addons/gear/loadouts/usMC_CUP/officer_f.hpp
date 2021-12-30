/*======================================
	Loadout for Platoon Lead (usMC_CUP)
======================================*/
class officer_f : soldier_f
{
    #include "..\loadout_inherit.hpp" // This must the first line inside of the class!!!!
    
    class Weapon_1 : Weapon_1 // Rifle
    {
        class Scopes : Scopes
        {
            acog = "rhsusf_acc_ACOG_RMR";
        };
    };
    
    class Vest : Vest
    {
		classname = "rhsusf_spc_squadleader";
        // List of items
        ACRE_PRC152 = 1;
		ACE_MapTools = 1;
		ACE_EntrenchingTool = 0;
    };
    
    class Binoculars : Binoculars
    {
        classname = "Binocular";
    };
    
    headgear[] = { "rhsusf_lwh_helmet_marpatd_headset", "rhsusf_lwh_helmet_marpatwd_headset" };
};