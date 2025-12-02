# TimeLapse

This plugin enables the use of [moonraker/timelapse](https://github.com/mainsail-crew/moonraker-timelapse)

The plugin is entirely based on https://github.com/mainsail-crew/moonraker-timelapse.

The only change is the replacement of wget with curl.

# Installation

To use this plugin for your Flashforge AD5X/AD5M/AD5M Pro:

1. Install zMod: https://github.com/ghzserg/zmod
2. [Update zMod](https://github.com/ghzserg/zmod/wiki/Setup_en#updating-the-mod)
3. Execute the command: ```ENABLE_PLUGIN name=timelapse```

# Removal

Execute the command: ```DISABLE_PLUGIN name=timelapse```

# Warning

Not recommended for use on AD5M/AD5MPro due to insufficient RAM; it is better to use [TelegramBot](https://github.com/ghzserg/zmod/wiki/Telegram_ru).

# Setup

Add ```TIMELAPSE_TAKE_FRAME``` to the timelapse code.

<img width="341" height="396" alt="{E8C4ED6B-388B-40F7-BB5F-CBB402EC7130}" src="https://github.com/user-attachments/assets/8c540101-282b-45e2-9ee9-b07180cd12e5" />

```TIMELAPSE_RENDER``` can be added to the final code or called manually via Fluidd/Mainsail

Example for final code:
```
TIMELAPSE_RENDER
END_PRINT
```

You can use a timelapse delayed by 30 seconds:
Example for final code:
```
END_PRINT
END_PRINT_TIMELAPSE_RENDER
```
