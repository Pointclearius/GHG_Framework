/*======================================
	Loadout for Officer / Platoon Lead (Taliban)
======================================*/
class officer_f : soldier_f
{
    

    class Weapon_1 : Weapon_1 // Rifle
    {
        
        class Scopes : Scopes
        {
            acog = "rhs_acc_perst1ik";
        };
    };
    
    class Vest : Vest
    {
        // List of items
        ACRE_PRC152 = 1;
		ACE_MapTools = 1;
		ACE_EntrenchingTool = 0;
    };
	
	class Binoculars : Binoculars
    {
        classname = "Binocular";
    };
	headgear = "LOP_H_Turban_mask";
};