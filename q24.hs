import Data.List
solve = (!! 999999) . sort $ permutations ['0'..'9']

