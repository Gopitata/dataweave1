%dw 2.0
output application/json
---
//(payload flatMap ($ pluck ($$ ++ " " ++ $))) joinBy " "
//here i used flatmap it will do the operation of Iterates over each item in an array and flattens the results.  after that i have used pluck to convert multiple objects into single array ,after that using joinby i have converted array into string based output reqirement
(payload flatMap ($ pluck ((value, key, index) ->key ++ ' ' ++  value ))) joinBy " " 

