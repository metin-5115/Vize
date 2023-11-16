library(testthat)

rm(list = ls())

source("~/GitHub/Vize/200401088/Labex1_Q1_200401088_Metin_TUNÇBİLEK.R")
#1.1.test
test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur.",{
  file_name <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
  expect_true(file.exists(file_name), 
              sprintf("Dosya aktif dizinde mevcut değil.", file_name))
})
#1.2.test
test_that("Test : maps adlı değişken Global Workspace’de mevcuttur.", {
  expect_true(exists("maps", envir = .GlobalEnv), info = "maps adlı değişken mevcut değil.")
})
#1.3.test
test_that("Test : maps nesnesi bir data.frame'dir.", {
  expect_is(maps, "data.frame", info = "maps nesnesi bir data.frame değil.")
})
#1.4.test
test_that("Test : maps adlı data.frame'in ilk sütunu 'City' olmalıdır.", {
  expect_equal(colnames(maps)[1], "City", info = "İlk sütun 'City' değil.")
})
#1.5.test
test_that("Test : maps adlı data.frame'in 5. sütununun adında 'Title' kelimesi geçmelidir.", {
  expect_true(grepl("Title", colnames(maps)[5], fixed = TRUE), info = "5. sütunun adında 'Title' kelimesi geçmiyor.")
})

#1.6.test
test_that("Test : Latitude adlı sütun numeric değerlerden oluşmalıdır.", {
  expect_is(maps$Latitude, "numeric", info = "Latitude sütunu numeric değerlerden oluşmuyor.")
})

#1.7.test
test_that("Test : Longitude adlı sütun numeric değerlerden oluşmalıdır.", {
  expect_is(maps$Longitude, "numeric", info = "Longitude sütunu numeric değerlerden oluşmuyor.")
})