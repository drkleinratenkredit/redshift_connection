packages <- c('dplyr', 'dbplyr')
lapply(packages, require, character.only = TRUE)

bausteine_db <- dplyr::tbl(connection, 'bausteine')
bausteine_db %>% group_by(bausteinart) %>% dplyr::count()
bausteine_db %>% glimpse()
dbListTables(connection)

data <-tbl(connection, 'teilantraege') %>%
  filter(angebotangenommenamdatum > '2019-01-01') %>% 
  left_join(tbl(connection, "vorgaenge") , by = c("vorgangsnummer")) %>% 
  inner_join(tbl(connection, "bausteine") %>% 
               filter(bausteinart == 'Ratenkredit')  %>%
               select(-vorgangsnummer),
             by = c("teilantragsnummer")) %>%
  select(angebotangenommenamdatum, 
         statusvondatum, 
         status, 
         teilantragsnummer, 
         vorgangsnummer, 
         produktanbieterid,
         verwendungszweck,
         importquelle,
         kundenbetreuerep2partnerid,
         auszahlungsbetrag,
         laufzeitjahre) %>% 
  mutate(laufzeit = round(laufzeitjahre*12, digits = 0)) %>% 
  collect()

data %>% glimpse()
