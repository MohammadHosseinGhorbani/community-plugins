local image = noctalia.getConfig("image")
local radius = noctalia.getConfig("radius")
local label = noctalia.getConfig("label")
local labelColor = noctalia.getConfig("label-color")
local displayLabel = noctalia.getConfig("display-label")
local command = noctalia.getConfig("command")
local notifyOnClick = noctalia.getConfig("notify-on-click")

local hovered = false

function runCommand()
  noctalia.runAsync(command)
  if notifyOnClick then
    noctalia.notify("Launching " .. label)
  end
end

function onImageHover(state, key)
  if state == hovered then return end
  hovered = state
  render()
end

function render()
  local shortcut = {
    ui.image({
      path = image,
      onClick = "runCommand",
      width = 72,
      height = 72,
      radius = radius,
      onHover = displayLabel == "on-hover" and "onImageHover" or nil,
    })
  }

  if label and (displayLabel == "always" or hovered == "true") then
      table.insert(shortcut, ui.label({ text = label, color = labelColor }))
  end

  desktopWidget.render(ui.column({ gap = 0, padding = 0, align = "center" }, shortcut))
end

render()
