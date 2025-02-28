# arma-3-life-simple-objects

This is a script to place any simple objects on the map for ArmA 3 RPG Life.

<a href="https://www.buymeacoffee.com/julianbauer" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-red.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

## Tutorial

In the past some guys have discussed whether it is possible to plant e.g. trees on a vanilla map without using mods on your server.

I started a research and after some minutes I came up with the command 
[createSimpleObject](https://community.bistudio.com/wiki/createSimpleObject). It works fine but it is very inconvenient if you plan to plant more objects at once.

The solution is a mod called [ACD](https://steamcommunity.com/sharedfiles/filedetails/?id=689845793&searchtext=acd). Just download and activate it. Then open the ArmA 3 Eden Editor and place objects from *side empty* -\> *ACD decorations* -\> *Trees*.

![select objects](https://i.imgur.com/0ibIgmM.jpeg)

side empty -> ACD decorations -> Trees

![place objects](https://i.imgur.com/sm5ypNs.jpeg)

place the objects in the desired location and select all

Once you finished placing your objects, select all objects and right-click on the selected objects -\> *Export to script* -\> *as simpleObject*.

![export to script](https://i.imgur.com/d6bVgUV.jpeg)

Export to script -> as simpleObject

Now you copied the objects as simpleObjects in your clipboard. In the next step create a new .sqf file and paste the code from your clipboard. You can now close ArmA 3 and deactivate ACD mod.

## Installation

A working installation of ArmA Life RPG Framework is required for a successful installation. Modifying the ArmA Life RPG Framework could cause errors – feel free to connect to our discord if you have a problem.

To execute the script on your server, install the [cationstudio core system](https://github.com/cationstudio/arma-3-life-cation-core).


### Step 1

Download the newest release and extract the archive. Copy the attached folder "objects" in your “cation” folder that can be found in the  root folder (subsequently called \<mission\>) of your mission.

### Step 2

Open \<mission\>/cation/cation_functions.cpp and insert

`#include "objects\functions.cpp"`

and save the file.

### Step 3

Open \<mission\>/cation/cation_master.cpp and insert

`#include "objects\config.cpp"`

and save the file.

### Step 4

Open \<mission\>/cation/cation_remoteExec.cpp and insert

`#include "objects\remoteExec.cpp"`

and save the file.

### Step 5

Now paste the .sqf file created earlier to \<mission\>/cation/files and add the filename to the *data[]* array in \<mission\>/cation/objects/config.cpp:

```
data[] = {
    "kavalaMarkt",
    "treetestTanoa",
    "YOURFILENAME"
};
```

**That's it!**

![Trees in Kavala](https://i.imgur.com/OE9Lw1H.jpeg)
