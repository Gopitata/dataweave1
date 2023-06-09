%dw 2.0

output application/json
//commbine multiple values into single value

---

flatten(payload) map
{
resourceAndDestinationType:
{

S: $.destinationType ++ $.resource

}

}