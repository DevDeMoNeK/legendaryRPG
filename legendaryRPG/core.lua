--[[
	legendaryRPG - Gamemode RPG oparty o baze danych SQLite/MySQL
    Główna rozgrywka dzieje się w Los Santos, nastomiast pozwalam na edycje skryptu i dostosowanie wszystkiego do swoich
    potrzeb, oraz gustu. Autorem gamemodu legendaryRPG jest był i będzie DeMoNeK_. Nie zezwalam na usuwanie informacji 
    o gamemodzie jak i autorze kodu. 
]]

addEventHandler("onResourceStart", resourceRoot, function()
	setGameType("MTA-legendaryRPG")
	setMapName("legendaryWorld")
	setRuleValue("name", "MTA-legendaryRPG")
	setMaxFPS(45)
	outputDebugString("legendaryRPG: Skrypt zostal zaladowany!")
end)