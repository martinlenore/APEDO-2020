require(ggplot2)
require(reshape2)
require(gridExtra)
library(data.table)
library("tools")
library(tidyr)
library(readr)
library(lubridate)
library(RMySQL)
library(stringr)
library(varhandle)
library(tidyverse)
library(dplyr)
library(chron)
#install.packages("lubridate")


#Inputs from user

#args <- commandArgs(TRUE)
#id <- args[1]
#bacteria <- args[2]
#assay <- args[3]
#medium <- args[4]
#testPep1 <- args[5]
#testPep2 <- args[6]
#antibiotic <- args[7]
#antibiotic_concentration <- args[8]
#timepointsTest <- args[9]
FileID <- args[1]
ConcentrationUOM <- args[2]
controlAntibioticConcentration <- args[3]
AssayDate <- args[4]
GrowthAssayMethod <- args[5]
StrainID <- args[6]
ControlAntibiotic <- args[7]
RangeOfDilutionStart <- args[8]
RangeOfDilutionEnd <- args[9]
Supplements <- args[10]
Medium <- args[11]
PeptideID <- args[12]


InputMetaData <- data.frame(FileID, ConcentrationUOM, controlAntibioticConcentration, AssayDate, GrowthAssayMethod, StrainID, 
                            ControlAntibiotic, RangeOfDilutionStart, RangeOfDilutionEnd, Supplements, Medium, PeptideID)

print(InputMetaData)

# Input file (RawData.txt)
file <- file.choose()
file_type <- file_ext(file)
platefile_name <- file.info(file)

# used with csv in correct format
if (file_type == "csv") {
  df2 = read.csv(file, header = FALSE)
  numify <- function(x) as.numeric(as.character(x))
  df2[] <- lapply(df2, numify)
} else if (file_type == "txt") {
  dataFile = read.delim(file, header= FALSE)
  data = dataFile[,c(3,4,5,6,7,8,9,10,11,12,13,14)]
  df2 <- data[complete.cases(data), ]
  numify <- function(x) as.numeric(as.character(x))
  df2[] <- lapply(df2, numify)
}

df2

#Input RawTimes.txt

file <- file.choose()
file_type <- file_ext(file)

if (file_type == "txt") {
  dataFile = read.table(file, fill = TRUE,header= FALSE, stringsAsFactors = FALSE)
}
nrows = nrow(dataFile)
timepoint = list()
count = 1
for(i in 1:nrows){
  tp = dataFile[c(i),]
  str(tp)
  if(str_detect(tp[1], ":")){
    timepoint[[count]] = tp
    count = count+1
  }
}
timepoint[1]
tpU <- data.frame(matrix(unlist(timepoint), nrow = length(timepoint) , byrow = T), stringsAsFactors = FALSE)
tpU2 <- unite(tpU,col="DATETIME", sep =" ")
tpU3 <- row.names(tpU2$DATETIME)
tpU2[2,1]
# find number of plates
num_rows <- nrow(df2)
num_rows
num_plates <- num_rows / 9
num_plates

# split dataframe into seperate plates
plates <- split(df2,rep(1:num_plates, each=9))
scanRawData = list()
count1 = 1
for(i in 1:num_plates){
  scanRawData[[i]] = plates[[i]][2:9,1:12]
  count1 = count1+1
}

scanRawData

df4 <- data.frame();

# For loop to append integer values that matches plate values

df3 = data.frame();
for(i in 1:8){
  for(j in 1:12){
    a <- j
    df3 <- rbind(df3, a)  
  }
}

if(ncol(df4) != 0){
  df4 <- cbind(df4,df3)
}else{df4 <- df3;}

#for loop to append concentrations [A-H]

dfL <- data.frame()
for(k in 1:8){
  b <- LETTERS[k]
  for(l in 1:12){
    dfL <- rbind(dfL, list(b), stringsAsFactors= FALSE)
    #dfL <- append(dfL, b)
  }
}
typeof(dfL)

typeof(tpU4)

tpU4 <- as.POSIXct(tpU2$DATETIME, format =  "%H:%M %Y/%m/%d")



tpU5 <- unclass(tpU4)

tpU5[12]
tpU6
tpU7 <- data.frame()
for(t in 0:15){
tpU6 <- as.POSIXct((tpU5[t+1]+tpU5[t+2])/2,origin = "1970-01-01")
}

df4 <- cbind(df4,dfL)

#First for loop executes for number of plates times
#Second(inner) for loop executes number of Rows in plates times
#Third for loop executes number of column times

df5 <- data.frame();
for(k in 1:num_plates){
  df <- data.frame(scanRawData[k])
  df6 = data.frame();
  for(i in 1:8){
    for(j in 1:12){
      a <- df[i,j]
      df6 <- rbind(df6, a)  
    }
  }
  colnames(df6) <- c(tpU4[k])  
  if(ncol(df5) != 0)
    df5 <- cbind(df5,df6)
  else
    df5 <- df6;
}

#After all loops executes a new data frame is formed with all the 96 wells in single column

df4 <- cbind(df4,df5)
options(max.print=999999)  


write.csv(df4 , file = "df4.csv")


oddplate_count = 1
evenplate_count = 1
oddPlates = list()
evenPlates = list()
for(i in 1:num_plates){
  if(i%%2 != 0){
    op = scanRawData[[i]]
    oddPlates[[oddplate_count]] <- op
    oddplate_count = oddplate_count+1
  }else{
    ep = scanRawData[[i]]
    evenPlates[[evenplate_count]] <- ep
    evenplate_count = evenplate_count+1
  }
}
oddPlates
evenPlates

well <- readline(prompt="Enter Excluded Well ID: ")
if(well!= 0){
  odd_even <- readline(prompt="Enter odd/even: ")
  well_position <- read.csv("Well_positions.csv")
  m1 <- as.matrix(well_position)
  D1 <- which(m1==well, arr.ind=TRUE)
  ROWNum <-D1[,1]
  ColNum <- D1[,2]
  exlValue <- as.numeric('NA')
  oddPlates[[1]][ROWNum,ColNum]
  length(oddPlates)
  
  if(odd_even == "odd"){
    for(i in 1:length(oddPlates)){
      oddPlates[[i]][ROWNum,ColNum] <- exlValue
    }
  }else{
    for(i in 1:length(evenPlates)){
      evenPlates[[i]][ROWNum,ColNum] <- exlValue
    }
  }
}

oddPlates
evenPlates


#Peptides mean and sd
plateCount = 1
averageGrowthPP1_mean = list()
averageGrowthPP2_mean = list()
averageGrowthPP1_SD = list()
averageGrowthPP2_SD = list()
for(i in 1:length(evenPlates)){
  averageGrowthPP1_mean[[plateCount]] <- colMeans(rbind(oddPlates[[i]][1:3,2:11],evenPlates[[i]][1:3,2:11]), na.rm=TRUE)
  averageGrowthPP2_mean[[plateCount]] <- colMeans(rbind(oddPlates[[i]][4:6,2:11],evenPlates[[i]][4:6,2:11]), na.rm=TRUE)
  averageGrowthPP1_SD[[plateCount]] <- sapply(rbind(oddPlates[[i]][1:3,2:11],evenPlates[[i]][1:3,2:11]),sd, na.rm=TRUE)
  averageGrowthPP2_SD[[plateCount]] <- sapply(rbind(oddPlates[[i]][4:6,2:11],evenPlates[[i]][4:6,2:11]),sd, na.rm=TRUE)
  plateCount = plateCount + 1
}
averageGrowthPP1_mean
averageGrowthPP2_mean
averageGrowthPP1_SD
averageGrowthPP2_SD

if(num_plates %% 2 != 0){
  averageGrowthPP1_mean[[length(averageGrowthPP1_mean)+1]] <- colMeans(platesRawData[[num_plates]][1:3,2:11], na.rm=TRUE)
  averageGrowthPP2_mean[[length(averageGrowthPP2_mean)+1]] <-  colMeans(platesRawData[[num_plates]][4:6,2:11], na.rm=TRUE)
  averageGrowthPP1_SD[[length(averageGrowthPP1_SD)+1]] <- sapply(platesRawData[[num_plates]][1:3,2:11],sd, na.rm=TRUE)
  averageGrowthPP2_SD[[length(averageGrowthPP2_SD)+1]] <- sapply(platesRawData[[num_plates]][4:6,2:11],sd, na.rm=TRUE)
}
averageGrowthPP1_mean
averageGrowthPP2_mean
averageGrowthPP1_SD
averageGrowthPP2_SD
# Row 7

plateCount = 1
row7_mean = list()
for(i in 1:length(evenPlates)){
  row7_mean[[plateCount]] <- colMeans(rbind(oddPlates[[i]][7,2:11],evenPlates[[i]][7,2:11]), na.rm=TRUE)
  plateCount = plateCount + 1
}
row7_mean

if(num_plates %% 2 !=0){
  row7_mean[[length(row7_mean)+1]] <- scanRawData[[num_plates]][7,2:11]
}
row7_meanDF <- data.frame(matrix(unlist(row7_mean), nrow = length(row7_mean),byrow = T),stringsAsFactors = FALSE)

#Column 12
platecount = 1
column12_mean = list()
for (i in 1:length(evenPlates)){
  column12_mean[[platecount]] <- colMeans(rbind(oddPlates[[i]][1:6,12],evenPlates[[i]][1:6,12]),na.rm = TRUE)
  platecount = platecount +1
}
column12_mean
if(num_plates%%2 !=0){
  column12_mean[[length(column12_mean)+1]] <- scanRawData[[num_plates]][1:6,12]
}
column12_meanDF <- data.frame(matrix(unlist(column12_mean), nrow = length(column12_mean),byrow = T),stringsAsFactors = FALSE)
colnames(column12_meanDF) <- c("X1Control","X2Control","X3Control","X4Control","X5Control","X6Control")
#converting  avg plates list into dataframe and add concentrations

averageGrowthPP1_meanDF <- data.frame(matrix(unlist(averageGrowthPP1_mean), nrow = length(averageGrowthPP1_mean) , byrow = T), stringsAsFactors = FALSE)
averageGrowthPP2_meanDF <- data.frame(matrix(unlist(averageGrowthPP2_mean), nrow = length(averageGrowthPP2_mean) , byrow = T), stringsAsFactors = FALSE)
colnames(averageGrowthPP1_meanDF) <- c("X512","X256","X128","X64","X32","X16","X8","X4","X2","X1")
colnames(averageGrowthPP2_meanDF) <- c("X512","X256","X128","X64","X32","X16","X8","X4","X2","X1")

averageGrowthPP1_SD_DF <- data.frame(matrix(unlist(averageGrowthPP1_SD), nrow = length(averageGrowthPP1_SD) , byrow = T), stringsAsFactors = FALSE)
averageGrowthPP2_SD_DF <- data.frame(matrix(unlist(averageGrowthPP2_SD), nrow = length(averageGrowthPP2_SD) , byrow = T), stringsAsFactors = FALSE)
colnames(averageGrowthPP1_SD_DF) <- c("X512","X256","X128","X64","X32","X16","X8","X4","X2","X1")
colnames(averageGrowthPP2_SD_DF) <- c("X512","X256","X128","X64","X32","X16","X8","X4","X2","X1")

averageGrowthPP1_meanDF
averageGrowthPP2_meanDF
averageGrowthPP1_SD_DF
averageGrowthPP2_SD_DF

#ODD and EVEN Plate Timepoints
countODDTP = 1
countEVENTP = 1
length(timepoint)
tpODDPlates = list()
tpEVENPlates = list()
for(i in 1:length(timepoint)){
  if(i%%2 != 0){
    tpODD = timepoint[[i]][,1:2]
    tpODDPlates[[countODDTP]] <- tpODD
    countODDTP = countODDTP + 1
  }else{
    tpEVEN = timepoint[[i]][,1:2]
    tpEVENPlates[[countEVENTP]] <- tpEVEN
    countEVENTP = countEVENTP + 1
  }
}
tpODDPlates
tpEVENPlates

timepoint_oddPlate <- data.frame(matrix(unlist(tpODDPlates), nrow = length(tpODDPlates) , byrow = T), stringsAsFactors = FALSE)
colnames(timepoint_oddPlate) <- c("TIME","DATE")
timepoint_evenPlate <- data.frame(matrix(unlist(tpEVENPlates), nrow =length(tpEVENPlates), byrow = T), stringsAsFactors = FALSE)
colnames(timepoint_evenPlate) <- c("TIME","DATE")
timepoint_oddPlate
timepoint_evenPlate

timepoint_oddPlate <- unite(timepoint_oddPlate,col="DATETIME", sep =" ")
timepoint_evenPlate <- unite(timepoint_evenPlate, col = "DATETIME", sep = "")


#merging averages of plates and timepoints into one single data frame

averageGrowthPP1_meanDFTP <- dplyr::bind_cols(averageGrowthPP1_meanDF,timepoint_oddPlate)
averageGrowthPP2_meanDFTP<- dplyr::bind_cols(averageGrowthPP2_meanDF,timepoint_oddPlate)
averageGrowthPP1_SD_DFTP <- dplyr::bind_cols(averageGrowthPP1_SD_DF,timepoint_oddPlate)
averageGrowthPP2_SD_DFTP <- dplyr::bind_cols(averageGrowthPP2_SD_DF,timepoint_oddPlate )
row7_meanDFTP <- dplyr::bind_cols(row7_meanDF,timepoint_oddPlate )
column12_meanDFTP <- dplyr::bind_cols(column12_meanDF,timepoint_oddPlate)

#Growth Plot at 24hrs vs concentration

#averageGrowthPP1_meanDFTP[1,]$DATETIME
#class(averageGrowthPP1_meanDFTP[1,]$DATETIME)

#startTime <- as.POSIXct(averageGrowthPP1_meanDFTP[1,]$DATETIME, format, tryFormats = c("%H:%M\t%Y-%m-%d","%H:%M\t%Y/%m/%d"))
#class(startTime)

# adding 24 hours to starttime

#time_24 <- startTime + lubridate::days(1)
#class(time_24)
#time_24 < as.POSIXct(averageGrowthPP1_meanDFTP[1,]$DATETIME, format = "%H:%M\t%Y/%m/%d")
#Sys.time()
#finding row greater than 1440

#mic_row = 0;
#for(i in 1:nrow(averageGrowthPP1_meanDFTP)){
#  if(time_24 < as.POSIXct(averageGrowthPP1_meanDFTP[i,]$DATETIME, format = "%H:%M\t%Y-%m-%d","%H:%M\t%Y/%m/%d"))
#  {
#    mic_row = i;
#    break
#  }
#}
#mic_row - 1

#if(mic_row > 0){
# data1 <- averageGrowthPP1_meanDFTP[mic_row - 1,]

# write.csv(data1 , file = "24hr.csv")
# dta <- read_csv("24hr.csv")
# dtdt <- melt(dta , id = c("X1", "DATETIME"), variable.name = "X")
# view(dtdt)

#ggplot(dtdt, aes(X, value , group = DATETIME))+
#  geom_line(aes(color=DATETIME))+
#  geom_point(aes(color=DATETIME))
#}

#Plot for peptide1

write.csv(averageGrowthPP1_meanDFTP, file =  "averageGrowthPP1_mean.csv")
TestData <- read_csv("averageGrowthPP1_mean.csv")

#Melt the data using Reshape2, I have renamed the first col as ID
df <- melt(TestData, id= c("X1", "DATETIME"),  variable.name = "X")
df$DATETIME <- as.POSIXct(df$DATETIME , format = "%H:%M\t%Y/%m/%d")

str(df)
View(df)

#df$DATETIME <- as.POSIXct(df$DATETIME , format,tryFormats = c("%H:%M\t%Y-%m-%d","%H:%M\t%Y/%m/%d"))
#str(df)
View(df)

ggplot(data=df , aes(x = DATETIME , y=value, group=X)) +
  geom_line(aes(color=X))+
  geom_point(aes(color=X))+facet_grid(rows = vars(X))+ theme_bw()
ggsave("averageGrowthPP1_mean.png")

# Plot for MIC

ggplot(df, aes(X, value))+geom_line(aes(color=X))+geom_point(aes(color=X))

#Plot for peptide2

write.csv(averageGrowthPP2_meanDFTP, file =  "averageGrowthPP2_mean.csv")
TestData1 <- read_csv("averageGrowthPP2_mean.csv")

#Melt the data using Reshape2, I have renamed the first col as ID
df1 <- melt(TestData1, id= c("X1", "DATETIME"),  variable.name = "X")

df1$DATETIME <- as.POSIXct(df1$DATETIME , format="%H:%M\t%Y/%m/%d")
str(df1)
View(df1)

ggplot(data=df1 , aes(x = DATETIME , y=value, group=X)) +
  geom_line(aes(color=X))+
  geom_point(aes(color=X))+facet_grid(rows = vars(X))+ theme_bw()
ggsave("averageGrowthPP2_mean.png")

# Plot for MIC
ggplot(df1, aes(X, value))+geom_line(aes(color=X))+geom_point(aes(color=X))

#plot for peptide1 SD

write.csv(averageGrowthPP1_SD_DFTP, file =  "averageGrowthPP1_SD.csv")
PP1_sd <- read_csv("averageGrowthPP1_SD.csv")

#Melt the data using Reshape2, I have renamed the first col as ID
SD1 <- melt(PP1_sd, id= c("X1", "DATETIME"),  variable.name = "X")

SD1$DATETIME <- as.POSIXct(SD1$DATETIME , format= "%H:%M\t%Y/%m/%d")
str(SD1)
View(SD1)

ggplot(data=SD1 , aes(x = DATETIME , y=value, group=X)) +
  geom_line(aes(color=X))+
  geom_point(aes(color=X))+facet_grid(rows = vars(X))+ theme_bw()
ggsave("MICPP1SD.png")

# plot for peptide2 SD
write.csv(averageGrowthPP2_SD_DFTP, file =  "averageGrowthPP2_SD.csv")
PP2_sd <- read_csv("averageGrowthPP2_SD.csv")

#Melt the data using Reshape2, I have renamed the first col as ID
SD2 <- melt(PP2_sd, id= c("X1", "DATETIME"),  variable.name = "X")

SD2$DATETIME <- as.POSIXct(SD2$DATETIME , format = "%H:%M\t%Y/%m/%d")
str(SD2)
View(SD2)

ggplot(data=SD2 , aes(x = DATETIME , y=value, group=X)) +
  geom_line(aes(color=X))+
  geom_point(aes(color=X))+facet_grid(rows = vars(X))+ theme_bw()
ggsave("averageGrowthPP2_SD.png")

# Plot for row 7
write.csv(row7_meanDFTP , file = "Row7Data.csv")
Row7 <- read_csv("Row7Data.csv")

Row7_data <- melt(Row7, id = c("X1" , "DATETIME"), variable.name = "X")
Row7_data$DATETIME <- as.POSIXct(Row7_data$DATETIME,format = "%H:%M\t%Y/%m/%d")

str(Row7_data$DATETIME)
view(Row7_data)

ggplot(Row7_data, aes(DATETIME , value, group = X))+geom_line(aes(color=X))+
  geom_point(aes(color=X))

# Plot for column 12
write.csv(column12_meanDFTP , file = "Column12Data.csv")
column12 <- read_csv("Column12Data.csv")

column12_data <- melt(column12, id = c("X1" , "DATETIME"), variable.name = "X")
column12_data$DATETIME <- as.POSIXct(column12_data$DATETIME,format = "%H:%M\t%Y/%m/%d")
view(column12_data)

ggplot(column12_data, aes(DATETIME , value, group = X))+geom_line(aes(color=X))+
  geom_point(aes(color=X))
