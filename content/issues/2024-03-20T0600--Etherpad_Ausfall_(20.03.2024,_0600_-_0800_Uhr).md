---
title: "Etherpad: Ausfall (20.03.2024, 06:00 - 08:00 Uhr)"
date: 2024-03-20T06:00:00
resolved: true # Resolving: set to true
resolvedWhen: 2024-03-20T08:00:00 # Resolving: remove comment, set correct end datetime
severity: down
# informational: true # field makes issue look more like a blog post and removes any references to downtime length
pin: false # Resolving: set to false
affected:
- Etherpad
section: issue
---

Heute morgen kam es zu einem Ausfall von Etherpad. Der Dienst wurde um 8:05 Uhr neu gestartet und ist seit dem wieder verfügbar.

Wir untersuchen noch die Ursachen.

## 20.03.2024, 10:00 Uhr

Ursache für den Ausfall war eine nach dem Update vom 14.03.2024 noch nicht aktivierte Konfiguration zum automatische Neustart.
