---
title: "Schullogin: Wartung Gesamtsystem in den Herbstferien (10.10.2023, 20:00 Uhr bis ca. 12.10.2023)"
date: 2023-10-10T20:00:00
resolved: true
resolvedWhen: 2023-10-11T12:37:00
# severity: down
informational: false
pin: false
affected:
- Anmeldung
- Schnittstellen
- Nachrichten
- Dateiablage
- Videokonferenzen (BigBlueButton)
- LernSax Schullogin
- OPAL Schule
- MeSax Schullogin
section: issue
---

In den Herbstferien werden einige aufwendige Wartungen an Schullogin vorgenommen. Diese sind notwendig, um das System auf zukünftige neue Funktionen vorzubereiten.

Die Wartungen werden am Dienstag, den 10.10.2023, gegen 20:00 Uhr beginnen und voraussichtlich bis Donnerstag, den 12.10.2023, andauern. 

**In dieser Zeit ist eine Anmeldung am System nicht möglich.**

Damit ist auch der Zugang zu den nachgeschalteten **Diensten über die Weboberfläche nicht möglich.**

Ausnahmen:
* Falls Sie die **Dateiablage** (Nextcloud) mit der Client-Software oder per App auf dem Mobilgerät nutzen, so ist dies in der Zeit ohne Einschränkung möglich. Anleitungen hierzu finden Sie in unserer Dokumentation [hier](https://docs.schullogin.de/20-Werkzeuge/20-Dateiablage/11-Nutzung%20Desktop%20Client/Index.html) und [hier](https://docs.schullogin.de/20-Werkzeuge/20-Dateiablage/12-Schnellstart-App/Index.html).
* Der Dienst **Etherpad** ist weiterhin unter [notes.schullogin.de](https://notes.schullogin.de) bzw. den individuellen Links zu Ihren Pads erreichbar.
* Wenn Sie **SBS-Moodle** per *direkter Anmeldung* oder per *App* nutzen, so wird dies während des Wartungsfensters ebenfalls ohne Einschränkung möglich sein.

## Verlauf

### Stand 11.10.2023 12:37

* jetzt laufen die Software Updates
* Merge train läuft
* Redis Config anpassen
* Vorabtests
* Preflight tests mit dem Team
* Online
* Letzte Probleme mit dem Mailer noch behoben

### Stand 11.10.2023 08:00

* Debian Update wurde installiert

## Stand 11.10.2023: 00:00

* Voll-Backup wurde erstellt
