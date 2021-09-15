local check = false
RegisterNetEvent("um-newuservehicle:client:selectcar",function()
  TriggerEvent("nh-context:sendMenu",
            {
                {
                    id = 1,
                    header = "Bicycle",
                    txt = "",
                    params = {
                        event = "um-newuservehicle:client:createvehicle",
                        args = {
                            model = "fixter"
                        }
                    }
                },
                {
                    id = 2,
                    header = "Motorcycle",
                    txt = "",
                    params = {
                        event = "um-newuservehicle:client:createvehicle",
                        args = {
                            model = "faggio2"
                        }
                    }
                },
                {
                    id = 3,
                    header = "Car",
                    txt = "",
                    params = {
                        event = "um-newuservehicle:client:createvehicle",
                        args = {
                            model = "blista"
                        }
                    }
                }
            }
        )
    end)

RegisterNetEvent("um-newuservehicle:client:createvehicle",function(data)
        local ped = PlayerPedId()
        local model = data.model
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(10)
        end
        if not check then
            local veh = CreateVehicle(model, -250.183, -996.541, 29.319, 254.58, false, true)
            SetPedIntoVehicle(ped, veh, -1)
            check = true
        else
           QBCore.Functions.Notify("There is already a vehicle!", "error")
        end
    end)
