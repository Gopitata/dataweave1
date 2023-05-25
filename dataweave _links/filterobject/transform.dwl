%dw 2.0
output application/json
---
 payload filterObject ((value, key, index) -> (index>1)) 
 




//dataweave to filter the key,value based in corresponding index
