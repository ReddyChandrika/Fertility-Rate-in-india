# checking the working directory
getwd() 
"D:/R Practicals/Project"

#Reading the data
data <- read.csv("updated.csv",header = TRUE, sep = ",")
data <- read.csv("nfhs3.csv",header = TRUE, sep = ",")

#check the data in the variable that  we are sending the data
data

#To check whether this is a dataframe or not
is.data.frame(data)

#To converting it into a dataframe
as.data.frame(data)
#Converting the coloumn names as per my convienience to process the data
vars <- c("Total","rural/urban","Education","child_is_twin","year_of_birth", + "sex_of_child", "Religion")
colnames(data) <- vars
colnames(data)

#Delete the missing values in the vector 
complete.cases(data)

# checking in which cases the missing values(NA) are present
which(complete.cases(data))

#Deleting all the missing values
which(!complete.cases(data))

#storing in a variable
na_vec <- which(!complete.cases(data))

#excluding all the NA values
data_no_na <- data[-na_vec,]
data_no_na

#The following codes helps us to extract the following coloumns as mentioned in ' '
df1 <- data_no_na$'rural/urban'
df1

df2 <- data_no_na$'year_of_birth'
df2

df3 <- data_no_na$'sex_of_child'
df3

df4 <- data_no_na$'child_is_twin'
df4

df5 <- data_no_na$'Religion'
df5

# logistic regression for the Coloumns that are representing the data as per the requirement
glm(df3~df1)
glm(df3~df2)
glm(df3~df4)
glm(df3~df5)
glm(df3~df6)

#summary of the data 
summary(data)
