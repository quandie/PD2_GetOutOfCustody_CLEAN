local function releaseMe(localplayer)
    IngameWaitingForRespawnState.request_player_spawn(localplayer)
    managers.chat:send_message(ChatManager.GAME, localplayer, "Get out of Custody: player released himself from custody")
end

if Utils:IsInHeist() then
  local localplayer = managers.player:local_player()
  if not alive(localplayer) then
    if Network:is_server() then
      releaseMe(localplayer)
    end
  end
end
