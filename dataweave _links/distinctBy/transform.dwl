%dw 2.0

import * from dw::core::Arrays

output application/json
//here i am using distnct by for avoiding duplicate values

---

payload distinctBy($.department)map(item,index)->{

"department": item.department,

"count":payload countBy ($.department==item.department )

}


