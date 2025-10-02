---
title: "Schullogin: Störung Anmeldungen via VIDIS (bettermarks, beste.schule, HubbS, Meta-Videoportal)"
date: 2025-10-01T08:00:00
resolved: false # Resolving: set to true
# resolvedWhen: 2025-10-01T08:00:00 # Resolving: remove comment, set correct end datetime
severity: disrupted
# informational: true # field makes issue look more like a blog post and removes any references to downtime length
pin: true # Resolving: set to false
affected:
- Schnittstellen
section: issue
---

## Allgemeine Beschreibung

Die Störung betrifft nicht alle Nutzenden, und nicht alle Anmeldevorgänge: In einzelnen Fällen funktioniert eine Anmeldung zu einem späteren Zeitpunkt.

Die Ursache liegt nach aktuellem Analysestand in der Netzwerkinfrastruktur zwischen Schullogin und VIDIS, genauere Analyse durch beteiligte Dienstleister ist erbeten worden.


## 02.10.2025 – 11:05 Uhr

- Information an FWU/Dienstleister zu den beobachteten Auffälligkeiten 

## 02.10.2025 – 07:00 Uhr
 
- Analyse des Routing VIDIS -> Schullogin: Auffälligkeiten festgestellt.
- Anfrage ans Netzwerkteam ZIH zur Verifikation der Analyseergebnisse (zweite Meinung)

# 01.10.2025 – 18:00 Uhr
 
Information zu Routing von FWU Dienstleister liegen nun vor.
 
# 01.10.2025 - 17:00
 
Krisengespräch mit ZIH der TU Dresden: Getroffene Maßnahmen geprüft und mit dem aktuellen Wissenstand für erschöpfend befunden.
Routing von Schullogin nach VIDIS ist fehlerfrei.

Erneute Nachfrage bei Dienstleister VIDIS nach Routing-Informationen, um das Problem aus Richtung VIDIS nach Schullogin analysieren zu können.


## 01.10.2025 - 15:28

Firewallregeln der meisten beteiligten Firewalls wurden geprüft, keine Sperrregeln gefunden.
Weitere Prüfung durch Netzwerkbetreiber und FWU läuft.

Parallel lief die Formale Prüfung unserer Infrastruktur bzgl. der userInfo Endpunkte.
Eine Auffälligkeit konnte nicht festgestellt werden.
Andere Dienste, die via OIDC angebunden sind, funktionieren.

## 01.10.2025 - 11:44
 
Kontakt mit FWU und deren Dienstleister ist hergestellt. Prüfung läuft.

## 01.10.2025 - 10:52
 
Derzeit ist der Übergang von Schullogin zu VIDIS gestört.
Wir arbeiten an einer Lösung. Über die Dauer kann noch keine Angabe gemacht werden.
 
FWU (Betreiber) ist informiert und wir untersuchen unsere Logfiles, wir hoffen auf eine zeitnahe Rückmeldung.

## 01.10.2025 - 08:00

Es besteht eine Störung bei der Anmeldung an Dienste über den VIDIS-Vermittlungsdienst. 

Wir sind, gemeinsam mit den Betreibern von VIDIS, auf der Suche nach der Ursache des Problems und informieren hier über nähere Erkenntnisse, sobald diese vorliegen.
