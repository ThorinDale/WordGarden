import PlaygroundSupport

var text = "SWIFT"
text.count
text.last
print("The last letter in '\(text)' is \(text.last!)")

if let lastChar = text.last {
    text = String(lastChar)
} else {
    text = ""
}
print("text now contains '\(text)'")

text = ""
text.last

//nil == ""
//nil == 0
//print("The last letter in '\(text)' is \(text.last!)")

//if text.last != nil {
//    text = "\(text.last!)"
//} else {
//    text = ""
//}
//
//print("text now contains '\(text)'")

if let lastChar = text.last {
    text = String(lastChar)
} else {
    text = ""
}

print("text now contains '\(text)'")

text = "  SWIFT "
// nil coalescing operator ??
text = String(text.last ?? " ").trimmingCharacters(in: .whitespaces)
//if text == " " {
//    text = ""
//}
print("text now contains '\(text)'")

func coolCheck (name: String, cool: Bool) {
    guard cool else {
        print("You are not cool")
        return
    }
    print("You are SO cool, \(name)")
}

coolCheck(name: "Roy", cool: false)

// guard let
func returnLastCharacter(text: String) -> String {
    guard let lastCharacter = text.last else {
        return ""
    }
    
    print("Yeah! We got a last character and it's '\(lastCharacter)'")
    return "\(lastCharacter)"
}

text = "SWIFT"
text = returnLastCharacter(text: text)
print("returned = '\(text)'")

text = ""
text = returnLastCharacter(text: text)
print("returned = '\(text)'")

var name = "Shakira"
var lastChar = name.last
print(lastChar)
