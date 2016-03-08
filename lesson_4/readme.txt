# 1. display the initial 3x3 board.
# 2. Ask the user to mark a square.
# 3. Ask the computer to mark a square.
# 4. Display updated board status.
# 5. If a winner, display winner.
# 6. If board full, display tie.
# 7. If no winner and not full, loop back to 2.
# 8. play again?
# 9. If yes, loop to 1.
# 10. else, good bye. 

hash = {1=>'a', 2=>'b', 3=>'c'} to get hash values in an array
use .values_at()
  hash.values_at(1, 2, 3)
    >$ ['a', 'b', 'c']
 if you want an inventory of the values use .count()
   hash.values_at(1, 2, 3).count('a')
     >$ 1 
       because there is one 'a' counted between the values_at
       1, 2 and 3 in the hash
       
 
