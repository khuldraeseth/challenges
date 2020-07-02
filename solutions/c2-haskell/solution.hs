module Main where

import Test.HUnit

getFirstValue :: [a] -> a
getFirstValue = head

tests :: Test
tests = TestList [ TestCase (assertEqual "" 1 (getFirstValue([1, 2, 3])))
                 , TestCase (assertEqual "" 80 (getFirstValue([80, 5, 100])))
                 , TestCase (assertEqual "" (-500) (getFirstValue([-500, 0, 50])))
                 ]

main = runTestTT tests
