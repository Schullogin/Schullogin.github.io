---
title: "Nachrichten: Störungen bei der Zustellbarkeit von Nachrichten"
date: 2026-10-27T09:00:00
resolved: false # Resolving: set to true
# resolvedWhen: 2026-10-27T09:00:00 # Resolving: remove comment, set correct end datetime
severity: disrupted
# informational: true # field makes issue look more like a blog post and removes any references to downtime length
pin: true # Resolving: set to false
affected:
- Nachrichten
section: issue
---

Derzeit liegt eine Störung vom Mailservice vor. Durch die Umstellung in den Ferien sind zum Teil E-Mails an externe Server nicht zustellbar.

## Verlauf

**30.10.2026 – Mögliche Einschränkungen bei T-Online**
Derzeit kann es bei der Zustellung von E-Mails an T-Online-Adressen (z. B. @t-online.de) zu Verzögerungen oder Ablehnungen kommen. Wir testen die Zustellung aktuell und informieren hier, sobald neue Erkenntnisse vorliegen. Das sollte sich in den nächsten Stunden von alleine klären.

**30.10.2026 – Ursache behoben, DKIM aktiv**
Der Mailserver verschickt Nachrichten jetzt über die neue Serveradresse. Zusätzlich unterstützt Schullogin ab sofort **DKIM**: Ausgehende E-Mails werden digital signiert, sodass empfangende Mailserver die Echtheit unserer Nachrichten prüfen können. Das verbessert die Zustellbarkeit und schützt vor gefälschten Absendern. Wir prüfen derzeit die Zustellung zu den wichtigsten Anbietern und arbeiten weiter an der Stabilität des Maildienstes.

**29.10.2026 – Ursache gefunden**
Trotz Umzug wurden ausgehende E-Mails noch über die alte Serveradresse verschickt. Da diese nicht mehr als zulässiger Absender hinterlegt war, haben einige Anbieter (z. B. Gmail) unsere Nachrichten als nicht vertrauenswürdig abgelehnt.

**28.10.2026 – Eingehende E-Mails funktionieren**
Die Zustellung von E-Mails an Schullogin-Adressen wurde überprüft und funktioniert zuverlässig. Die Absender-Einstellungen der Domain (SPF/DMARC) wurden überarbeitet.

**27.10.2026 – Abstimmung mit Partnern**
Wir haben unsere Partner, u. a. LernSax und das Schulportal Sachsen, gebeten, die neue Serveradresse für den Mailempfang freizugeben.

**19.–27.10.2026 – Unzustellbarkeitsmeldungen**
Vereinzelt wurden E-Mails an LernSax, das Schulportal Sachsen, einzelne Schulen und GMX nicht zugestellt. Die Fehlermeldungen kamen teilweise erst mehrere Tage später an, da Mailserver die Zustellung zunächst mehrfach wiederholen.

**Herbstferien 2026 – Umstellung**
Schullogin wurde auf eine neue Infrastruktur umgezogen. Dabei hat sich die Adresse unseres Mailservers geändert.