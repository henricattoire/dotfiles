-- rectangle spoon (using snaps from rxhanson/rectangle)

hs.hotkey.bind({'cmd', 'alt'}, 'Left', function()
  local w = hs.window.focusedWindow()
  w:move(hs.layout.left50)
end)

hs.hotkey.bind({'cmd', 'alt'}, 'Right', function()
  local w = hs.window.focusedWindow()
  w:move(hs.layout.right50)
end)

hs.hotkey.bind({'cmd', 'alt'}, 'Up', function()
  local w = hs.window.focusedWindow()
  w:maximize()
end)

hs.hotkey.bind({'cmd', 'ctrl'}, 'Up', function()
  local w = hs.window.focusedWindow()
  local f = w:frame()

  local ref = w:screen():frame()
  f.w = ref.w * 0.90
  f.h = ref.h * 0.90
  f.x = ref.x + (ref.w - f.w)/2
  f.y = ref.y + (ref.h - f.h)/2
  w:setFrame(f)
end)
