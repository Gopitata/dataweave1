%dw 2.0

import * from dw::core::Strings

output application/json

---

//payload map ((item, index) -> num: flatten(item.num scan /[1-9]{3}/) reduce $)




payload map (num:$.num last 3)




//printing last three numbers. we can do this one in so many ways