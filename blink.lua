-- Blink v0.2
-- Blink "blinks" your tori forward, in theory >_>
-- By Eleeleth & Blam

echo("Blink v0.2 by Eleeleth & Blam :D")
echo("Use uiojkl to teleport your tori!")

local function blink(key)
  local sel_player = get_world_state().selected_player
  if(sel_player == -1) then sel_player = 0 end
  if(key == 105) then
    for i = 0, 20 do
      body_info = get_body_info (sel_player, i)
      set_body_pos(sel_player, i, body_info.pos.x, body_info.pos.y - 0.1, body_info.pos.z)
    end
  elseif(key == 107) then
    for i = 0, 20 do
      body_info = get_body_info (sel_player, i)
      set_body_pos(sel_player, i, body_info.pos.x, body_info.pos.y + 0.1, body_info.pos.z)
    end
  elseif(key == 106) then
    for i = 0, 20 do
      body_info = get_body_info (sel_player, i)
      set_body_pos(sel_player, i, body_info.pos.x + 0.1, body_info.pos.y, body_info.pos.z)
    end
  elseif(key == 108) then
    for i = 0, 20 do
      body_info = get_body_info (sel_player, i)
      set_body_pos(sel_player, i, body_info.pos.x - 0.1, body_info.pos.y, body_info.pos.z)
    end
  elseif(key == 111) then
    for i = 0, 20 do
      body_info = get_body_info (sel_player, i)
      set_body_pos(sel_player, i, body_info.pos.x, body_info.pos.y, body_info.pos.z - 0.1)
    end
  elseif(key == 117) then
    for i = 0, 20 do
      body_info = get_body_info (sel_player, i)
      set_body_pos(sel_player, i, body_info.pos.x, body_info.pos.y, body_info.pos.z + 0.1)
    end
  end
end

add_hook("key_down", "key", blink)
