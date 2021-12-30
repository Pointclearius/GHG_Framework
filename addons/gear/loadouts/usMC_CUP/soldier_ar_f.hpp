/*======================================
	Loadout for Autorifleman (usMC_CUP)
======================================*/
class soldier_ar_f : soldier_f
{
    #include "..\loadout_inherit.hpp" // This must the first line inside of the class!!!!
    
    class Weapon_1 : Weapon_1 // Rifle
    {
        classname = "rhs_weap_m27iar";
        ammo = "rhs_mag_100Rnd_556x45_M855_cmag";
        bipod = "rhsusf_acc_harris_bipod";
    };
    
    class Vest : Vest
    {
        classname = "rhsusf_spc_iar";
        // Inherited item overrides
        CUP_30Rnd_556x45_Stanag = 0;
        SmokeShell = 1;
        rhs_mag_m67 = 1;
        // List of items
        rhs_mag_100Rnd_556x45_M855_cmag = 2;
    };
    
    class Backpack : Backpack
    {
        classname = "rhsusf_assault_eagleaiii_coy";
        // List of items
        rhs_mag_100Rnd_556x45_M855_cmag = 3;
    };
};