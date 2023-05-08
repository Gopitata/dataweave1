%dw 2.0 
output application/json 
--- 
// here i am using to convereted array into object and get the sum of total&failed&sucesss Records 
payload reduce{ 
    "totalRecords": $.totalRecords + $$.totalRecords, 
  "failedRecords": $.failedRecords + $$.failedRecords, 
  "successRecords": $.successRecords + $$.successRecords 
}



 
