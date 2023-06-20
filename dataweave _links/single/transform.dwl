%dw 2.0
output application/json
//Here I have done to to map two array fields in single array by using map function
---
payload.employees map {
    id:$.id,
    name: $.name,
    dept: payload.departments filter ((item, index) -> item .ids contains  $.id)  map ((item1, index) -> item1.dept ) reduce ((item, accumulator) -> item )
}






