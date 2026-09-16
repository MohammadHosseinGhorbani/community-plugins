# Launcher

Launcher is a **Dekstop Widget** plugin. It can be used like a desktop shortcut in desktop environments, or to execute any command by a single click.

## Plugin

| Field   | Value                            |
| :-----: | :------------------------------: |
| ID      | `MohammadHosseinGhorbani/launcher` |
| Entries | Desktop widget: `desktop`          |

## Usage

Add a **Launcher** widget to your desktop from Settings > Desktop. Configure the settings and close the widget editor.

## Settings

| Setting | Type | Default | Options | Description |
| --- | --- | --- | --- | --- |
| `image` | `file` | — | — | The image to be used for the launcher. |
| `radius` | `int` | `0` | min: `0`, max: `36` | The corner radius of the image, from 0 to 36. |
| `label` | `string` | — | — | The label of the launcher/shortcut. |
| `label-color` | `color` | — | — | The text color of the label. |
| `display-label` | `select` | — | `never`, `on-hover`, `always` | Whether to display the label. |
| `command` | `string` | — | — | This command will be executed when the image is clicked. |
| `notify-on-click` | `bool` | `false` | — | When enabled, clicking the shortcut will show a notification. |

## Notes

The purpose of making this plugin was something similar to DEs desktop shortcuts. The built-in desktop widgets contain a Sticker widget that adds an image to the desktop, but it's not clickable. The Button widget has the functionality that we are after, but we can't set a custom image for the widget. So this plugin bridges that gap. It combines the visual customization of the Sticker widget with the click functionality of the Button widget to create true desktop shortcuts.

### To-Do

1. Add support for more languages.
2. Add support for `.desktop` files.
