#upload all the files needed
feature_names <- read.table("features.txt")
activity_names <- read.table("activity_labels.txt")
x_test <- read.table("test/X_test.txt")
x_train <- read.table("train/X_train.txt")
y_test <- read.table("test/y_test.txt")
y_train <- read.table("train/y_train.txt")
subject_test <- read.table("test/subject_test.txt")
subject_train <- read.table("train/subject_train.txt")

#creat one test and one train data set
test_full <- cbind(subject_test,y_test,x_test)
train_full <- cbind(subject_train,y_train,x_train)

#combine the test and train datasets to create a big dataset
combined_data <- rbind(test_full,train_full)

#give the data set appropriate column names
colnames(combined_data) = c('subject','activity',as.character(feature_names$V2))

#find the indicies of only the mean and std columns in the data set
wanted_columns_indicies <- grep("*-mean\\()|-std\\()*", as.character(feature_names$V2))

#initialize a new character vector
wanted_columns_names <- vector("character")

#loop through the indicies and get the actual column names
#append them to the vector you initialized
for(i in 1:length(wanted_columns_indicies)){
  wanted_columns_names[i] <- as.character(feature_names$V2[[wanted_columns_indicies[i]]])
}

#assign the column names you want to a variable
variables <- c('subject','activity',wanted_columns_names)

#subset the big dataset to only the variable you want
final_combined_data <- combined_data[variables]

#rename the activities to a descriptive variable
final_combined_data$activity <- factor(final_combined_data$activity,activity_names$V1,activity_names$V2)

#aggregate all of the data up to have it per subject/activity combination
final_assignment_table <-aggregate(x = final_combined_data[3:68],by = list(final_combined_data$subject,final_combined_data$activity),FUN = mean, na.rm=TRUE)

#reassign the column names as they were changed by the aggregate variable
colnames(final_assignment_table) = variables

#write that table to a txt file, delimited via ',' so it can be used as a csv file
write.table(x = final_assignment_table,file = "assignment_data.txt",sep = ",",row.names = F)
