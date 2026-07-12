hs.hotkey.bind({}, "`", function()
  local app = hs.application.get("cmux")
  if app and app:isFrontmost() then
    app:hide()
  else
    hs.application.launchOrFocus("cmux")
  end
end)
