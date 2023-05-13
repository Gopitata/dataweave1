%dw 2.0
import * from dw::core::Strings
output application/json
/*
1) import String module.
2) use isNumeric() to determine if the character is number or not
4) script logic will return the expected output.
*/


---
//payload map ((item, index) -> (item ) filter !isNumeric($) )
//payload map $[0] joinBy ''
payload map ((item, index) -> substring(item,0,1))