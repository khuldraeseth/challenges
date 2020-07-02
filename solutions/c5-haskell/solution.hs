module Main where

import Test.HUnit

digits :: [String]
digits = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

teens :: [String]
teens = digits ++ ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

tens :: [String]
tens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

hundreds :: Int -> String
hundreds 0 = ""
hundreds n = (digits !! n) ++ " hundred"

rest :: Int -> String
rest n
    | n == 0    = ""
    | n < 10    = digits !! n
    | n < 20    = teens !! n
    | otherwise = unwords $ filter (not . null) [tens !! (n `div` 10), digits !! (n `mod` 10)]

numToEng :: Int -> String
numToEng 0 = "zero"
numToEng n = unwords $ filter (not . null) [hundreds (n `div` 100), rest (n `mod` 100)]

tests :: Test
tests = TestList [ TestCase $ assertEqual "" "zero" (numToEng 0)
                 , TestCase $ assertEqual "" "eighteen" (numToEng 18)
                 , TestCase $ assertEqual "" "one hundred twenty six" (numToEng 126)
                 , TestCase $ assertEqual "" "nine hundred nine" (numToEng 909)
                 ]

main = runTestTT tests
