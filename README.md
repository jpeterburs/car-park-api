# car-park-api
API for Control software for the access control of a multi-storey car park

## Setup

1. Install Docker + docker-compose
2. Container starten: `docker-compose up -d`
3. Database einrichten wenn diese nicht bereits existiert: `docker-compose exec backend rake db:create`
4. Migrationen durchführen wenn welche vorhanden: `docker-compose exec backend rake db:migrate`
5. Datenbank mit Kunden befüllen (Pro durchlauf wird ein Kujnde erstellt): `docker-compose exec backend rake db:seed`

## Konsole öffnen

```shell
$ docker-compose exec backend rails console
```
