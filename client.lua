ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

----------------------------------- Création du menu ----------------------------

RMenu.Add('touches', 'main', RageUI.CreateMenu("Touches", "Touches du serveur"))

Citizen.CreateThread(function()
    while true do 
        RageUI.IsVisible(RMenu:Get('touches', 'main'), true, true, true, function()

            RageUI.ButtonWithStyle("Premier Bouton", "Test Description", {RightLabel = "1"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("Premier Bouton", nil, {RightLabel = "~r~Coucou"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('pistolet')
                end
            end)
        end, function()
        end)
        Citizen.Wait(0)
    end
end)

----------------------------------- Open menu ----------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1,344) then 
            RageUI.Visible(RMenu:Get('touches', 'main'), not RageUI.Visible(RMenu:Get('touches', 'main')))
        end
    end
end)