#Reading the csv file
frailty = read.csv("/Users/dheerajreddy/Downloads/PDS_UMKC-main/PDS/Assignment/1.1/data_clean/clean_frailty_data.csv")
frailty

#Getting the info of complete csv
summary(frailty)

frailty$Frailty <- as.factor(frailty$Frailty)


t_test_frailty=with(frailty,t.test(frailty$Weight.lb. ~ frailty$Frailty,var.equal = FALSE))
t_test_frailty

capture.output(t_test_frailty,file="/Users/dheerajreddy/Downloads/PDS_UMKC-main/PDS/Assignment/1.1/results/results.txt")


pairs(~ Height.in. + Weight.lb.  + Age + Grip_Strength.kg.+ Frailty  , data = frailty)

frailty$Frailty <- as.factor(frailty$Frailty)
plot(frailty$Frailty, frailty$Grip_Strength.kg.,
     xlab = "Frailty", ylab = "GripStrength",main="Frailty vs GripStrength",col.main="green", col=(c("red","yellow")))
