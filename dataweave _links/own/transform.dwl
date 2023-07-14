%dw 2.0
output application/json
import * from dw::util::Values
---
/*payload map {
  data: $ mapObject ((value, key, index) -> 
  if((key) ~= "address")  
  ("zipcode": (value splitBy " ")[-1]) 
  else ((key): value))
}.data*/


 payload  map {
   data:$ mapObject (value, key, index) -> 
   (if((key) ~= "SSN") (key): " " 
   else if ((key) ~= "dob") (key): " " else (key):value)  
   filterObject (value, key, index) -> !(["id","employeeCode"] contains  (key as String))
 }.data



 /*payload map {
   item:$ mapObject ((value, key, index) ->
   if(((key as String) == "SSN")or ((key as String) == "dob"))
   ((key): "*****") else (key):value
    ) filterObject ((value, key, index) -> (key as String)!="id" )
 }.item



/*
step: 1 Give blank/masked values for keys ssn and dob
Step 2: for address field map it to zipcode by extracting zipcode
Step 3: remove id, phonenumber and region

My Output should look like below

[
  {
    "SSN": "*****",
    "dob": "*****",
    "zipcode": "11235",
    "jobTitleName": "Developer",
    "firstName": "Romin",
    "lastName": "Irani",
    "preferredFullName": "Romin Irani",
    "employeeCode": "E1"
  },
  {
    "SSN": "*****",
    "dob": "*****",
    "zipcode": "24538-221",
    "jobTitleName": "Developer",
    "firstName": "Neil",
    "lastName": "Armstrong",
    "preferredFullName": "Neil Armstrong",
    "employeeCode": "E2"
  }
]
*/
