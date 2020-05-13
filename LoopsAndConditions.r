# LOOPS AND CONDITIONS IN R 


# IF CONDITION
check <-1
if(check == 1)
{
  print("hello")
}
if(check == 2)
{
  print("Hello")
}

# IF ELSE Condition 
# Used to check two conditions yes or no 
check<-2
ifelse(check==1,"True","False")



# POWER OF IF ELSE LOOP
# To test the values 
testval<-c(0,1,1,0,1,0,1,0)
ifelse(testval==1,"True","False")

ifelse(testval==1, 5*testval, 3*testval)


# Switch cases 
lets.swtich <- function(x)
{
  switch(x, "a"="alpha","b"="beta","c"="cos","t"="theta","o"="omega","OUT OF BOUNDS")
}  

lets.swtich("a")
lets.swtich("t")
lets.swtich("w")

# for 

for(i in 1:10)
{
  print(i)
}

# power of print in R
print(1:10)


# While loop 
 while(x <=20)
 {
   print(x)
   x<- x+2
 }


# LOOP CONTROL STATEMENT 

# NEXT STATEMENT 

for(i in 1:10)
{
  if(i == 3)
  {
    next
  }
  print(i)
}




# Break Statement 

for(i in 1:10)
{
  if(i==3)
  {
    break
  }
  print(i)
} 



# LOOPS COMPLETED 





























# loops and conditions practice 

check <- 1
if(check == 1)
{
  print("hhekko")
}


# if else 

check <-5
ifelse(check == 5,"True","Flase")

# power of if else 
testvalu <- y(1,0,0,0,0,1,1,1)

ifelse(testvalu ==1, "true" , "false")





