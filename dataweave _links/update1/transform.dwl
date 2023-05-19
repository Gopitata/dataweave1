%dw 2.0
output application/json
//Here i am using upate and map function to update the data
---
payload  update {
    case  .Document -> $ map ((item, index) -> item  update {
        case  .Customer -> if($.Type == "Legal") $ -"BCE" else $
    } )
}