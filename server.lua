

RegisterNetEvent('pistolet') -- pour lier au premier bouton donc dans le client j'ai mit weapon_dagger donc ici je remet pareil mais si dans le client j'aurais mit givepoignard il faudrait mettre pareil ici
AddEventHandler('pistolet', function() -- pareil ici

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0 -- ici tres important on définit le prix de l'item donc price que on peut retrouver a la ligne 17 (donc clairement on prend le price = qui est = a la valeur et donc xPlayer qui est définit par 'l'id du mec) donc en clair on lui prend son id on lui remove le price 
    local xMoney = xPlayer.getMoney() 
 

    if xMoney >= price then 
        xPlayer.removeMoney(price) 
        xPlayer.addWeapon('weapon_snspistol', 11000)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)