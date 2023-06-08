%dw 2.0
output application/json

---

result: payload.result map ((item, index) -> 
{
    Id:item.Id,
    name: item.Name,
    message: item.errors.message reduce  $
}) filter ((item, index) -> item.message != null )
 


 



