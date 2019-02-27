df = read.csv("Value_Ordered_WumpusWorld_Data.csv")
library(ggplot2)
str(df)
summary(df)
df2 = subset(df, General != "Naive")

df3 = subset(df, Payoff != "Q-Learning Coop"  )
df3 = subset(df3, Payoff != "SARSA Coop"  )

df4 = subset(df, Payoff != "Q-Learning"  )
df4 = subset(df4, Payoff != "SARSA"  )

df5 = subset(df4, Payoff != "Naive"  )

#df6 = subset(df5, Difficulty != "Easy"  )

## General with Values + Discount and Learning parameters
ggplot(df2, aes(General, Value, color = factor(Discount_Factor),
               shape = factor(Learning.Rate)))  + 
  geom_jitter(width = 0.3, alpha = 0.7, size = 1.8) +
  labs(color = "Discount Factor", shape = "Learning Rate") +
  theme_light()

## Payoffs with their difficulties
ggplot(df, aes(Payoff, Value, color = General,
              shape = Difficulty))  + 
  geom_jitter(width = 0.3, alpha = 0.7, size = 1.8) +
  theme_light()



## Payoffs with their difficulties
ggplot(df, aes(Payoff, Value, color = factor(Golds),
               shape = Difficulty))  + 
  geom_jitter(width = 0.3, alpha = 0.7, size = 1.8) +
  labs(color = "# of golds") +
  theme_light()

## Different Payoffs and generated values.
ggplot(df2, aes(Payoff, Value, color = factor(Discount_Factor),
               shape = factor(Learning.Rate)))  + 
  geom_jitter(width = 0.3, alpha = 0.7, size = 1.8) +
  labs(color = "Discount Factor", shape = "Learning Rate") +
  theme_light()



## General Algorithms with their values.
ggplot(df2, aes(General, Value, color = factor(Discount_Factor),
                shape = factor(Learning.Rate)))  + 
  geom_jitter(width = 0.3, alpha = 0.7, size = 1.8) +
  labs(color = "Discount Factor", shape = "Learning Rate") +
  theme_light()

## General values with Gold amounts
ggplot(df, aes(General, Value, color = factor(Golds)))  + 
  geom_jitter(width = 0.3, alpha = 0.7, size = 1.8) +
  labs(color = "# of golds") +
  theme_light()

## General with Golds and Difficulty
ggplot(df, aes(General, Value, color = factor(Golds), 
               shape = factor(Difficulty)))  + 
  geom_jitter(width = 0.3)

## General algo's with value
ggplot(df, aes(General, Value, color = Difficulty))  + 
  geom_boxplot() +
  theme_classic() + 
  theme(legend.text = element_text(size = 20))                       

## SOme other Boxplots
## Without cooperation
ggplot(df3, aes(Payoff, Value, color =  Difficulty))  + 
  geom_boxplot() +
  theme_light()

ggplot(df3, aes(Payoff, Value, color =  factor(Discount_Factor), fill = General))  + 
  geom_boxplot() +
  theme_light()
  

ggplot(df3, aes(General, Value, color =  Difficulty))  + 
  geom_boxplot() +
  theme_light()

## Boxplots with cooperation without Naive
ggplot(df5, aes(Payoff, Value, color =  Difficulty))  + 
  geom_boxplot() +
  theme_light()


ggplot(df5, aes(General, Value, color =  factor(Golds)))  + 
  labs(color = "Golds") +
  geom_boxplot() +
  theme_light()

ggplot(df5, aes(Payoff, Value, color =  factor(Discount_Factor)))  + 
  labs(color = "Discount") +
  geom_boxplot() +
  theme_light()

ggplot(df5, aes(Payoff, Value, color =  factor(Discount_Factor), 
                fill = General))  + 
  labs(color = "Discount", fill = "Learning") +
  geom_boxplot() +
  theme_light()


