# deploy api script

if(nchar(Sys.getenv('API_SCRIPT')) > 0) {
  # deploy
  api_script <- file.path('/plumber/plumber-apis', Sys.getenv('API_SCRIPT'))
  port_no <- 8001
} else {
  # dev
  api_script <- '03-plumber-api/plumber-apis/gapminder-api.R'
  port_no <- 8000
}

stopifnot(file.exists(api_script))

pr <- plumber::plumb(api_script)
pr$run(host='0.0.0.0', port=port_no) #view at localhost:8000 or localhost:8001 depending on run or deploy
