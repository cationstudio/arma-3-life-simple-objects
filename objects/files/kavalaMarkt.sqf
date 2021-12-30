private ["_objects","_object","_data"];
_data = [
 ["a3\plants_f\tree\t_oleae2s_f.p3d", [3645.59,13122.3,10.1926], [[0,1,0],[0,0,1]]],
 ["a3\plants_f\tree\t_pinusp3s_f.p3d", [3632.74,13114.5,10.1141], [[0,1,0],[0,0,1]]],
 ["a3\plants_f\tree\t_poplar2f_dead_f.p3d", [3641.63,13111.8,10.1465], [[0,1,0],[0,0,1]]],
 ["a3\plants_f\tree\t_phoenixc1s_f.p3d", [3636.07,13110.9,10.1252], [[0,1,0],[0,0,1]]]
];
_objects = [];
{
 _object = createSimpleObject [(_x select 0), (ASLToAGL(_x select 1))];
 _object setVectorDirAndUp (_x select 2);
 _object setPosASL (_x select 1);
 _objects pushBack _object;
} forEach _data;
_objects;