#SALABER, NAOMI RUTH D. BSIT 2-A

library(wordcloud)
library(plotly)
library(tm)
library(dplyr)
library(RColorBrewer)
library(ggplot2)
library(twitteR)

CONSUMER_SECRET <- "soZICRcHCy4g1Or6acENFVTr7COIQs4VrOVuij8rdDtvwkOIAI"
CONSUMER_KEY <- "6aL3C3koSjfqm7KDuExSY5yFP"
ACCESS_SECRET <- "aPsD27SVw1MCAm4XRbTsaqQxpRJWVgxe23XoEIZ91qw6D"
ACCESS_TOKEN <- "1595613946668810241-HgPdtEF4ArKpQTNzNJwiBrWwcWpMdt"

#connect to twitter app
setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)
#extracting tweets
Enhypen_trend = searchTwitter("ENHYPEN", n = 10000, since = "2022-12-15", until = "2022-12-18",
                              lang = "en", retryOnRateLimit = 120)
Enhypen_trend

# CONVERTING LIST DATA TO DATA FRAME.
tweetsDF <- twListToDF(Enhypen_trend)
tweetsDF

# SAVE DATA FRAME FILE.
save(tweetsDF,file = "trendingTweetsDF.Rdata")

# LOAD DATA FRAME FILE.
load(file = "trendingTweetsDF.Rdata")

# CHECKING FOR MISSING VALUES IN A DATA FRAME.
data_checking <- sapply(Enhypen_trend, function(x) sum(is.na(x)))  
data_checking  

#Tweets
# SUBSETTING USING THE dplyr() PACKAGE.
tweets <- tweetsDF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)
tweets

# GROUPING THE DATA CREATED. 
tweets %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

crt_data <- tweets %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
crt_data

mn <- tweets %>% pull(created) %>% min()
mn 
mx <- tweets %>% pull(created) %>% max()
mx

#Plot on tweets by time using the library(plotly) and ggplot().
plt_data <- ggplot(crt_data, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "midnightblue", high = "aquamarine4")

plt_data %>% ggplotly()

#==============
#Retweets
sub_tweets <- tweetsDF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)
sub_tweets


sub_tweets %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

crt2 <- sub_tweets %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
crt2

mn <- sub_tweets %>% pull(created) %>% min()
mn 
mx <- sub_tweets %>% pull(created) %>% max()
mx

# Plot on tweets by time using the library(plotly) and ggplot().
plt_data <- ggplot(crt2, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "midnightblue", high = "aquamarine4")

plt_data %>% ggplotly()
