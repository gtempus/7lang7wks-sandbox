module Main where

       reverse [] = []
       reverse (h:t) = Main.reverse t ++ [h]

       colorsMine (h:t) = [(a, b) | a <- h:t, b <- h:t, a < b]

       kidMult = [(mult1, mult2, mult1 * mult2) | mult1 <- [1..12], mult2 <- [1..12]]

       coloring = [(state, color) | state <- ["Mississippi", "Alabama", "Georgia", "Tennessee", "Florida"], color <- ["red", "green", "blue"]]

       states = ["Alabama", "Mississippi", "Georgia", "Tennessee", "Florida"]
       colors = ["red", "green", "blue"]
       --, (state2, col2)
       colorings = [[(state1, col1), (state2, col2), (state3, col3), (state4, col4), (state5, col5)] |
		     state1 <- states, col1 <- colors,
		     state2 <- states, col2 <- colors,
       		     state3 <- states, col3 <- colors,
       		     state4 <- states, col4 <- colors,
       		     state5 <- states, col5 <- colors,
       		     state1 == "Alabama",
       		     state2 == "Mississippi",
       		     state3 == "Georgia",
       		     state4 == "Tennessee",
       		     state5 == "Florida",
       		     -- rules for alabama
       		     col1 /= col2,
       		     col1 /= col3,
       		     col1 /= col4,
       		     col1 /= col5,
       		     -- rules for missisippi
       		     col2 /= col5,
       		     -- rules for georgia
       		     col3 /= col4,
       		     col3 /= col5
       		     -- rules for other two states are already covered
    		     ]