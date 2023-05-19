%dw 2.0

output application/json

---

payload update {

case .three -> $ update {

case .passwords -> $ replace $ with '******'

case .three -> $ mapObject ((value, key, index) -> ((key):value) update {

case .password -> $ replace $ with '*******'

})

}

}