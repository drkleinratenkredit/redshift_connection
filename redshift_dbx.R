# .Rprofile Check
file.exists("~/.Rprofile")
help("Rprofile")

# Abhängigkeiten laden
packages <- c('dbx')
lapply(packages, require, character.only = TRUE)

# Redshift DBX Connection
source('redshift/dbx_connection.R')
connection <- connect(Sys.getenv("drklein.dbname"), Sys.getenv("drklein.host"), Sys.getenv("drklein.port"), Sys.getenv("drklein.user"), Sys.getenv("drklein.password"))

# Alle existieren Tabellen anzeigen
dbListTables(connection)
