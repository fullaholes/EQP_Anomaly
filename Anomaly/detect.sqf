// vitacite aka olke detector anomaly and send money prize (tnx to bombajack for betatesting and Dizzturbed for his knowledge
// for saving prize to database need use https://github.com/happydayz-enigma/Enigma_Exile_Custom  Enigma addon for Exile.
// just copy Enigma_Exile_Custom.pbo in you @ExileServer/addons/ 

private ["_title","_htext","_addpoptabs","_newPopTabs","_addrespect","_newScore"];

_title  = "<t color='#ff0000' size='1.2' shadow='1' shadowColor='#000000' align='center'> You found an anomaly called Gravi : </t><br/><t color='#ffffff'>¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯<br/>";

_itemToLookFor = "MineDetector";
if (_itemToLookFor in (uniformItems player)) then {
		playSound "anm";  
		uisleep 1;
			_htext   = "You learned Gravi anomaly and received an award. Mine Detector was disentegrated..";
			hint parseText ( _title + _htext);

			_addrespect = 50;
		    	_newScore = ExileClientPlayerScore + _addrespect;
	        		ENIGMA_UpdateStats = [player,0,_newScore];
			        publicVariableServer "ENIGMA_UpdateStats";

			uisleep 1;			

			_addpoptabs = 500;
			_newPoptabs = ExileClientPlayerMoney + _addpoptabs;
				ENIGMA_UpdateStats = [player,_newPoptabs];
				publicVariableServer "ENIGMA_UpdateStats";

// 	ExileClientPlayerMoney = ExileClientPlayerMoney + 500 ;
//	ExileClientPlayerScore = ExileClientPlayerScore + 50;
	
		["Success",["+ 500 ExMoney"]] call ExileClient_gui_notification_event_addNotification;
			uisleep 1;			
				["Success",["+50 Exp"]] call ExileClient_gui_notification_event_addNotification;		
					player removeItem "MineDetector";
			uisleep 5;
		

	} else {
		playSound "anm";  
		uisleep 5;
		_htext   = "You do not have jobs for the study of anomalies";
		hint parseText ( _title + _htext);
                ["Whoops",[_htext]] call ExileClient_gui_notification_event_addNotification;
	};
