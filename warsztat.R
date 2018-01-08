library(dplyr)
library(tidyr)
#przydatne funkcje
#paste, paste0
paste("blablabla","numer",1:10)
paste("blablabla","numer",1:10, sep="...")
paste0("blablabla","numer",1:10)
#zadanie 
a="folder1"
b="folder2"
c="folder3"
d="plik.csv"
#trzeba otrzymac "folder1/folder2/folder3/plik.csv"

#sub gsub
sub("a","b","ala ma kota")
gsub("a","b","ala ma kota")

#tolower
tolower("aAFsasdfGFS")

#operator <<-
text="Ala  ma Kota"
f=function(a,b)
{
    text<<-gsub(a,b,text)
}
f("Ala","Damian")


#zadanie
#napisac funkcje f(a,b) ktora trzy razy zmieni a->b w zmiennej text (korzystając <<-)
text="aaa,,,fdasfdsaf"

f("a","b")
f("f","r")

#funkcja anonimowa
r=0
s1=1:10
sapply(s1,function(x) r<<-paste0(r,x,sep="/"))


# sql joins
s1=data.frame(name=c("a","b","c"),wiek=c(1,2,3))
s2=data.frame(name=c("a","b","d"),wzrost=c(4,5,6))

inner_join(s1,s2)
full_join(s1,s2)

s1=data.frame(name=c("a","b","c"),wiek=c(1,2,3),par=c(1,2,3))
s2=data.frame(name=c("a","b","d"),wzrost=c(4,5,6),par=c(1,3,5))
full_join(s1,s2)
full_join(s1,s2,by="name")

###################zadanie
name=c("average_life","cons_alc","cons_edu","GDP","internetuser","people","students", "unemployers", "workers" )
read.f=function(x)
{
    #funkcja ktora przyjmuje nazwe tabeli do wczytywania 
    #zwraca tabele o trzech kolumnach: country, year, "odpowiedni parameter"
    #dane musza byc oczyszczone i dopasowane do odpowiednich parametrow
}

list_data=lapply(name,function(x) read.f(x))

#pusta data.frame
result_data=data.frame(X=list_data[[1]]$country,year=list_data[[1]]$year)
#polaczyc liste w jedna data_frame wzgledem year oraz country
################################

################################

#podzielic GPD, unepmloyers, workers przez people
################################

################################

rates=read.csv("rf_rate.csv")%>%mutate(year=paste0("X",year))

#dopasowac do rf rate do kazdego zapisu w result_data
################################

################################

#wczytac plik "expected_output.csv"
#dla kazdego parametru wyliczyc blad wzgledny oraz bezwzgledny
#wypisac kraje oraz lata z bledem wzglednym >5%

#sprawdzic odpowiedz z "final_c_and_y.csv"
