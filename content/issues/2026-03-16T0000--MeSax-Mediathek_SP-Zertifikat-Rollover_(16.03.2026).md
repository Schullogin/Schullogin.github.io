---
title: "MeSax-Mediathek: SP-Zertifikat-Rollover (16.03.2026)"
date: 2026-03-16T00:00:00
# resolved: true # field not needed for maintenance informational
# resolvedWhen: 2026-03-16T00:00:00 # field not needed for maintenance informational
# severity: down # field not needed for maintenance informational
informational: true # field makes issue look more like a blog post and removes any references to downtime length
pin: true # Resolving: set to false
affected:
- MeSax Schullogin
- MeSax
- MeSax-Wissensportal
section: issue
---

Technische Änderung an der SSO-Infrastruktur von MeSax.
Am 2026-03-16 um 10:00 CET wird das X.509-Zertifikat des SAML Service Providers (SP) erneuert.
Die SP-Metadaten enthalten bereits beide Zertifikate (alt und neu). 
Am 2026-03-16 um 10:00 CET wird das alte Zertifikat deaktiviert. Ab diesem Zeitpunkt ist nur noch das neue Zertifikat gültig. Der Rollover erfolgt koordiniert und ohne geplante Downtime.
