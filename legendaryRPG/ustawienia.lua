--[[
	legendaryRPG - Gamemode RPG oparty o baze danych SQLite/MySQL
    Główna rozgrywka dzieje się w Los Santos, nastomiast pozwalam na edycje skryptu i dostosowanie wszystkiego do swoich
    potrzeb, oraz gustu. Autorem gamemodu legendaryRPG jest był i będzie DeMoNeK_. Nie zezwalam na usuwanie informacji 
    o gamemodzie jak i autorze kodu. 
]]

-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- sqlite
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
local sql = false

function polaczenie()
	sql = dbConnect("sqlite", "bazadanych.db")
	if not sql then
		outputDebugString("Nie udalo sie polaczyc z baza danych.")
	else
		outputDebugString("Polaczono z baza danych!")
	end
end
AddEventHandler("onResourceStart", resourceRoot, polaczenie)

function polecenie()
	local qh = dbQuery(sql, ...)
	if not qh then return false end
	local result, num_affected_rows, last_insert_id = dbPoll(qh, -1)
	return result, num_affected_rows, last_insert_id
end
-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- mysql
-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
local mysql = false

function polaczenie2()
	mysql = dbConnect("mysql", "dbname=nazwabazy;host=localhost", "login", "haslo", "share=1")
	if not mysql then
		outputDebugString("Nie udalo sie polaczyc z baza danych.")
	else
		outputDebugString("Polaczono z baza danych!")
	end
end
AddEventHandler("onResourceStart", resourceRoot, polaczenie2)

function polecenie2()
	local qhh = dbQuery(mysql, ...)
	if not qhh then return false end
	local result, num_affected_rows, last_insert_id = dbPoll(qhh, -1)
	return result, num_affected_rows, last_insert_id
end

-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- INNE
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||