# um-newuservehicle
free vehicle for new user

## Dependencies
+ [qb-core](https://github.com/qbcore-framework/qb-core)
+ [qb-target](https://github.com/BerkieBb/qb-target)
+ [qb-vehiclekeys](https://github.com/qbcore-framework/qb-vehiclekeys)
+ [nh-context](https://github.com/nerohiro/nh-context)

## Setup
+ #### qb-smallresources > client > add newuservehicle.lua

+ #### qb-target > Config.Peds
```
{model = "s_m_y_valet_01",coords = vector4(-250.485, -1000.91, 28.228, 1.0),freeze = true,invincible = true,blockevents = true},
```
+ #### qb-target > Config.TargetModels
 ```
	["um-newuservehicle"] = {
		models = {"s_m_y_valet_01"},
		options = {
			{
				type = "client",
				event = "um-newuservehicle:client:selectcar",
				icon = "fas fa-car",
				label = "Select Vehicle"
			}
		},
		distance = 2.5
	},
```
+ ##### or {export newuservehicle.lua}
