%dw 2.0
output application/json
import * from dw::core::Strings
//Here i divide a year from string fromat by using core string functions
---
payload.AU groupBy ((item, index) ->  substringAfter(item,"-") [0 to 3])