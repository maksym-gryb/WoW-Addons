function SellJunk()
	for bag = 0, 4 do
		for slot = 0, GetContainerNumSlots(bag) do
			local item = GetContainerItemLink(bag, slot)
			
			if item then
				local _, _, id = string.find(item, "item:(%d+)");
				local _, _, rarity= GetItemInfo(id);
				
				if rarity == 0 then
					UseContainerItem(bag, slot)
				end
			end
		end
	end
end