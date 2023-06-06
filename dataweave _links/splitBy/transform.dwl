%dw 2.0
output application/json
//Here i am using splitby and reduce function to divide the first name from full name 
---
payload  map {
    firstName: $.fullName splitBy  " " reduce $,
    lastname: $.fullName splitBy  " " reduce $,
    miles:$.miles as String{format:'.00'},
    Dateofjoin:$.joinedDate as Date as String{ format :'dd-MMM-YYY'}
}




