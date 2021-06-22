-- hammerspoon conf
-------------------

-- spoons
rectangle = require 'rectangle'
-- reload config file on change
reloader = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", function(changed)
  if hs.fnutils.some(changed, function(f) return f:sub(-4) == ".lua" end) then
    hs.reload()
  end
end):start()
hs.notify.show('Hammerspoon', '⌛ in the background', '')
