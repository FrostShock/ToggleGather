function ToggleGather()
  seconds2 = GetTime();
  seconds = seconds2 - seconds1;
  seconds1 = seconds2;
  if (seconds > 1) then
    find = 1 - find;
    if (find == 1) then
      CastSpellByName("Find Minerals");
    else
      CastSpellByName("Find Herbs");
    end;
  end;
--  echo(seconds);
end

find = 0;
seconds1 = GetTime();

-------------- bindings
BINDING_HEADER_TOGGLEGATHER = "Toggle Gather"

BINDING_NAME_TOGGLEGATHER = "Toggle Finding Herbs / Minerals"
