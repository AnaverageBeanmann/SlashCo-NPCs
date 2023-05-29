/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local PublicAddonName = "Bean's SlashCo NPCs"
local AddonName = "Bean's SLashCo NPCs"
local AddonType = "SNPC"
local AutorunFile = "autorun/vj_slashco_autorun.lua"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")

if VJExists == true then

	include('autorun/vj_controls.lua')

	local vCat = "Bean's SlashCo NPCs"

	VJ.AddCategoryInfo(vCat,{Icon = "icons/icon_vj_slashco.png"})

	-- SlashCo Assets
	VJ.AddNPC("SlashCo Employee","npc_vj_slashco_survivor",vCat)

	-- Main Slashers
	VJ.AddNPC("Abomignat","npc_vj_slashco_slasher_abomignat",vCat)
	VJ.AddNPC("Amogus","npc_vj_slashco_slasher_amogus",vCat)
	VJ.AddNPC("Bababooey","npc_vj_slashco_slasher_bababooey",vCat)
	VJ.AddNPC("Borgmire","npc_vj_slashco_slasher_borgmire",vCat)
	VJ.AddNPC("Criminal","npc_vj_slashco_slasher_criminal",vCat)
	VJ.AddNPC("Free Smiley Dealer","npc_vj_slashco_slasher_smiley",vCat)
	VJ.AddNPC("Male_07","npc_vj_slashco_slasher_male07",vCat)
	VJ.AddNPC("Manspider","npc_vj_slashco_slasher_manspider",vCat)
	VJ.AddNPC("Sid","npc_vj_slashco_slasher_sid",vCat)
	VJ.AddNPC("Speedrunner","npc_vj_slashco_slasher_speedrunner",vCat)
	VJ.AddNPC("Thirsty","npc_vj_slashco_slasher_thirsty",vCat)
	VJ.AddNPC("Trollge","npc_vj_slashco_slasher_trollge",vCat)
	VJ.AddNPC("Tyler","npc_vj_slashco_slasher_tyler",vCat)
	VJ.AddNPC("The Watcher","npc_vj_slashco_slasher_watcher",vCat)

	-- Joke Slashers
	VJ.AddNPC("Leonard","npc_vj_slashco_slasher_leonard",vCat)

	-- Slasher Minions/Assets
	VJ.AddNPC("Babaclone","npc_vj_slashco_slasher_babaclone",vCat)
	VJ.AddNPC("Criminal Clone","npc_vj_slashco_slasher_criminal_clone",vCat)
	VJ.AddNPC("Pensive","npc_vj_slashco_slasher_pensive",vCat)
	VJ.AddNPC("Zany","npc_vj_slashco_slasher_zany",vCat)
	VJ.AddNPC("Male_07 Vessel","npc_vj_slashco_slasher_vessel",vCat)

	-- Bonus
	VJ.AddNPC("Male_07 (Monster)","npc_vj_slashco_slasher_male07_monster",vCat)
	VJ.AddNPC("Trollge (Step 1)","npc_vj_slashco_slasher_trollge_phase1",vCat)
	VJ.AddNPC("Trollge (Step 2)","npc_vj_slashco_slasher_trollge_phase2",vCat)
	VJ.AddNPC("Trollge (Step 3)","npc_vj_slashco_slasher_trollge_phase3",vCat)

-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile(AutorunFile)
	VJ.AddAddonProperty(AddonName,AddonType)
else
	if (CLIENT) then
		chat.AddText(Color(0,200,200),PublicAddonName,
		Color(0,255,0)," was unable to install, you are missing ",
		Color(255,100,0),"VJ Base!")
	end
	timer.Simple(1,function()
		if not VJF then
			if (CLIENT) then
				VJF = vgui.Create("DFrame")
				VJF:SetTitle("ERROR!")
				VJF:SetSize(790,560)
				VJF:SetPos((ScrW()-VJF:GetWide())/2,(ScrH()-VJF:GetTall())/2)
				VJF:MakePopup()
				VJF.Paint = function()
					draw.RoundedBox(8,0,0,VJF:GetWide(),VJF:GetTall(),Color(200,0,0,150))
				end
				
				local VJURL = vgui.Create("DHTML",VJF)
				VJURL:SetPos(VJF:GetWide()*0.005, VJF:GetTall()*0.03)
				VJURL:Dock(FILL)
				VJURL:SetAllowLua(true)
				VJURL:OpenURL("https://sites.google.com/site/vrejgaming/vjbasemissing")
			elseif (SERVER) then
				timer.Create("VJBASEMissing",5,0,function() print("VJ Base is Missing! Download it from the workshop!") end)
			end
		end
	end)
end