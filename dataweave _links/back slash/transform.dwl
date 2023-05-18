%dw 2.0
output application/java  
//Here i am creating string with using of back slash(\\)
---
"\\today\\" ++ now() as String {format: 'yyyyMMdd'} ++ "\\file1"