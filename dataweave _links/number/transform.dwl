%dw 2.0
output application/json
//Here i am using scan function to print numbers of payload and used disctinctBy to aviod duplicate values and joine valeus by using joinby functtion and to combine multipe arrays into single with flatten function
---
(flatten(payload scan /[1-9]/) distinctBy $ orderBy ((item, index) -> item) joinBy '') as Number



