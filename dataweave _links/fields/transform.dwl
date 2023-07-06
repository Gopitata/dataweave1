%dw 2.0
output application/json
var reward = payload.data filter((item)-> item.itemType=='Reward')
var installation = payload.data filter((item)-> item.itemType=='Installation')
var items = reward ++ installation
//created variables to filter the itemtype and nmaed it rewaed and installation and added them in one variable
---

{
    "itemType":"DD-Offer",
    "id":"DD-1",
    "items": items map 
    {
        itemType : $.itemType,
        id : $.id
    }
}
