%dw 2.0
output application/json
---
payload.employees map
{
    id:$.id,
    name:$.name,
    dept: (payload.departments filter ((item, index) -> item.ids contains  $.id)).dept reduce ((item, accumulator) -> item )
}



