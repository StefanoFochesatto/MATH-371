# sumOfDice.R

sampleSize<-1000000


numberDice=3

sumOfDice=rep(0,sampleSize)

str=sprintf("Generating %d samples of the experiment   `Fic nd the sum of %d dice'  ",sampleSize,numberDice)
print(str)

for (ii in 1:sampleSize){
  sumOfDice[ii]=sum(floor(runif(numberDice,1,7)))
  #print(sumOfDice[ii])
}
if (sampleSize<10000){
  print(sumOfDice)
}

hist(sumOfDice,prob=T)