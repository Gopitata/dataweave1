%dw 2.0
import withMaxSize from dw::core::Strings
output application/json
//Here i am using withmaxsize fun imported to print the the values as per the desired output
---

payload map {
    "CUSTOMER_ID":$.CUSTOMER_ID,
    "CUSTOMER_NAME":$.CUSTOMER_NAME withMaxSize 4,
"ADDRESS1":$.ADDRESS1 withMaxSize 5,
"ADDRESS2":$.ADDRESS2 withMaxSize 5

}

