-- Reloading the config
--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
  hs.alert.show("Config loaded")
end)


-- next tab movement
--
hs.hotkey.bind({"cmd"}, "]", function()
  local activeWin = hs.window.focusedWindow()
  local activeApp = activeWin:application()

  if activeApp:title() == "Safari" then
    activeApp:selectMenuItem({"Fenster", "Nächsten Tab anzeigen"})
  elseif activeApp:title() == "Terminal" then
    activeApp:selectMenuItem({"Fenster", "Nächsten Tab anzeigen"})
  end
end)

-- previous tab movement
--
hs.hotkey.bind({"cmd"}, "[", function()
  local activeWin = hs.window.focusedWindow()
  local activeApp = activeWin:application()

  if activeApp:title() == "Safari" then
    activeApp:selectMenuItem({"Fenster", "Vorherigen Tab anzeigen"})
  elseif activeApp:title() == "Terminal" then
    activeApp:selectMenuItem({"Fenster", "Vorherigen Tab anzeigen"})
  end
end)
