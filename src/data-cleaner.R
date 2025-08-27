### Data Cleaner Scripts
## This takes input files :
### 
###
###
###
## and outputs:
###

library(tidyverse)
library(lubridate)

metadata <- read.csv("data/video-metadata.csv")

summary(metadata)

names(metadata) <- c("videoID", "posted", "duration",
                     "views", "likes", "comments", "hashtags",
                     "purpose", "themes", "sentiment", "barriers",
                     "stakeholders", "misinformation", "data_supported")

metadata_clean <- metadata |>
  mutate(posted = mdy(posted),
         seconds = period_to_seconds(ms(duration)),
         views = gsub(",", "", views),
         views = as.numeric(views),
         likes = gsub(",", "", likes),
         likes = as.numeric(likes),
         comments = gsub(",", "", comments),
         comments = as.numeric(comments),
         misinformation = recode(misinformation,
                                 "Y" = TRUE,
                                 "N" = FALSE,
                                 .default = NA),
         data_supported = recode(data_supported,
                                 "Y" = TRUE,
                                 "N" = FALSE,
                                 .default = NA))

         