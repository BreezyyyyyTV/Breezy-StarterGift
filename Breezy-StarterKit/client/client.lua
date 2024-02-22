local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('giftbox:Client:OpenGiftBox', function(source)
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "Stash", 0.25)
    QBCore.Functions.Progressbar('unwrapping_present', 'Unwrapping Present', StarterKitConfig.ProgressBarInteger, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
    }, {
        animDict = "bz@give_love@anim",
        anim = "bz_give",
        flags = 10,
    }, {
       model = "bzzz_prop_gift_purple",
       bone = 57005,
       coords = {  x = 0.150000, y = -0.030000, z = -0.140000 },
       rotation = {  x = -77.000000, y = -120.000000, z = 40.000000 },


    }, {}, function() 
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent('giftbox:Server:GiftBoxRewards')
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)