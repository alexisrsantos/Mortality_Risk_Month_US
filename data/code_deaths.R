require(tidyverse) #Here I get tidiverse to make life easier
library(ggplot2) #For producing graphs later

# 2000 Data
mort2000<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2000.csv") #Read 2000 data

#Clean 2000 data
mort2000<-subset(mort2000,ager12>07)
mort2000<-subset(mort2000,ager12<12)
mort2000$count<-1
mort2000$year<-2000
mort2000<-subset(mort2000,!marstat==9)
mort2000$evermarried<-ifelse(mort2000$marstat==1,0,1)

data2000<- mort2000 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2000) #Remove big data file

# 2001 Data 
mort2001<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2001.csv") #Read 2001 data

#Clean 2001 data
mort2001<-subset(mort2001,ager12>07)
mort2001<-subset(mort2001,ager12<12)
mort2001$count<-1
mort2001$year<-2001
mort2001<-subset(mort2001,!marstat==9)
mort2001$evermarried<-ifelse(mort2001$marstat==1,0,1)


data2001<- mort2001 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2001)

mort2002<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2002.csv") #Read 2002 data

#Clean 2002 data
mort2002<-subset(mort2002,ager12>07)
mort2002<-subset(mort2002,ager12<12)
mort2002$count<-1
mort2002$year<-2002
mort2002<-subset(mort2002,!marstat==9) #Remove missing martial status
mort2002$evermarried<-ifelse(mort2002$marstat==1,0,1)

data2002<- mort2002 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2002)

mort2003<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2003.csv") #Read 2003 data

#Clean 2003 data
mort2003<-subset(mort2003,ager12>07)
mort2003<-subset(mort2003,ager12<12)
mort2003$count<-1
mort2003$year<-2003

table(mort2003$marstat)

mort2003<-subset(mort2003,!marstat=="U") #Remove missing martial status
mort2003$evermarried<-ifelse(mort2003$marstat=="S",0,1)

data2003<- mort2003 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2003)

mort2004<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2004.csv") #Read 2004 data

#Clean 2004 data
mort2004<-subset(mort2004,ager12>07)
mort2004<-subset(mort2004,ager12<12)
mort2004$count<-1
mort2004$year<-2004

table(mort2004$marstat)

mort2004<-subset(mort2004,!marstat=="U") #Remove missing martial status
mort2004$evermarried<-ifelse(mort2004$marstat=="S",0,1)


data2004<- mort2004 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2004)

mort2005<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2005.csv") #Read 2005 data

#Clean 2005 data
mort2005<-subset(mort2005,ager12>07)
mort2005<-subset(mort2005,ager12<12)
mort2005$count<-1
mort2005$year<-2005

mort2005<-subset(mort2005,!marstat=="U") #Remove missing martial status
mort2005$evermarried<-ifelse(mort2005$marstat=="S",0,1)

data2005<- mort2005 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2005)

mort2006<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2006.csv") #Read 2006 data

#Clean 2006 data
mort2006<-subset(mort2006,ager12>07)
mort2006<-subset(mort2006,ager12<12)
mort2006$count<-1
mort2006$year<-2006

mort2006<-subset(mort2006,!marstat=="U") #Remove missing martial status
mort2006$evermarried<-ifelse(mort2006$marstat=="S",0,1)

data2006<- mort2006 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2006)

mort2007<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2007.csv") #Read 2007 data

#Clean 2007 data
mort2007<-subset(mort2007,ager12>07)
mort2007<-subset(mort2007,ager12<12)
mort2007$count<-1
mort2007$year<-2007


table(mort2007$marstat)

mort2007<-subset(mort2007,!marstat=="U") #Remove missing martial status
mort2007$evermarried<-ifelse(mort2007$marstat=="S",0,1)

data2007<- mort2007 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2007)

mort2008<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2008.csv") #Read 2008 data

#Clean 2008 data
mort2008<-subset(mort2008,ager12>07)
mort2008<-subset(mort2008,ager12<12)
mort2008$count<-1
mort2008$year<-2008

mort2008<-subset(mort2008,!marstat=="U") #Remove missing martial status
mort2008$evermarried<-ifelse(mort2008$marstat=="S",0,1)

data2008<- mort2008 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2008)

mort2009<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2009.csv") #Read 2009 data

#Clean 2009 data
mort2009<-subset(mort2009,ager12>07)
mort2009<-subset(mort2009,ager12<12)
mort2009$count<-1
mort2009$year<-2009

mort2009<-subset(mort2009,!marstat=="U") #Remove missing martial status
mort2009$evermarried<-ifelse(mort2009$marstat=="S",0,1)

data2009<- mort2009 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2009)

mort2010<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2010.csv") #Read 2010 data

#Clean 2010 data
mort2010<-subset(mort2010,ager12>07)
mort2010<-subset(mort2010,ager12<12)
mort2010$count<-1
mort2010$year<-2010

mort2010<-subset(mort2010,!marstat=="U") #Remove missing martial status
mort2010$evermarried<-ifelse(mort2010$marstat=="S",0,1)

data2010<- mort2010 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2010)

mort2011<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2011.csv") #Read 2011 data

#Clean 2011 data
mort2011<-subset(mort2011,ager12>07)
mort2011<-subset(mort2011,ager12<12)
mort2011$count<-1
mort2011$year<-2011

mort2011<-subset(mort2011,!marstat=="U") #Remove missing martial status
mort2011$evermarried<-ifelse(mort2011$marstat=="S",0,1)

data2011<- mort2011 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2011)

mort2012<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2012.csv") #Read 2012 data

#Clean 2012 data
mort2012<-subset(mort2012,ager12>07)
mort2012<-subset(mort2012,ager12<12)
mort2012$count<-1
mort2012$year<-2012

mort2012<-subset(mort2012,!marstat=="U") #Remove missing martial status
mort2012$evermarried<-ifelse(mort2012$marstat=="S",0,1)


data2012<- mort2012 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2012)

mort2013<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2013.csv") #Read 2013 data

#Clean 2013 data
mort2013<-subset(mort2013,ager12>07)
mort2013<-subset(mort2013,ager12<12)
mort2013$count<-1
mort2013$year<-2013

mort2013<-subset(mort2013,!marstat=="U") #Remove missing martial status
mort2013$evermarried<-ifelse(mort2013$marstat=="S",0,1)

data2013<- mort2013 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2013)

mort2014<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2014.csv") #Read 2014 data

#Clean 2014 data
mort2014<-subset(mort2014,ager12>07)
mort2014<-subset(mort2014,ager12<12)
mort2014$count<-1
mort2014$year<-2014

mort2014<-subset(mort2014,!marstat=="U") #Remove missing martial status
mort2014$evermarried<-ifelse(mort2014$marstat=="S",0,1)

data2014<- mort2014 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2014)

mort2015<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2015.csv") #Read 2015 data

#Clean 2015 data
mort2015<-subset(mort2015,ager12>07)
mort2015<-subset(mort2015,ager12<12)
mort2015$count<-1
mort2015$year<-2015

mort2015<-subset(mort2015,!marstat=="U") #Remove missing martial status
mort2015$evermarried<-ifelse(mort2015$marstat=="S",0,1)

data2015<- mort2015 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2015)

mort2016<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2016.csv") #Read 2016 data

#Clean 2016 data
mort2016<-subset(mort2016,ager12>07)
mort2016<-subset(mort2016,ager12<12)
mort2016$count<-1
mort2016$year<-2016

mort2016<-subset(mort2016,!marstat=="U") #Remove missing martial status
mort2016$evermarried<-ifelse(mort2016$marstat=="S",0,1)

data2016<- mort2016 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2016)

mort2017<-read.csv("C:/Users/ars39/Desktop/Deaths/mort2017.csv") #Read 2017 data

#Clean 2017 data
mort2017<-subset(mort2017,ager12>07)
mort2017<-subset(mort2017,ager12<12)
mort2017$count<-1
mort2017$year<-2017

mort2017<-subset(mort2017,!marstat=="U") #Remove missing martial status
mort2017$evermarried<-ifelse(mort2017$marstat=="S",0,1)

data2017<- mort2017 %>%
  group_by(monthdth,ager12) %>%
  summarize(Month_count=sum(count), Year=mean(year))

rm(mort2017)

final_data<-bind_rows(data2000, data2001,data2002,data2003, data2004,data2005,data2006,
                      data2007, data2008,data2009,data2010, data2011,data2012,data2013,
                      data2014, data2015,data2016,data2017)

rm(data2000, data2001,data2002,data2003, data2004,data2005,data2006,
   data2007, data2008,data2009,data2010, data2011,data2012,data2013,
   data2014, data2015,data2016,data2017)

# Figure for total deaths, this data will be removed after we create the figure
final_data1<-final_data
final_data1$age_group<-final_data1$ager12
final_data1$age_group<-factor(final_data1$age_group,levels=c(8,9,10,11),labels=c("55-64 years","65-74 years","75-84 years", "85 and over"))

ggplot(data=final_data1, aes(x=Year, y=Month_count, fill=age_group)) +
  geom_bar(stat="identity")+
  scale_fill_brewer(palette="Set1")+
  theme_classic()+ylim(0,2500000)+geom_hline(yintercept=0, linetype="solid", 
                                             color = "black", size=0.5)+
  theme(axis.line.x=element_blank())+
  theme(legend.title=element_text(size = 9),
        legend.position ="bottom", 
        legend.justification ="center")+
  labs(fill="Age Group",title = "Total deaths of older-adults in the United States", subtitle = "Data from 2000-2017", y = "Total Deaths", x ="Year")

rm(final_data1)  #Remove the dummy dataset I created to leave the original data intact

# Now I do months only
month_average <- final_data %>%
  group_by(Year, monthdth) %>%
  summarize(Month_count=sum(Month_count))

month_average <- month_average %>%
  group_by(monthdth) %>%
  summarize(Mean = mean(Month_count), s = sd(Month_count)) %>%
  mutate(Lower = Mean - qt(0.975, 17) * s/sqrt(18),
         Upper = Mean + qt(0.975, 17) * s/sqrt(18))

average_deaths2 <- ggplot(data =month_average, aes(x =monthdth , y = Mean))+
  geom_point(size = 4) + #scale_color_brewer(name ="",palette="Spectral")+
  geom_errorbar(aes(ymin=Lower, ymax=Upper), width = 0.1)+
  theme_classic()+
  theme(axis.ticks.x=element_blank(),legend.title=element_blank(),
        legend.position ="bottom", 
        legend.justification ="center")+
  labs(title = "Number of deaths for older-adults in the United States", subtitle = "Data from 2000-2017", y = "Historical Ranges of Variation", x ="Month")

average_deaths2

###55-64 years old
month_average3 <- final_data %>%
  filter(ager12==8)%>%
  group_by(monthdth) %>%
  summarize(Mean = mean(Month_count), s = sd(Month_count)) %>%
  mutate(Lower = Mean - qt(0.975, 17) * s/sqrt(18),
         Upper = Mean + qt(0.975, 17) * s/sqrt(18))

average_deaths3 <- ggplot(data =month_average3, aes(x =monthdth , y = Mean))+
  geom_point(size = 4) + #scale_color_brewer(name ="",palette="Spectral")+
  geom_errorbar(aes(ymin=Lower, ymax=Upper), width = 0.1)+
  theme_classic()+
  theme(axis.ticks.x=element_blank(),legend.title=element_blank(),
        legend.position ="bottom", 
        legend.justification ="center")+
  labs(title = "Number of deaths for older-adults 55-64 in the United States", subtitle = "Data from 2000-2017", y = "Historical Ranges of Variation", x ="Month")+
  ylim(20000,80000)

average_deaths3

#####65-74 years old
month_average4 <- final_data %>%
  filter(ager12==9)%>%
  group_by(monthdth) %>%
  summarize(Mean = mean(Month_count), s = sd(Month_count)) %>%
  mutate(Lower = Mean - qt(0.975, 17) * s/sqrt(18),
         Upper = Mean + qt(0.975, 17) * s/sqrt(18))

average_deaths4 <- ggplot(data =month_average4, aes(x =monthdth , y = Mean))+
  geom_point(size = 4) + #scale_color_brewer(name ="",palette="Spectral")+
  geom_errorbar(aes(ymin=Lower, ymax=Upper), width = 0.1)+
  theme_classic()+
  theme(axis.ticks.x=element_blank(),legend.title=element_blank(),
        legend.position ="bottom", 
        legend.justification ="center")+
  labs(title = "Number of deaths for older-adults 65-74 years old in the United States", subtitle = "Data from 2000-2017", y = "Historical Ranges of Variation", x ="Month")+
  ylim(20000,80000)

average_deaths4

#####75-84 years old
month_average5 <- final_data %>%
  filter(ager12==10)%>%
  group_by(monthdth) %>%
  summarize(Mean = mean(Month_count), s = sd(Month_count)) %>%
  mutate(Lower = Mean - qt(0.975, 17) * s/sqrt(18),
         Upper = Mean + qt(0.975, 17) * s/sqrt(18))

average_deaths5 <- ggplot(data =month_average5, aes(x =monthdth , y = Mean))+
  geom_point(size = 4) + #scale_color_brewer(name ="",palette="Spectral")+
  geom_errorbar(aes(ymin=Lower, ymax=Upper), width = 0.1)+
  theme_classic()+
  theme(axis.ticks.x=element_blank(),legend.title=element_blank(),
        legend.position ="bottom", 
        legend.justification ="center")+
  labs(title = "Number of deaths for older-adults 75-84 years old in the United States", subtitle = "Data from 2000-2017", y = "Historical Ranges of Variation", x ="Month")+
  ylim(20000,80000)

average_deaths5

#####85 and older
month_average6 <- final_data %>%
  filter(ager12==11)%>%
  group_by(monthdth) %>%
  summarize(Mean = mean(Month_count), s = sd(Month_count)) %>%
  mutate(Lower = Mean - qt(0.975, 17) * s/sqrt(18),
         Upper = Mean + qt(0.975, 17) * s/sqrt(18))

average_deaths6 <- ggplot(data =month_average6, aes(x =monthdth , y = Mean))+
  geom_point(size = 4) + #scale_color_brewer(name ="",palette="Spectral")+
  geom_errorbar(aes(ymin=Lower, ymax=Upper), width = 0.1)+
  theme_classic()+
  theme(axis.ticks.x=element_blank(),legend.title=element_blank(),
        legend.position ="bottom", 
        legend.justification ="center")+
  labs(title = "Number of deaths for older-adults 85 years and over in the United States", subtitle = "Data from 2000-2017", y = "Historical Ranges of Variation", x ="Month")+
  ylim(20000,80000)

average_deaths6