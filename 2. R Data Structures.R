# R DATA STRUCTURES 

# VECTORS
# Create vectors to store an ordered set of values called elements.
name <- c('Michael', 'Holly', 'Erin', 'Dwight')
age <- c(46,40,29,42)
marital_status <- c('YES','YES','NO','YES')
name[1:3]
name[-2]

marital_status[c(TRUE, TRUE, TRUE)]

gender <- factor(c('Male','Female','Female','Male'))
gender[1]

blood<-factor(c("A","A","AB",'0'))
blood[1:2]

# LISTS
MichaelScott <- list(name = name[1],
                     marital_status = marital_status[1],
                     blood_type = blood[1])
MichaelScott

str(age[1])
age[[1]]

MichaelScott$name

# DATA FRAMES
employee <- data.frame(name, age, marital_status, blood, stringsAsFactors = FALSE)
employee
employee[c(1,3)]
employee[-2]

ls()
write.csv(employee, file = 'C:/Users/Cansu/Documents/GitHub_Repository/R_DataAnalysis/employee.csv', row.names = FALSE)