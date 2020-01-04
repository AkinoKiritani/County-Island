# County-Island

[![sampctl](https://shields.southcla.ws/badge/sampctl-County-Island-2f2f2f.svg?style=for-the-badge)](https://github.com/AkinoKiritani/County-Island)

## Usage

Install

```
sampctl package get AkinoKiritani/County-Island
```
Change directory to filterscripts/CIMap and use
```
sampctl package ensure
sampctl package build
```
after that change directory back to the main folder and use
```
sampctl package build
```

If you run, while bulding the script, into `gamemodes\county.pwn:238 (error) symbol already defined: "IsValidVehicle"`

Please goto line "238" and remove that line from the script.
It only ocurs when you are using sampctl

If your build is ready use
```
sampctl package run
```

## No sampctl User ?

* Download a 0.3.DL Server
* Download the Script
* Download the latest version of [crashdetect](http://github.com/Zeex/samp-plugin-crashdetect) and put it in the "plugins" folder
* Download the version "2.9.4" of the [Object Streamer](http://github.com/samp-incognito/samp-streamer-plugin) and put it in the "plugins" folder
* Download the latest version of [sscanf](github.com/maddinat0r/sscanf) and put it in the "plugins" folder
* Put the files in the "includes" folder in the "includes" folder of of pawno
* Don't forget to add all the plugins to your server.cfg


# Credits:
Entstanden durch Andy, McGarrett und das ehemalige County-Islands Team

Erwerb und Erstveröffentlichung und [Bobby](https://breadfish.de/wcf/user/18910-bobby/): https://breadfish.de/thread/246038-veröffentlichung-county-islands-dein-inselabenteuer/

Aufbereitung und "Pflege" durch [Akino Kiritani](https://github.com/AkinoKiritani)

Auf- bzw. Erarbeitung der Datenbank / .sql durch [Rocky](https://breadfish.de/wcf/user/17184-rocky/) und [Akino Kiritani](https://github.com/AkinoKiritani)

Probleme oder Fragen ?
Eröffnet einfach ein Issue


Problems or questions ?
Please open an issue.
