connect <- function(dbname, host, port, user, password) {
  connection <- dbxConnect(
    adapter = "postgres",
    dbname = dbname,
    host = host,
    port = port,
    user = user,
    password = password,
    bigint = "numeric"
  )
  
  return(connection)
}