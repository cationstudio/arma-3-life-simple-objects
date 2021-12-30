/*
    File: fn_init.sqf
    Author: Julian Bauer (julian.bauer@cationstudio.com)

    Description:
    init for simpleObjects
*/
if (!isServer) exitWith {};
_data = getArray(missionConfigFile >> "Cation_Objects" >> "data");
{
    [] spawn compile preprocessFileLineNumbers format ["cation\objects\files\%1.sqf",_x];
} forEach _data;