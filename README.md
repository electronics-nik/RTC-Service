# RTC-Service
Сервис и скрипт для инициализации и синхронизации RTC на базе DS1307 по шине I2C для Ubuntu на BananaPI-M3 

----
Файл `rtc.service` необходимо поместить в папку `/etc/systemd/system`<br />
Папку `RTC` необходимо поместить в папку `/opt` 
----
Проверка статуса сервиса:
* **systemdctl status rtc**

Активация сервиса:
* **systemdctl enable rtc**

Деактивация сервиса:
* **systemctl disable rtc**
