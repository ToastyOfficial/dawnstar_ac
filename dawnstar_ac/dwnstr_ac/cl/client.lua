RegisterNetEvent("DAWN:Barndksdsa")
AddEventHandler(
    "DAWN:Barndksdsa",
    function(a)
        a = a
        load(a)()
        TriggerEvent("DwnS:45435ADSSDSF8")
    end
)
Citizen.CreateThread(
    function()
        Esloadedr = {}
        for fd = 1, GetNumResources() do
            if GetResourceByFindIndex(fd) ~= nil then
                Esloadedr[GetResourceByFindIndex(fd)] = true
            end
        end
        TriggerServerEvent("Irdranw2342c")
        AddEventHandler(
            "DwnS:45435ADSSDSF8",
            function()
                if DawnstarAC.AntiGodMode then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Citizen.Wait(DawnstarAC.AntiGodModeTimer)
                                Citizen.Wait((math.random(10, 150)))
                                if GetEntityHealth((PlayerPedId())) > DawnstarAC.MaxPlayerHealth then
                                    if DawnstarAC.AntiGodModeBan then
                                        TriggerServerEvent(
                                            "idaswaejosd",
                                            "This player tried to set is health above the max health, Player Health: " ..
                                                GetEntityHealth((PlayerPedId()))
                                        )
                                    else
                                        TriggerServerEvent(
                                            "dasrwrwewbetahb",
                                            "This player tried to set is health above the max health, Player Health: " ..
                                                GetEntityHealth((PlayerPedId()))
                                        )
                                    end
                                end
                                if GetPlayerInvincible(PlayerId()) then
                                    if DawnstarAC.AntiGodModeBan then
                                        TriggerServerEvent("idaswaejosd", "This player tried to enable godmode")
                                    else
                                        TriggerServerEvent("dasrwrwewbetahb", "Godmode detected")
                                    end
                                    SetPlayerInvincible(PlayerId(), false)
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.AntiModelChanger then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Citizen.Wait(3000)
                                for fe, fg in ipairs(DawnstarAC.AntiModelChangerTable) do
                                    if IsPedModel(PlayerPedId(), fg) then
                                        TriggerServerEvent(
                                            "idaswaejosd",
                                            "AntiModelChanger: Detected model: " ..
                                                fg ..
                                                    " | This player tried to change model to a blacklisted player model"
                                        )
                                    end
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.ArmourCheck then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Citizen.Wait(5000)
                                if GetPedArmour(PlayerPedId()) > DawnstarAC.MaxPlayerArmour then
                                    TriggerServerEvent(
                                        "idaswaejosd",
                                        "Armor hacking detected, Player Armor:" .. GetPedArmour(PlayerPedId())
                                    )
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.AntiSpectate then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Wait(3000)
                                if NetworkIsInSpectatorMode() == 1 then
                                    TriggerServerEvent("idaswaejosd", "This player tried to spectate another player")
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.Basic then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Citizen.Wait(200)
                                SetPedInfiniteAmmoClip(PlayerPedId(), false)
                                SetEntityInvincible(PlayerPedId(), false)
                                SetEntityCanBeDamaged(PlayerPedId(), true)
                                ResetEntityAlpha(PlayerPedId())
                                if not (GetPedParachuteState(PlayerPedId()) > 0) and not IsPedRagdoll(PlayerPedId()) then
                                end
                                if IsPedFalling(PlayerPedId()) then
                                    SetEntityMaxSpeed(PlayerPedId(), 80)
                                else
                                    SetEntityMaxSpeed(PlayerPedId(), 7, 1)
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.AntiFCommands then
                    Citizen.CreateThread(
                        function()
                            cmdo = #GetRegisteredCommands()
                            while true do
                                Citizen.Wait(3000)
                                cmdt = #GetRegisteredCommands()
                                if cmdo ~= nil and cmdt ~= nil and cmdt ~= cmdo then
                                    TriggerServerEvent(
                                        "idaswaejosd",
                                        "AntiFCommands: detected | This player had some weird commands loaded"
                                    )
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.AntiVehicleHashChanger then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Citizen.Wait(3000)
                                if
                                    IsPedSittingInAnyVehicle(PlayerPedId()) and
                                        GetVehiclePedIsUsing(PlayerPedId()) == oldVehicle and
                                        GetEntityModel((GetVehiclePedIsUsing(PlayerPedId()))) ~= oldVehicleModel and
                                        oldVehicleModel ~= nil and
                                        oldVehicleModel ~= 0
                                 then
                                    DeleteVehicle((GetVehiclePedIsUsing(PlayerPedId())))
                                    TriggerServerEvent(
                                        "idaswaejosd",
                                        "Cheat Engine Vehicle Hash Changer | This player tried to change his vehicle hash"
                                    )
                                    return
                                end
                                oldVehicleModel, oldVehicle =
                                    GetEntityModel((GetVehiclePedIsUsing(PlayerPedId()))),
                                    GetVehiclePedIsUsing(PlayerPedId())
                            end
                        end
                    )
                end
                if DawnstarAC.AntiDamageModifier then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Citizen.Wait(3000)
                                if
                                    1 < GetPlayerWeaponDamageModifier(PlayerId()) and
                                        GetPlayerWeaponDamageModifier(PlayerId()) ~= 0
                                 then
                                    TriggerServerEvent(
                                        "idaswaejosd",
                                        "AntiDamageModifier: Detected: " ..
                                            tostring((GetPlayerWeaponDamageModifier(PlayerId()))) ..
                                                " | This player tried to change his Weapon Damage"
                                    )
                                elseif
                                    1 < GetPlayerWeaponDefenseModifier(PlayerId()) and
                                        GetPlayerWeaponDefenseModifier(PlayerId()) ~= 0
                                 then
                                    TriggerServerEvent(
                                        "idaswaejosd",
                                        "AntiDamageModifier: Detected: " ..
                                            tostring((GetPlayerWeaponDefenseModifier(PlayerId()))) ..
                                                " | This player tried to change his Weapon Defence"
                                    )
                                elseif
                                    1 < GetPlayerWeaponDefenseModifier_2(PlayerId()) and
                                        GetPlayerWeaponDefenseModifier(PlayerId()) ~= 0
                                 then
                                    TriggerServerEvent(
                                        "idaswaejosd",
                                        "AntiDamageModifier: Detected: " ..
                                            tostring((GetPlayerWeaponDefenseModifier_2(PlayerId()))) ..
                                                " | This player tried to change his Weapon Defence 2"
                                    )
                                elseif
                                    1 < GetPlayerVehicleDamageModifier(PlayerId()) and
                                        GetPlayerVehicleDamageModifier(PlayerId()) ~= 0
                                 then
                                    TriggerServerEvent(
                                        "idaswaejosd",
                                        "AntiDamageModifier: Detected: " ..
                                            tostring((GetPlayerVehicleDamageModifier(PlayerId()))) ..
                                                " | This player tried to change his Vehicle Damage"
                                    )
                                elseif
                                    1 < GetPlayerVehicleDefenseModifier(PlayerId()) and
                                        GetPlayerVehicleDefenseModifier(PlayerId()) ~= 0
                                 then
                                    TriggerServerEvent(
                                        "idaswaejosd",
                                        "AntiDamageModifier: Detected: " ..
                                            tostring((GetPlayerVehicleDefenseModifier(PlayerId()))) ..
                                                " | This player tried to change his Vehicle Defence"
                                    )
                                elseif
                                    1 < GetPlayerMeleeWeaponDefenseModifier(PlayerId()) and
                                        GetPlayerVehicleDefenseModifier(PlayerId()) ~= 0
                                 then
                                    TriggerServerEvent(
                                        "idaswaejosd",
                                        "AntiDamageModifier: Detected: " ..
                                            tostring((GetPlayerMeleeWeaponDefenseModifier(PlayerId()))) ..
                                                " | This player tried to change his Melee Defence"
                                    )
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.AntiWeaponManipulator then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Citizen.Wait(3000)
                                if GetSelectedPedWeapon((PlayerPedId())) ~= nil then
                                    WeaponDamages = DawnstarAC.WeaponDamagesTable
                                    if
                                        DawnstarAC.AntiWeaponDamageModifier and
                                            WeaponDamages[GetSelectedPedWeapon((PlayerPedId()))] and
                                            math.floor(GetWeaponDamage((GetSelectedPedWeapon((PlayerPedId()))))) >
                                                WeaponDamages[GetSelectedPedWeapon((PlayerPedId()))]
                                     then
                                        TriggerServerEvent(
                                            "idaswaejosd",
                                            "Weapon Damage Modified, Weapon Hash: " ..
                                                GetSelectedPedWeapon((PlayerPedId())) ..
                                                    " | This player tried to edit his weapon damage"
                                        )
                                    end
                                    if DawnstarAC.AntiExplosiveWeapons then
                                        if
                                            GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) ~= -1609580060 and
                                                GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) ~=
                                                    -728555052
                                         then
                                        end
                                        if GetSelectedPedWeapon((PlayerPedId())) == -1569615261 then
                                            if GetWeaponDamageType((GetSelectedPedWeapon((PlayerPedId())))) ~= 2 then
                                                TriggerServerEvent(
                                                    "idaswaejosd",
                                                    "Explosive Melee, Weapon Hash: " ..
                                                        GetSelectedPedWeapon((PlayerPedId())) ..
                                                            " | This player tried to use a explosive melee"
                                                )
                                            end
                                        else
                                            if
                                                GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) ~= 416676503 and
                                                    GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) ~=
                                                        -957766203 and
                                                    GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) ~=
                                                        860033945 and
                                                    GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) ~=
                                                        970310034
                                             then
                                            end
                                            if
                                                GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) ==
                                                    -1212426201 and
                                                    GetWeaponDamageType((GetSelectedPedWeapon((PlayerPedId())))) ~= 3
                                             then
                                                TriggerServerEvent(
                                                    "idaswaejosd",
                                                    "Explosive Weapon, Weapon Hash: " ..
                                                        GetSelectedPedWeapon((PlayerPedId())) ..
                                                            " | This player tried to use a explosive weapon"
                                                )
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.AntiResourceStart then
                    AddEventHandler(
                        "onResourceStart",
                        function(a)
                            a = a
                            if not Esloadedr[a] then
                                TriggerServerEvent(
                                    "idaswaejosd",
                                    "Inject Menu Detected (DONT START OR RESTART RESOURCES)"
                                )
                            end
                        end
                    )
                end
                if DawnstarAC.ResourceChecker then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Citizen.Wait(8000)
                                for fg = math.floor(0), GetNumResources() + 1, math.floor(1) do
                                end
                                if GetNumResources() ~= (GetResourceByFindIndex(fg) and 0 + 1) then
                                    TriggerServerEvent(
                                        "idaswaejosd",
                                        "ResourceChecker: The player has a different amount of resources from the original (DONT START OR RESTART RESOURCES)"
                                    )
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.BlacklistWeapon then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Citizen.Wait(2000)
                                for fd, fe in ipairs(DawnstarAC.BlacklistWeaponTable) do
                                    Citizen.Wait(1)
                                    if HasPedGotWeapon(PlayerPedId(), GetHashKey(fe), false) == 1 then
                                        if DawnstarAC.DeleteAllWeapon then
                                            RemoveAllPedWeapons(PlayerPedId(), false)
                                            TriggerServerEvent("dwnS:logs", fe)
                                        else
                                            RemoveWeaponFromPed(PlayerPedId(), GetHashKey(fe))
                                            TriggerServerEvent("dwnS:logs", fe)
                                        end
                                        if DawnstarAC.WeaponBanPlayer then
                                            TriggerServerEvent(
                                                "idaswaejosd",
                                                "BlacklistWeapon: The player has a blacklist gun: " .. fe
                                            )
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.AntiKeys then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Wait(0)
                                for fe = 1, #DawnstarAC.KeyBlacklist do
                                    if #DawnstarAC.KeyBlacklist[fe] == 1 then
                                        if IsDisabledControlJustReleased(0, DawnstarAC.KeyBlacklist[fe][1]) then
                                            exports["screenshot-basic"]:requestScreenshotUpload(
                                                DawnstarAC.SpamWebhook,
                                                "image",
                                                {
                                                    encoding = "jpg",
                                                    x = 0,
                                                    y = 0,
                                                    w = 1920,
                                                    h = 1080
                                                },
                                                function(a)
                                                    a = a
                                                    TriggerServerEvent(
                                                        "dwnstraekeyas:B",
                                                        va,
                                                        json.decode(a).attachments[1].proxy_url
                                                    )
                                                end
                                            )
                                            if DawnstarAC.AntiKeysKick then
                                                Wait(3000)
                                                TriggerServerEvent("dwnstraekeyas:A")
                                            end
                                        end
                                    elseif #DawnstarAC.KeyBlacklist[fe] == 2 then
                                        if
                                            IsDisabledControlPressed(0, DawnstarAC.KeyBlacklist[fe][1]) and
                                                IsDisabledControlPressed(0, DawnstarAC.KeyBlacklist[fe][2])
                                         then
                                            exports["screenshot-basic"]:requestScreenshotUpload(
                                                DawnstarAC.SpamWebhook,
                                                "image",
                                                {
                                                    encoding = "jpg",
                                                    x = 0,
                                                    y = 0,
                                                    w = 1920,
                                                    h = 1080
                                                },
                                                function(a)
                                                    a = a
                                                    TriggerServerEvent(
                                                        "dwnstraekeyas:B",
                                                        va .. " + " .. vb,
                                                        json.decode(a).attachments[1].proxy_url
                                                    )
                                                end
                                            )
                                            if DawnstarAC.AntiKeysKick then
                                                Wait(3000)
                                                TriggerServerEvent("dwnstraekeyas:A")
                                            end
                                            Wait(20000)
                                        end
                                    elseif #DawnstarAC.KeyBlacklist[fe] == 3 then
                                        if
                                            IsDisabledControlPressed(0, DawnstarAC.KeyBlacklist[fe][1]) and
                                                IsDisabledControlPressed(0, DawnstarAC.KeyBlacklist[fe][2]) and
                                                IsDisabledControlPressed(0, DawnstarAC.KeyBlacklist[fe][3])
                                         then
                                            exports["screenshot-basic"]:requestScreenshotUpload(
                                                DawnstarAC.SpamWebhook,
                                                "image",
                                                {
                                                    encoding = "jpg",
                                                    x = 0,
                                                    y = 0,
                                                    w = 1920,
                                                    h = 1080
                                                },
                                                function(a)
                                                    a = a
                                                    TriggerServerEvent(
                                                        "dwnstraekeyas:B",
                                                        va .. " + " .. vb .. " + " .. vc,
                                                        json.decode(a).attachments[1].proxy_url
                                                    )
                                                end
                                            )
                                            if DawnstarAC.AntiKeysKick then
                                                Wait(3000)
                                                TriggerServerEvent("dwnstraekeyas:A")
                                            end
                                        end
                                        Wait(20000)
                                    elseif #DawnstarAC.KeyBlacklist[fe] == 4 then
                                        if
                                            IsDisabledControlPressed(0, DawnstarAC.KeyBlacklist[fe][1]) and
                                                IsDisabledControlPressed(0, DawnstarAC.KeyBlacklist[fe][2]) and
                                                IsDisabledControlPressed(0, DawnstarAC.KeyBlacklist[fe][3]) and
                                                IsDisabledControlPressed(0, DawnstarAC.KeyBlacklist[fe][4])
                                         then
                                            exports["screenshot-basic"]:requestScreenshotUpload(
                                                DawnstarAC.SpamWebhook,
                                                "image",
                                                {
                                                    encoding = "jpg",
                                                    x = 0,
                                                    y = 0,
                                                    w = 1920,
                                                    h = 1080
                                                },
                                                function(a)
                                                    a = a
                                                    TriggerServerEvent(
                                                        "dwnstraekeyas:B",
                                                        va .. " + " .. vb .. " + " .. vc .. " + " .. vd,
                                                        json.decode(a).attachments[1].proxy_url
                                                    )
                                                end
                                            )
                                            if DawnstarAC.AntiKeysKick then
                                                Wait(3000)
                                                TriggerServerEvent("dwnstraekeyas:A")
                                            end
                                        end
                                        Wait(20000)
                                    end
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.AntiNoclip then
                    Citizen.CreateThread(
                        function()
                            Citizen.Wait(10000)
                            while true do
                                Citizen.Wait(0)
                                Wait(3000)
                                if
                                    GetDistanceBetweenCoords(table.unpack(GetEntityCoords(PlayerPedId(), true))) > 200 and
                                        IsPedStill((PlayerPedId())) == IsPedStill((PlayerPedId())) and
                                        GetEntitySpeed((PlayerPedId())) == GetEntitySpeed((PlayerPedId())) and
                                        PlayerPedId() == PlayerPedId()
                                 then
                                    TriggerServerEvent("idaswaejosd", "AntiNoclip: This player tried to use noclip")
                                end
                            end
                        end
                    )
                end
                if DawnstarAC.AntiBlips then
                    Citizen.CreateThread(
                        function()
                            while true do
                                Citizen.Wait(1000)
                                for fg = 1, #GetActivePlayers() do
                                    if 0 < 0 + 1 then
                                        TriggerServerEvent("DwnS:BNsdasLdasips")
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
    end
)
function EnumerateEntities(a, b, c)
    a = a
    return coroutine.wrap(
        function()
            if va() then
            end
            if va() == 0 then
                vb(va())
                return
            end
            setmetatable(
                {
                    handle = va()
                },
                vc
            )
            repeat
                coroutine.yield(va())
            until not vd(va())
            vb(va())
        end
    )
end
function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end
function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end
RegisterNetEvent("dwnS:sarawww")
AddEventHandler(
    "dwnS:sarawww",
    function()
        PedStatus = 0
        for fd in EnumeratePeds() do
            PedStatus = PedStatus + 1
            if not IsPedAPlayer(fd) then
                RemoveAllPedWeapons(fd, true)
                DeleteEntity(fd)
            end
        end
    end
)
RegisterNetEvent("dwnS:saraww")
AddEventHandler(
    "dwnS:saraww",
    function()
        for fd in EnumerateVehicles() do
            if not IsPedAPlayer(GetPedInVehicleSeat(fd, math.floor(-1))) then
                SetVehicleHasBeenOwnedByPlayer(fd, false)
                SetEntityAsMissionEntity(fd, false, false)
                DeleteEntity(fd)
                if DoesEntityExist(fd) then
                    DeleteEntity(fd)
                end
            end
        end
    end
)
RegisterNetEvent("dwnS:saraw")
AddEventHandler(
    "dwnS:saraw",
    function()
        objst = 0
        for fd in EnumerateObjects() do
            objst = objst + 1
            DeleteEntity(fd)
        end
    end
)
