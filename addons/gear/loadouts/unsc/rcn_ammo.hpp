/*======================================
	Loadout for Recon Ammo Bearer (unsc)
======================================*/
class rcn_ammo : squad_rifleman
{
    
	
	class Vest : Vest
    {
		OPTRE_4Rnd_145x114_APFSDS_Mag = 6;
		ACE_MapTools = 1;
		ACE_Kestrel4500 = 1;
		ACE_RangeCard = 1;
		ACE_SpottingScope = 1;
		ACE_Tripod = 1;
    };
	
	class Backpack : Backpack
    {
        classname = "OPTRE_UNSC_Rucksack";
        OPTRE_4Rnd_145x114_APFSDS_Mag = 10;
    };
	
};
