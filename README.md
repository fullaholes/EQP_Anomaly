# EQP_Anomaly ver 1.3b. [TEST.RELEASE] 14.01.2016 23:13
About: Exile RPG Stalker style project Credits Free for all use in Exilemod.com. Spawn 3 quest npc in Aero safezone (Basil Obuhov) step 1 quest, and East safezone (Ivan Demidov) step 2 quest, and West Safezone (Boris Britva) step 3 quest;
And 3 stalker style anomlay Gravi, Meat Grinder and Fire the fluff..
Quest Item: 
"MineDetector"; // For detect anomaly
"Exile_Item_TreasureMap"; // For fix anomaly
"Exile_Item_Magazine01"; // For Boris Britva :)
and sound file https://yadi.sk/d/zWnh3GrLmnvb3

Installation:

1) Soft Need: pbomanager, notepad++ or farmanager

2) You need: 

a) Unpack you mission file Exile.Altis.pbo use pbomanager

b) Create Folder Anomaly like /Exile.Altis/Anomaly

c) Copy ALL file in folde Anomaly -> to you mission folder  (+ add sound https://yadi.sk/d/zWnh3GrLmnvb3) with name: anm.ogg like /Exile.Altis/Anomaly folder

d) Insert in you Desctription.ini link to ogg sound:

	class CfgSounds
	{
		class anm
		{
			// how the sound is referred to in the editor (e.g. trigger effects)
			name = "anm";
			// filename, volume, pitch
			sound[] = {"anomaly\anm.ogg", 1, 1};
			titles[] = {};
		};
	};

Step 5: Goto  class Item 99 in vanila Exilemod Altis map and insert after final }; class Item99 like this:

	class Vehicles
	{
		items=3;
				class Item0
				{
					position[]={14642.1,0,16888.2}; // Altis Airport safe zone trader
					azimut=135;
					id=1;
					side="CIV";
					vehicle="C_Nikos";
					leader=1;
					skill=0.60000002;
					init= "this addAction[""<t color='#068600'>Anomaly research quest</t>"",""anomaly\quest.sqf""];";
				};
				class Item1
				{
					position[]={23332.1,0,24165.4}; // Altis Airport safe zone trader
					azimut=135;
					id=1;
					side="CIV";
					vehicle="C_man_p_beggar_F_euro";
					leader=1;
					skill=0.60000002;
					init= "this addAction[""<t color='#068600'>Anomaly research quest</t>"",""anomaly\quest2.sqf""];";
				};
				class Item2
				{
					position[]={3031.86,0,18148.8}; // Altis Airport safe zone trader
					azimut=310;
					id=1;
					side="CIV";
					vehicle="B_Soldier_F";
					leader=1;
					skill=0.60000002;
					init="comment ""Remove existing items"";  removeAllWeapons this;  removeAllItems this;  removeAllAssignedItems this;  removeVest this;  removeBackpack this;  removeHeadgear this;  removeGoggles this; comment ""Add containers"";  this addHeadgear ""H_HelmetCrew_I"";  comment ""Add weapons"";  this addWeapon ""srifle_DMR_04_Tan_F"";  this addPrimaryWeaponItem ""acc_flashlight"";  this addPrimaryWeaponItem ""optic_KHS_tan"";  this addPrimaryWeaponItem ""bipod_02_F_tan"";  this addWeapon ""hgun_Pistol_heavy_01_F"";  this addHandgunItem ""muzzle_snds_acp"";  this addHandgunItem ""optic_MRD"";  this addWeapon ""Laserdesignator_02"";    comment ""Add items"";  this linkItem ""ItemMap"";  this linkItem ""ItemCompass"";  this linkItem ""ItemWatch"";  this linkItem ""ItemGPS"";  this linkItem ""NVGoggles_INDEP""; this addAction [""<t color='#068600'>Anomaly research quest</t>"",""anomaly\quest3.sqf""];";
				};
	};
	class Sensors
	{
		items=6;
		class Item0
		{
			position[]={14514.4,0,17005.1}; // point 10m around Altis Airport safe zone
			a=10;
			b=10;
			angle=14.143009;
			activationBy="ANY";
			interruptable=1;
			age="UNKNOWN";
			expCond="true";
			expActiv="XC=[thistrigger,10]execvm ""anomaly\gravi.sqf""";
			class Effects
			{
			};
		};
		class Item1
		{
			position[]={14514.4,0,17005.1};
			a=30;
			b=30;
			activationBy="ANY";
			repeating=1;
			interruptable=1;
			age="UNKNOWN";
			name="rad1_2";
			expCond="(vehicle player) in thislist;";
			expActiv="init = execVM ""anomaly\detect.sqf"";";
			class Effects
			{
			};
		};
		class Item2
		{
			position[]={23393.9,0,24411.1}; // point 10m around Altis Airport safe zone
			a=10;
			b=10;
			angle=14.143009;
			activationBy="ANY";
			interruptable=1;
			age="UNKNOWN";
			expCond="true";
			expActiv="XC=[thistrigger,10]execvm ""anomaly\meat.sqf""";
			class Effects
			{
			};
		};
		class Item3
		{
			position[]={23393.9,0,24411.1};
			a=30;
			b=30;
			activationBy="ANY";
			repeating=1;
			interruptable=1;
			age="UNKNOWN";
			name="rad1_2";
			expCond="(vehicle player) in thislist;";
			expActiv="init = execVM ""anomaly\detect2.sqf"";";
			class Effects
			{
			};
		};
		class Item4
		{
			position[]={2909.41,0,18351.6}; // point 10m around Altis Airport safe zone
			a=10;
			b=10;
			angle=14.143009;
			activationBy="ANY";
			interruptable=1;
			age="UNKNOWN";
			expCond="true";
			expActiv="XC=[thistrigger,10]execvm ""anomaly\fluff.sqf""";
			class Effects
			{
			};
		};
		class Item5
		{
			position[]={2909.41,0,18351.6};
			a=30;
			b=30;
			activationBy="ANY";
			repeating=1;
			interruptable=1;
			age="UNKNOWN";
			name="rad1_2";
			expCond="(vehicle player) in thislist;";
			expActiv="init = execVM ""anomaly\detect3.sqf"";";
			class Effects
			{
			};
		};
	};

3) Download and install https://github.com/happydayz-enigma/Enigma_Exile_Custom and copy  Enigma_Exile_Custom.pbo in you @ExileServer/addons need for saving prize data in user database...

Profit...
