module Main where

import Test.HUnit
import Data.List (nub)

removeDups :: (Eq a) => [a] -> [a]
removeDups = nub

tests :: Test
tests = TestList [ TestCase $ assertEqual "" [1,0] (removeDups [1,0,1,0])
                 , TestCase $ assertEqual "" ["The","big","cat"] (removeDups ["The","big","cat"])
                 , TestCase $ assertEqual "" ["John","Taylor"] (removeDups ["John","Taylor","John"])
                 ]

main = runTestTT tests
