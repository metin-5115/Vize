#1.1

url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = "MapsThatChangedOurWorld_StoryMap_Data.csv", mode = "wb")
#1.2

maps <- read.csv(url, header = TRUE,sep = ";")
#1.3

maps$Latitude <- gsub("N", "", (maps$Latitude))
maps$Latitude<-as.numeric(maps$Latitude)

#1.4

idx <- which(grepl("W", maps$Longitude))
#1.5

maps$Longitude <- gsub("E","",maps$Longitude)
maps$Longitude <- gsub("W","",maps$Longitude)
maps$Longitude <- as.character(maps$Longitude)
#1.6
maps$Year <- gsub("AD","",maps$Year)
maps$Year <- as.numeric(maps$Year)