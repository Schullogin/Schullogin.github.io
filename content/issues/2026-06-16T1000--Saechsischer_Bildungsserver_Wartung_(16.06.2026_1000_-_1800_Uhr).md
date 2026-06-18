---
title: "Sächsischer Bildungsserver: Wartung (16.06.2026 10:00 - 18:00 Uhr)"
date: 2026-06-16T10:00:00
# resolved: true # field not needed for maintenance informational
# resolvedWhen: 2026-06-16T10:00:00 # field not needed for maintenance informational
# severity: down # field not needed for maintenance informational
informational: true # field makes issue look more like a blog post and removes any references to downtime length
pin: false # Resolving: set to false
affected:
- Anmeldung
- Support
- Schnittstellen
- Betriebsstatus
- Nachrichten
- Dateiablage
- Videokonferenz
- LernSax Schullogin
- OPAL Schule
- MeSax Schullogin
- Etherpad
- LernSax
- Assistent KAI
- Redaktionssystem
- SchulCMS
- Moodle
- E-Mail-Übungsumgebung Minimehl
- Cooperative Working BSCW
- Cooperative Learning BSCL
- FTP-Schulhomepages
- Schul-wiki
- Materialdatenbank
- Geographisches Informationssystem WebGIS
- Online Umfragetool
- Eventplaner
- Außerschulische Lernorte
- Mailinglisten
- Ticketsystem
- GitLab
section: issue
---
# Update 18.06.2026 / 17:03 Uhr

Durch ein Rollback der Firewall konnte der Fehler behoben werden.
Erste Tests haben gezeigt, dass die betroffenen Server und Dienste wieder funktionieren.


# Update 18.06.2026 / 16:04 Uhr

Im Kontext mit dem Wechsel der Firewall des SBS treten derzeit Verbindungsprobleme mit einigen Servern des SBS-Clusters auf. 

Betroffen sind u.a. folgende Server:

* cms.sachsen.schule
* service.sachsen.schule
* ticket.sachsen.schule
* wolke.schullogin.de
* notes.schullogin.de
* status.schullogin.de
* www.smk.sachsen.de
* bildung.sachsen.de


# Ursprüngliche Meldung:
Am Dienstag, dem 16.06.2026, erfolgt von 10:00 - 18:00 Uhr der Austausch
der zentralen Firewall des Sächsischen Bildungsservers.

Dabei kommt es in der Zeit von 12:00 - 16:00 Uhr zu mehreren kurzen
Ausfällen der Internetanbindung.

Dieser geplante Ausfall betrifft sämtliche Dienste des Sächsischen
Bildungsservers (incl. Pressestelle SMK und Schullogin).