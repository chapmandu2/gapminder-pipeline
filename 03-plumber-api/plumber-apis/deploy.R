# deploy api script

api_script <- file.path('/plumber/plumber-apis', Sys.getenv('API_SCRIPT'))
stopifnot(file.exists(api_script))

pr <- plumber::plumb(api_script)
pr$run(host='0.0.0.0', port=8000)
