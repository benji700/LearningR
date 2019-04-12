##ggplot2 
library(ggplot2)
gapminder <- read.csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv")
#lets plot gdPercap vs lifeExp
ggplot(data=gapminder,aes(x=gdpPercap, y=lifeExp,by=country,color=continent)) + geom_point() 

ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp)) + #base
  geom_point(size=3,aes(shape=continent,color=continent)) + #changed transparency of points to 50%
  scale_x_log10()+
  geom_smooth(method='lm',col='red',size=1.5)


?substr

starts.with <- substr(gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]

ggplot(data=az.countries, aes(x=year,y=lifeExp,color=continent))+
  geom_line()+
  facet_wrap(~country)
