---
title: "Schullogin: vereinzelt Fehler bei Übertragung von Daten an angebundene Dienste (30.08.2024)"
date: 2024-08-30T08:00:00
resolved: true # Resolving: set to true
resolvedWhen: 2024-09-02T15:00:00 # Resolving: remove comment, set correct end datetime
severity: disrupted
# informational: true # field makes issue look more like a blog post and removes any references to downtime length
pin: false # Resolving: set to false
affected:
- Schnittstellen
- OPAL Schule
section: issue
---

Die Übermittlung von Personendaten an angebundene Dienste ist derzeit beeinträchtigt. 

Unter anderem wird das Attribut "Klassenstufe" nicht in allen Fällen korrekt übertragen. Dadurch können unerwünschte Seiteneffekte in den genutzten Diensten auftreten (bspw. bei Kursfreigaben in OPAL Schule).

Die diesem Problem zugrunde liegenden Fehler in der Schullogin-Datenbank sind bei der Behebung der [SaxSVS-Anfrage-Probleme am gestrigen 29.8.2024](https://status.schullogin.de/issues/2024-08-27t0900--langsame_anfragen_via_saxsvs_aufgrund_eines_problems_in_schullogin/) entstanden. 

Das Problem löst sich mit der nächsten regulären Synchronisation mit SaxSVS am kommenden Montag: hierbei werden diese Daten automatisch wieder korrigiert.
