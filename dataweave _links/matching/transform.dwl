%dw 2.0
output application/json
//Here i have seasrch a field by using other fields 
---
payload map(item, index)->{
"EmpName": item.name,
"BossName": (payload filter $.ID == item.bossID).name[0]
}