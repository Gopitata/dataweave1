%dw 2.0
output application/json
//Here i am using map and pluck functions to assaign (lastname & aliases) in the same object

---
payload.*record.person.name  map ($.aliases pluck ((value, key, index) ->value) map ((item, index) -> 
    {
        Lastname:$.lastname,
        aliases:item
    } ))