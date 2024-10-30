RegisterNetEvent('nui:openMenu')
AddEventHandler('nui:openMenu', function()

    SetNuiFocus(true, true)


    SendNUIMessage({
        action = 'open'
    })
end)


ESX.RegisterServerCallback('lix:PrendiSoldiNoleggio', function(src, cb, price)
    local xPlayer = ESX.GetPlayerFromId(src)
    price = tonumber(Config.Price)
    
    if xPlayer.getAccount('bank').money >= price then
        xPlayer.removeAccountMoney('bank', price)
        cb(true)
    else
        xPlayer.showNotification('Non hai abbastanza soldi!')
        cb(false)
    end
end)


