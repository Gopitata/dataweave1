%dw 2.0
output application/json
//here i used groupBy function to group the values based on the output required basically it will do the operation of grouping together items in an array based on some value
---
//payload.AU groupBy ((item, index) -> substringAfter(item,"-")[0 to 3])
//here i am using spiltBy to spilt the value based on the output requirement
payload.AU groupBy ($ splitBy  "-")[-1][0 to 3]
