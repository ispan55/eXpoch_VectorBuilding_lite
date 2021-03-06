/*
	eXpochClient_FREE_vectorBuilding
	
	Made for Anarchy, adapted to eXpoch and ported into Altis Life and Operation BlockHead by DirtySanchez
	
	and NOW EXILE WILL FEEL THE FREE VECTOR, go get a job sellers of scripts, this is a modding community.
	Sharing is caring and douchebaggery is a bannable offense
	
	http://DonkeyPunch.INFO
	
	The contents of this file are under the following license:
	Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License
	http://creativecommons.org/licenses/by-nc-nd/4.0/
*/

keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown", { 
	params ["_dikCodeKey", "_dikCode", "_shift", "_ctrl", "_alt"];
	private _handled = false;
	private _newDirAndUp = [[ sin BuildVecYaw * cos BuildVecPitch,cos BuildVecYaw * cos BuildVecPitch,sin BuildVecPitch],	[[ sin BuildVecRoll,-sin BuildVecPitch,cos BuildVecRoll * cos BuildVecPitch],-BuildVecYaw] call BIS_fnc_rotateVector2D];
	private _adjust = 1;
	
	switch(_dikCode)do
	{
		case 71: {
			_adjust = 1;
			if(_shift)then{_adjust = 3;};
			if(_ctrl)then{_adjust = 0.5;};
			if(_alt)then{	_adjust = 0.25;};
			BuildVecYaw = (((BuildVecYaw - _adjust)min 360) max -360);
			_handled = true;
		};
		case 73: {
			_adjust = 1;
			if(_shift)then{_adjust = 3;};
			if(_ctrl)then{_adjust = 0.5;};
			if(_alt)then{	_adjust = 0.25;};
			BuildVecYaw = (((BuildVecYaw + _adjust)min 360) max -360);
			_handled = true;
		};
		case 16: {
			_adjust = 1;
			if(_shift)then{_adjust = 3;};
			if(_ctrl)then{_adjust = 0.5;};
			if(_alt)then{	_adjust = 0.25;};
			BuildVecYaw = (((BuildVecYaw - _adjust)min 360) max -360);
			_handled = true;
		};
		case 18: {
			_adjust = 1;
			if(_shift)then{_adjust = 3;};
			if(_ctrl)then{_adjust = 0.5;};
			if(_alt)then{	_adjust = 0.25;};
			BuildVecYaw = (((BuildVecYaw + _adjust)min 360) max -360);
			_handled = true;
		};
		case 72: {
			_adjust = 0.5;
			if(_shift)then{_adjust = 1.5;};
			if(_ctrl)then{_adjust = 0.1;};
			if(_alt)then{	_adjust = 0.01;};
			ExileClientConstructionOffset set [1,((((ExileClientConstructionOffset select 1) + _adjust)min 10) max -10)];
			_handled = true;
		};
		case 80: {
			_adjust = 0.5;
			if(_shift)then{_adjust = 1.5;};
			if(_ctrl)then{_adjust = 0.1;};
			if(_alt)then{	_adjust = 0.01;};
			ExileClientConstructionOffset set [1,((((ExileClientConstructionOffset select 1) - _adjust)min 10) max -10)];
			_handled = true;
		};
		case 75: {
			_adjust = 0.5;
			if(_shift)then{_adjust = 1.5;};
			if(_ctrl)then{_adjust = 0.1;};
			if(_alt)then{	_adjust = 0.01;};
			ExileClientConstructionOffset set [0,((((ExileClientConstructionOffset select 0) - _adjust)min 10) max -10)];
			_handled = true;
		};
		case 77: {
			_adjust = 0.5;
			if(_shift)then{_adjust = 1.5;};
			if(_ctrl)then{_adjust = 0.1;};
			if(_alt)then{	_adjust = 0.01;};
			ExileClientConstructionOffset set [0,((((ExileClientConstructionOffset select 0) + _adjust)min 10) max -10)];
			_handled = true;
		};
		case 76: {
			BuildVecYaw = 0;BuildVecPitch = 0;BuildVecRoll = 0;
			ExileClientConstructionOffset = [0,5,0];
			_handled = true;
		};
		case 14: {
			BuildVecYaw = 0;BuildVecPitch = 0;BuildVecRoll = 0;
			ExileClientConstructionOffset = [0,5,0];
			_handled = true;
		};
		case 208: {
			_adjust = 0.5;
			if(_shift)then{_adjust = 1.5;};
			if(_ctrl)then{_adjust = 0.1;};
			if(_alt)then{	_adjust = 0.01;};
			BuildVecPitch = (((BuildVecPitch + _adjust)min 360) max -360);
			_handled = true;
		};
		case 200: {
			_adjust = 0.5;
			if(_shift)then{_adjust = 1.5;};
			if(_ctrl)then{_adjust = 0.1;};
			if(_alt)then{	_adjust = 0.01;};
			BuildVecPitch =(((BuildVecPitch - _adjust)min 360) max -360);
			_handled = true;
		};
		case 203: {
			_adjust = 0.5;
			if(_shift)then{_adjust = 1.5;};
			if(_ctrl)then{_adjust = 0.1;};
			if(_alt)then{	_adjust = 0.01;};
			BuildVecRoll = (((BuildVecRoll - _adjust)min 360) max -360);
			_handled = true;
		};
		case 205: {
			_adjust = 0.5;
			if(_shift)then{_adjust = 1.5;};
			if(_ctrl)then{_adjust = 0.1;};
			if(_alt)then{	_adjust = 0.01;};
			BuildVecRoll = (((BuildVecRoll + _adjust)min 360) max -360);;
			_handled = true;
		};
	};
	_handled;
}];