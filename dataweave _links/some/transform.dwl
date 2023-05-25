%dw 2.0

import * from dw::core::Arrays

output application/json

var a = [{name: "Max", email: "abc@.xyzcom", phone: "91 0808907890", company: "MuleSoft"},{name: "Mule", email: "abc@xyz.com", phone: "91 0808907890", company: "MuleSoft"}]
//Here i have imported some function from dataweave core array functions and based on out put i write the conditon like the name can contians "M " then itws come true or else false
---

{

"Name": a.name some($ contains "M"),

"Company": a.company some($ matches "XYZ")

} 