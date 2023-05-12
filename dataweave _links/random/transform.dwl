%dw 2.0

output application/json

---
//here i am using random function for random values

1 to (payload reduce ($)) map round(random()*28)