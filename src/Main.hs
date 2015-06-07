module Main where
import Data.Time.Clock
import  Data.Time.Calendar
import System.Environment

border = "---"

field :: String -> String -> String
field x y = x ++ ": " ++ y

comments = field "comments" 
title = field "title"
date_ = field "date"
layout = field "layout"

toFormatTime = toGregorian . utctDay

--formatDate :: (Integral a) => (a, a, a) -> String
formatDate (year, month, day) = (show year) ++ "-" ++ (show month) ++ "-" ++ (show day)

main :: IO ()
main = do
  [t] <- getArgs
  d <- getCurrentTime
  let x = toFormatTime d
  let f = formatDate x
  putStrLn "---" 
  putStrLn (comments "true")
  putStrLn (layout "post")
  putStrLn (title t )
  putStrLn (date_  f )
  putStrLn "---"
