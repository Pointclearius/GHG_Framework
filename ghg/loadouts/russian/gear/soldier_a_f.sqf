/*======================================
	Loadout for MMG Ammo Bearer (russian)
======================================*/
params ["_linkItems", "_weapons", "_uniform", "_vests", "_headgear", "_backpacks", "_goggle"];

[
  [
    _weapons select 0,
    "",
    "rhs_acc_perst1ik",
    "rhs_acc_okp7_dovetail",
    ["rhs_30Rnd_545x39_7N10_AK",30],
    [],
    ""
  ],
  [],
  [],
  [
    _uniform select 0,
    []
  ],
  [
    _vests select 3,
    [
      ["rhs_30Rnd_545x39_7N10_AK",8,30],
	  ["rhs_mag_rgo",2,1]
    ]
  ],
  [
    _backpacks select 2,
    [
      ["ACE_SpareBarrel",1,1],
      ["rhs_100Rnd_762x54mmR",5,100]
    ]
  ],
  _headgear select 1,
  "rhsusf_oakley_goggles_clr",
  ["Binocular","","","",[],[],""],
  _linkItems
]