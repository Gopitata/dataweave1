%dw 2.0
output application/json
// Here i creatimg keys and values fields
---
{
 "Keys":keysOf(payload),
 "Values":valuesOf(payload)
}
