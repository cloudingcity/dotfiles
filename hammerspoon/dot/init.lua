hs.hotkey.bind({}, "`", function()
  local app = hs.application.get("Herdr")
  if app and app:isFrontmost() then
    app:hide()
  else
    hs.application.launchOrFocus("Herdr")
  end
end)
