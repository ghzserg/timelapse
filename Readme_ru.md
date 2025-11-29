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