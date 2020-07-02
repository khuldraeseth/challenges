module Main where

import Test.HUnit

tests :: Test
tests = TestList [ TestCase (assertEqual "" 5 (length "apple"))
                 , TestCase (assertEqual "" 4 (length "make"))
                 , TestCase (assertEqual "" 1 (length "a"))
                 , TestCase (assertEqual "" 0 (length ""))
                 ]

main = runTestTT tests
