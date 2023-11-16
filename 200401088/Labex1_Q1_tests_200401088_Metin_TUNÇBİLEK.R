library(testthat)

rm(list = ls())

source("~/GitHub/Vize/200401088/Labex1_Q1_200401088_Metin_TUNÇBİLEK.R")

test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur.",{
  file_name <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
  expect_true(file.exists(file_name), 
              sprintf("Dosya aktif dizinde mevcut değil.", file_name))
})