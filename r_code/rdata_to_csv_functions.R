loadRData <- function(fileName){
  #loads an RData file, and returns it
  load(fileName)
  get(ls()[ls() != "fileName"])
}

rdata_to_csv <- function(origin_path, destination_path){
  #loads an Rdata file from a path and writing it as a csv file in other path
  data = loadRData(origin_path)
  write.csv(file=destination_path, x=data)
}
