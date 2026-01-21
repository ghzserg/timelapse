# TimeLapse

Плагин позволяет использовать [moonraker/timelapse](https://github.com/mainsail-crew/moonraker-timelapse)

Плагин полностью основан на https://github.com/mainsail-crew/moonraker-timelapse.

Единственное изменение - замена wget на curl

# Установка

Чтобы использовать этот плагин для вашего Flashforge AD5X/AD5M/AD5M Pro

1. Установите zMod: https://github.com/ghzserg/zmod
2. [Обновите zMod](https://github.com/ghzserg/zmod/wiki/Setup#%D0%BE%D0%B1%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BC%D0%BE%D0%B4%D0%B0)
3. Выполните команду: ```ENABLE_PLUGIN name=timelapse```

# Удаление

Выполните команду: ```DISABLE_PLUGIN name=timelapse```

# Внимание
Не рекомендуется использовать на AD5M/AD5MPro в связи с нехваткой оперативной памяти, лучше использовать [TelegramBot](https://github.com/ghzserg/zmod/wiki/Telegram_ru)

# Настройка 

Добавьте ```TIMELAPSE_TAKE_FRAME``` в код таймлапса.

В Orca: `Профиль принтера` -> `Настройки принтера` -> `G-код принтера` -> `G-код таймлапса`

<img width="341" height="396" alt="{E8C4ED6B-388B-40F7-BB5F-CBB402EC7130}" src="https://github.com/user-attachments/assets/8c540101-282b-45e2-9ee9-b07180cd12e5" />

<img width="1487" height="589" alt="image" src="https://github.com/user-attachments/assets/cc4abb54-d112-498c-b2a2-aebdb7167ae3" />

**После окончания печати**, через Fluidd/Mainsaill или через `TIMELAPSE_RENDER` сгенерируйте таймлапс
