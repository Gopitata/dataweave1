%dw 2.0
output application/json
//Her i have separated element from the group by using gropby function  
---
payload  groupBy $.ParentOptionID  mapObject (value, key, index) ->(key):value  map ((item, index) -> item .OptionName )









 