module Main where

import Test.HUnit
import Data.List

uniqueSort :: (Eq a, Ord a) => [a] -> [a]
uniqueSort = map head . group . sort

tests :: Test
tests = TestList [ TestCase $ assertEqual "" [1,2,3,4] (uniqueSort [1,2,3,4])
                 , TestCase $ assertEqual "" [1,2,3,4] (uniqueSort [1,4,4,4,4,4,3,2,1,2])
                 , TestCase $ assertEqual "" [1,2,3,6,7] (uniqueSort [6,7,3,2,1])
                 ]

main = runTestTT tests
