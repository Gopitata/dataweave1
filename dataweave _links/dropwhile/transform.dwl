%dw 2.0
import * from dw::core::Arrays
output application/json
---
//Here iam using dropwhile function for eleminating elements from the input array based on output requirement
payload dropWhile $.age > 60
