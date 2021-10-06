# ToggleGather
This Vanilla WoW (1.12.1) addon allows you to toggle between Find Herbs and Find Minerals, with a single key press.
For setting the hotkey, check the key bindings in the Blizzard menu.

Use this Macro to find the icons like "Interface\Icons\Spell_Nature_Earthquake"

  /run local l=0;for l=1,120 do local t=GetActionText(l);local x=GetActionTexture(l);if x then local m="Slot "..l..": ["..x.."]";if t then m=m.." \""..t.."\"";end DEFAULT_CHAT_FRAME:AddMessage(m);end end

Changelog:

* 2021-05-31 - Ver 1.0 - first release
* 2021-10-06 - Ver 2.0 - fixed issue with Global Cooldown
* 2021-10-06 - Ver 3.0 - Made it work properly when you have only one of the two professions, or none
