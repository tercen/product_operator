library(tercen)
library(dplyr)

options("tercen.workflowId"= "19975e0adc3267c4665f02d347003604")
options("tercen.stepId"= "c5f084df-dd2a-449b-8630-00e5b9007f9c")

getOption("tercen.workflowId")
getOption("tercen.stepId")


ctx <- tercenCtx()

ctx  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(product = prod(.y)) %>%
  ctx$addNamespace() %>%
  ctx$save()

  