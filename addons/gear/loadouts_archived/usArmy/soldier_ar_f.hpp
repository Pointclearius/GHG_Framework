/*======================================
	Loadout for Autorifleman (usArmy)
======================================*/
class soldier_ar_f : soldier_f
{
    
    
    class Weapon_1 : Weapon_1 // Rifle
    {
        classname = "rhs_weap_m249_pip";
        ammo = "rhsusf_100Rnd_556x45_soft_pouch";
        bipod = "rhsusf_acc_saw_bipod";
    };
    
    class Vest : Vest
    {
        classname[] = { "rhsusf_iotv_ocp_SAW", "rhsusf_iotv_ocp_SAW", "rhsusf_iotv_ocp_SAW", "rhsusf_iotv_ucp_SAW", "rhsusf_iotv_ucp_SAW" };
        // Inherited item overrides
        rhs_mag_30Rnd_556x45_M855A1_Stanag = 0;
        SmokeShell = 1;
        rhs_mag_m67 = 1;
        // List of items
        rhsusf_100Rnd_556x45_soft_pouch = 3;
    };
    
    class Backpack : Backpack
    {
        classname[] = { "rhsusf_assault_eagleaiii_ocp", "rhsusf_assault_eagleaiii_ocp", "rhsusf_assault_eagleaiii_ocp", "rhsusf_assault_eagleaiii_ucp", "rhsusf_assault_eagleaiii_ucp" };
        // List of items
        rhsusf_100Rnd_556x45_soft_pouch = 2;
    };
};