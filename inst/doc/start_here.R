## ---- include = FALSE----------------------------------------------------

library(knitr)

opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)


## ---- message = FALSE----------------------------------------------------

library(tibbleOne)
library(kableExtra)
library(tidyverse)
library(survival)

data("pbc_tbl1")

# set attributes and then build a meta data set

meta <- pbc_tbl1 %>%
  # labels are used to represent column names in table 1
  set_variable_labels(
    status = "Status ALC",
    trt = "Treatment group",
    age = 'Age',
    sex = 'Sex at birth',
    ascites = 'Ascites',
    bili = 'Bili levels',
    edema = 'Edema',
    albumin = 'Serum Alb'
  ) %>%
  # units must be attached to continuous variables
  set_variable_units(
    age = 'years',
    bili = 'mg/dl',
    albumin = 'g/dl'
  ) %>% 
  # variables in the same group are clustered together table 1
  set_variable_groups(
    Outcomes = c('status'),
    Exposures = c('ascites','bili','albumin','edema','stage')
  ) %>% 
  set_variable_notes(
    age = "important note about age"
  ) %>% 
  set_variable_abbrs(
    status = c(ALC = "at last contact"),
    bili = c(Bili = "bilirubin"),
    albumin = c(Alb = 'albumin')
  ) %>% 
  build_meta()

meta


## ------------------------------------------------------------------------

tb1 <- pbc_tbl1 %>% 
  tibble_one(
    meta_data = meta,
    formula = ~ . | trt,
    specs_table_vals = c(albumin = 'median', bili = 'median'),
    specs_table_tests = c(albumin = 'nopars', bili = 'nopars')
  )


## ------------------------------------------------------------------------

to_kable(tb1) %>% 
  kable_styling(bootstrap_options = c('striped', 'hover'))


## ------------------------------------------------------------------------

to_word(tb1)


