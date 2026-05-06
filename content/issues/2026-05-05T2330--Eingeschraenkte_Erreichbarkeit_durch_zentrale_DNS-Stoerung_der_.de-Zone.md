---
title: "Eingeschränkte Erreichbarkeit durch zentrale DNS-Störung der .de-Zone"
date: 2026-05-05T23:30:00
resolved: false # Resolving: set to true
resolvedWhen: 2026-05-06T02:00:00 # Resolving: remove comment, set correct end datetime
severity: disrupted
# informational: true # field makes issue look more like a blog post and removes any references to downtime length
pin: false
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
- LernSax - BigBlueButton
- MeSax
- MeSax-Wissensportal
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
- Dynamische Lehrplandatenbank
- MUNDO
- SaxSVS
- Schulportal
section: issue
---

**Status:** ✅ Behoben – Ursache extern (DENIC)
**Zeitraum:** 05.05.2026, 21:50 Uhr – 06.05.2026, ca. 02:00 Uhr

---

## 06.05.2026, 02:00 Uhr – Behoben

Die DENIC hat die fehlerhafte DNSSEC-Signatur der .de-Zone korrigiert. Die DNS-Auflösung für `schullogin.de` und alle anderen .de-Domains funktioniert wieder regulär. Eventuell noch zwischengespeicherte Fehler in einzelnen Resolvern oder Endgeräten lösen sich nach Ablauf der TTL automatisch auf; ein Neustart des Routers oder das Leeren des DNS-Caches kann den Vorgang beschleunigen.

Sollten Sie weiterhin Probleme beim Zugriff auf Schullogin haben, wenden Sie sich gern an unseren Support.

## 05.05.2026, 23:30 Uhr – Ursache identifiziert

Die DENIC bestätigt den Vorfall auf [status.denic.de](https://status.denic.de) als „Partial Service Disruption". Ursache ist eine fehlerhafte kryptografische Signatur (DNSSEC/RRSIG) für den SOA-Eintrag der gesamten .de-Zone. Sicherheitsprüfende DNS-Resolver verwerfen daraufhin alle Antworten für .de-Domains und geben den Fehler `NXDOMAIN` zurück – so, als würde die Domain nicht existieren. Der Fehler tritt unabhängig vom verwendeten DNS-Anbieter auf (Provider-DNS, Google `8.8.8.8`, Cloudflare `1.1.1.1`).

**Schullogin selbst ist technisch verfügbar** – unsere Server, Anwendungen und Datenbanken laufen einwandfrei. Da die Adresse `schullogin.de` aber zunächst über das DNS in eine IP-Adresse übersetzt werden muss und genau dieser Schritt aktuell fehlschlägt, kommen viele Anfragen nicht bei uns an.

**Mögliche Auswirkungen:**

- Anmeldung an Schullogin schlägt fehl oder dauert sehr lange
- Verbundene Dienste sind nicht oder nur teilweise erreichbar
- E-Mails an `@schullogin.de`-Adressen können verzögert zugestellt werden

## 05.05.2026, 22:30 Uhr – Hintergrund: Wie funktioniert DNS?

Das Domain Name System ist das „Telefonbuch des Internets". Menschen merken sich Namen wie `schullogin.de`, Computer kommunizieren aber über IP-Adressen wie `192.0.2.42`. Das DNS übersetzt zwischen beiden Welten.

Die Auflösung läuft hierarchisch in drei Schritten:

1. **Root-Server** verweisen an die zuständige Top-Level-Domain – in unserem Fall `.de`.
2. **Die .de-Zone**, betrieben von der DENIC, verweist auf die für `schullogin.de` autoritativen Nameserver.
3. **Unsere Nameserver** liefern schließlich die konkrete IP-Adresse zurück.

Damit niemand auf diesem Weg gefälschte Antworten einschleusen kann (DNS-Spoofing), werden die Antworten mit **DNSSEC** digital signiert. Resolver prüfen diese Signatur und akzeptieren die Antwort nur, wenn sie gültig ist. Während der Störung war die Signatur der gesamten .de-Zone ungültig – deshalb verwarfen Resolver bundesweit korrekt arbeitend alle Antworten und lieferten `NXDOMAIN`. Aus Sicherheitssicht ist das das richtige Verhalten, führte hier aber dazu, dass deutsche Domains scheinbar verschwunden waren.

## 05.05.2026, 22:00 Uhr – Störung erkannt

Erste Meldungen über nicht erreichbare .de-Domains erreichen uns. Schullogin und verbundene Dienste sind über den regulären Domainnamen nicht oder nur eingeschränkt erreichbar. Die Server selbst sind unauffällig; die Ursache wird im DNS vermutet. Untersuchung läuft.
