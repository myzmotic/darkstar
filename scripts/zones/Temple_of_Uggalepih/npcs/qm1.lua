-----------------------------------
-- Area: Temple of Uggalepih
--  NPC: ??? (Tonberry Rattle ITEM)
-- !pos 269 0 91 159
-----------------------------------
local ID = require("scripts/zones/Temple_of_Uggalepih/IDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    respawn = GetServerVariable("[TEMP]Respawn_qm1_for_rattle");

    if (player:hasItem(1266) == false and player:getFreeSlotsCount() >= 1 and respawn <= os.time()) then
        player:addItem(1266);
        player:messageSpecial(ID.text.ITEM_OBTAINED,1266); -- Uggalepih Rattle
        SetServerVariable("[TEMP]Respawn_qm1_for_rattle",os.time() + 7200); -- 2 hours
        -- ??? dissapears for 2 hours and reappears on new position
    else
        player:messageSpecial(ID.text.NOTHING_OUT_OF_ORDINARY);
    end

end;