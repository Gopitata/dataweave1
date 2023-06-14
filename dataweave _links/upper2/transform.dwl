%dw 2.0
output application/json
---
// Here i am using update value and using upper function
payload   update {
    case ."Document Type" -> $ map ((item, index) -> upper(item) )
}