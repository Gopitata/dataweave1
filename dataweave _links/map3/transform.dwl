%dw 2.0
output application/json
//Here i am now & date function for desired output 

---
DetailCollection:

{

ABCId:now() as Number as String,

ABCDate: now() as Date,

Collection: payload.ABC map

{

ABCDetails:

{

ABCNo: $.ABCNo,

ABCCode: $.ABCCode

}

}

}
