/*======================================
	Loadout for FAC (Russian)
======================================*/
class soldier_uav_f : soldier_tl_f
{
    
    
	class Weapon_1 : Weapon_1 // Rifle
    {
        grenade = "rhs_GRD40_Red";
    };
	
	class Vest : Vest
	{
		classname[] = {"rhs_6b23_6sh92_vog","rhs_6b23_digi_6sh92_vog","rhs_6b23_ML_6sh92_vog"};
	};
	
    class Backpack : Backpack
    {
        ACRE_PRC117F = 1;
		rhs_VOG25 = 0;
        rhs_VG400P_white = 5;
        rhs_VG400P_green = 3;
        rhs_VG400P_red = 3;
        rhs_GRD40_Red = 4;
        rhs_GRD40_Green = 4;
        rhs_GRD40 = 4;
    };

    class Binoculars : Binoculars
    {
        classname = "Laserdesignator";
        ammo = "Laserbatteries";
    };
};