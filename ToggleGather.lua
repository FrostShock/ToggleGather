function ToggleGather()
-- For Herbalism the icon is "INV_Misc_Flower_02"
  if GetTrackingTexture() == "Interface\\Icons\\Spell_Nature_Earthquake" then
    CastSpellByName("Find Herbs");
  else
    if PlayerHas_Find_Minerals then
      CastSpellByName("Find Minerals");
    else
      CastSpellByName("Find Herbs");
    end
  end
  
-- Debug scripts
--  PlaySound("RaidWarning");
--  if PlayerHas_Find_Herbs then PlaySound("GnomeExploration"); end
--  if PlayerHas_Find_Minerals then PlaySound("RaidWarning"); end
--  MyTime = GetTime();
--  echo(MyTime);
--  DEFAULT_CHAT_FRAME:AddMessage("|cffffff00Time: ");
--  DEFAULT_CHAT_FRAME:AddMessage("|cffffff00Time: "..MyTime);
--  DEFAULT_CHAT_FRAME:AddMessage("|cffffff00Time: "..MyTime.." - "..tostring(PlayerHas_Find_Herbs).." - "..tostring(PlayerHas_Find_Minerals));
end

PlayerHas_Find_Herbs = false;
PlayerHas_Find_Minerals = false;

function DetectGathers()
  for i=1,MAX_SPELL_PAGES do
    local spellName = GetSpellName(i,"spellbook");
    if spellName == "Find Herbs" then
      PlayerHas_Find_Herbs = true
      DEFAULT_CHAT_FRAME:AddMessage("|cffffff00 -- Herbalism detected");
    end
    if spellName == "Find Minerals" then
      PlayerHas_Find_Minerals = true
      DEFAULT_CHAT_FRAME:AddMessage("|cffffff00 -- Mining detected");
    end
  end
end

DetectGathers()

-- Key Bindings
BINDING_HEADER_TOGGLEGATHER = "Toggle Gather"

BINDING_NAME_TOGGLEGATHER = "Toggle Finding Herbs / Minerals"
