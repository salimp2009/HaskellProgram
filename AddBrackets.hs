addBbrackets s = "[" ++ s ++ "]"

result = map addBbrackets ["one", "two", "three", "four"]

main = print result
