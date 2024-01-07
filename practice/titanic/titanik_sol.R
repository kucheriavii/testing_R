setwd("C:/data_science/R/R/practice/titanic") #встановити робочу директорію

titanic.train <- read.csv(file="train.csv", stringsAsFactors = FALSE, header = TRUE)
titanic.test <- read.csv(file="test.csv", stringsAsFactors = FALSE, header = TRUE)
median(titanic.train$Age, na.rm = TRUE ) #na.rm - не враховувати NA
median(titanic.test$Age, na.rm = TRUE ) #na.rm - не враховувати NA

titanic.train$IsTrainSet <- TRUE
#tail(titanic.train$IsTrainSet)

titanic.test$IsTrainSet <- FALSE
#tail(titanic.test$IsTrainSet)

ncol(titanic.train)
ncol(titanic.test)

names(titanic.train)
names(titanic.test)

titanic.test$Survived <- NA

titanic.full <- rbind(titanic.train, titanic.test)

table(titanic.full$IsTrainSet)

table(titanic.full$Embarked)

#привести до адекватного виду Embarked
titanic.full[titanic.full$Embarked == "", "Embarked"] <- 'S'
table(titanic.full$Embarked)

#привести до нормального виду Age
table(is.na(titanic.full$Age))

age.median <- median(titanic.full$Age, na.rm = TRUE)

titanic.full[is.na(titanic.full$Age), "Age"] <- age.median

#привести до нормального виду Fare(вартість проїзду)
table(is.na(titanic.full$Fare))

fare.median <- median(titanic.full$Fare, na.rm = TRUE)

titanic.full[is.na(titanic.full$Fare), 'Fare'] <- fare.median

#categorical casting
str(titanic.full)
titanic.full$Pclass <- as.factor(titanic.full$Pclass)
titanic.full$Sex <- as.factor(titanic.full$Sex)
titanic.full$Embarked <- as.factor(titanic.full$Embarked)

str(titanic.full)

#сформувати адекватний titanic.train та titanic.test 
titanic.train <- titanic.full[titanic.full$IsTrainSet==TRUE,]
titanic.test <- titanic.full[titanic.full$IsTrainSet==FALSE,]


