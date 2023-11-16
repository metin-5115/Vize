url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = "MapsThatChangedOurWorld_StoryMap_Data.csv", mode = "wb")

maps <- read.csv(url, header = TRUE,sep = ";")

maps$Latitude <- gsub("N", "", (maps$Latitude))
maps$Latitude<-as.numeric(maps$Latitude)