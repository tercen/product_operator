library(tercen)
library(dplyr)

(ctx = tercenCtx())  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(product = prod(.y, as.logical(ctx$op.value('remove  NA')))) %>%
  ctx$addNamespace() %>%
  ctx$save()
