function ToggleGather()
  if GetTrackingTexture() == "Interface\\Icons\\Spell_Nature_Earthquake" then
    CastSpellByName("Find Herbs");
  else
    CastSpellByName("Find Minerals");
  end
--   MyTime = GetTime();
--   echo(MyTime);
end

-- Key Bindings
BINDING_HEADER_TOGGLEGATHER = "Toggle Gather"

BINDING_NAME_TOGGLEGATHER = "Toggle Finding Herbs / Minerals"
