# Redshift Connection Service

## Was ist Redshift?

Amazon Redshift ist ein schnelles, skalierbares Data Warehouse, das die Analyse all Ihrer Daten in Ihrem Data Warehouse und Data Lake einfach und kostengünstig macht.

Weiter: https://aws.amazon.com/de/redshift/

## Bedingungen um R und Redshift zu verwenden

### Abhängigkeiten laden
```
packages <- c('RPostgres', 'RPostgreSQL')
lapply(packages, require, character.only = TRUE)
```

### Redshift Credentials in .Rprofile hinterlegen
```
Sys.setenv("drklein.dbname" = "dbname", "drklein.host" = "host", "drklein.port" = "port", "drklein.user" = "user", "drklein.password" = "passwort")
```

### redshift_db.R oder redshift_dbx.R ausführen

Ergbnis ist eine Übersicht über alle existierenden Tabellen im Redshift Shema.

Hier stehen die bekannten Tabellen *Bausteine*, *Vorgänge*, *Teilanträge* und *Provisionen* zur Verfügung. Zusätzlich  befinden sich in den Tabellen *Partner* und *Partnerrelationen* Informationen zur Partnerstruktur.