connect <- function(dbname, host, port, user, password) {
  connection <- dbConnect(
    RPostgres::Postgres(),
    dbname = dbname,
    host = host,
    port = port,
    user = user,
    password = password,
    bigint = "numeric"
  )
  
  return(connection)
}