library(tercen)
library(dplyr)

options("tercen.serviceUri" = "http://127.0.0.1:5400/api/v1")
options("tercen.username"= "admin")
options("tercen.password" = "admin")

options("tercen.workflowId"= "8cbf0c70baa1ca94c01872e749088ae6")
options("tercen.stepId"= "15-8")
getOption("tercen.workflowId")
getOption("tercen.stepId")

(ctx = tercenCtx())  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(product = (.y[1]) * (.y[2])) %>%
  ctx$addNamespace() %>%
  ctx$save()

  