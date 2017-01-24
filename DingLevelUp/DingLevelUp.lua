local congrats_event_frame = CreateFrame("Frame")

congrats_event_frame:RegisterEvent("PLAYER_LEVEL_UP")

congrats_event_frame:SetScript("OnEvent",
	function(self, event, ...)
		local new_level = ...
		
		SendChatMessage("Ding! Level " .. new_level .. "!", PARTY)
		
		if new_level % 10 == 0 then
			SendChatMessage("Ding! Level " .. new_level .. "!", GUILD)
		end
	end)