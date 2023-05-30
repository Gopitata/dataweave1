%dw 2.0

output application/json

---
//here i am using pluck function and print highest last modifed date
payload groupBy $.Project__r.Name pluck ((value, key, index) -> value maxBy $.LastModifiedDate)
