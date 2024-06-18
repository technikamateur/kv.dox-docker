# kv.dox-docker
kv.dox ist ein KIM-Dienst für alle Praxen mit kassenärztlicher Zulassung der Kassenärztliche Bundesvereinigung (KBV). Dabei ist kv.dox u.a. für Linux verfügbar. Die Installation kann auf dem PC oder Server erfolgen.

Die Installation im Netzwerk hat den Vorteil, dass mehere Clients damit verbunden werden können. Außerdem entlastet es die Clients, da kv.dox gerne einmal 500 MB RAM im Hintergrund benötigt.

**Aus Lizenzrechtlichen Gründen, befindet sich die .deb Datei von kv.dox nicht in disem Repo. Bitte im Kundenportal selbst herunterladen.**

## Motivation
In vielen Praxen findet sich (zumindest ein einfacher) Linux Server zur Datenspeicherung. Ziel des Projekts ist es, kv.dox auf jedem System (auf dem Docker läuft) mit wenigen Schritten zu deployen.

Grundlage ist ein Debian Image. RAM Verbrauch liegt bei 50-100 MB.

## Vorraussetzung
- Ein Linux Server mit Docker mit 500 MB freiem Speicher

## Installation
- Repo clonen
- kv.dox .deb file neben dem Dockerfile speichern
- Docker image bauen: `docker build -t kvdox:1.0 .`
- Docker container starten: `docker compose up -d`
Fertig. Anschließend ist der Container auf Port 4443 errreichbar.

## Hinweis
Die Konfiguration wird persistent in einem Unterordner *config* abgelegt. Jeder ist für zusätzliche Backups der Konfiguration insbesondere vor einem Update des Docker containers selbst verantwortlich! Ich übernehme keinerlei Haftung. Für mehr Informationen siehe *Disclaimer of Warranty* in *LICENSE*.
