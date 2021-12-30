private ["_objects","_object","_data"];
_data = [
 ["a3\plants_f\tree\t_quercusir2s_f.p3d", [3113.22,2831.51,62.3055], [[0,1,0],[0,0,1]]]
];
_objects = [];
{
 _object = createSimpleObject [(_x select 0), (ASLToAGL(_x select 1))];
 _object setVectorDirAndUp (_x select 2);
 _object setPosASL (_x select 1);
 _objects pushBack _object;
} forEach _data;
_objects;