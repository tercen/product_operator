library(tercen)
library(dplyr)

(ctx = tercenCtx())  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(product = (.y[1]) * (.y[2])) %>%
  ctx$addNamespace() %>%
  ctx$save()
