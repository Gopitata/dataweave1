%dw 2.0
output application/json
fun UpperCase(input_value)=upper(input_value)
/*here i am using map function to map the values and use uppercase function for based upon output
*/
---
payload map(item, index) -> item:(UpperCase( item.name))
