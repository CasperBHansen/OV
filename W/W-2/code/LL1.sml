exception Error of string


fun parseY next =
	if next = #"a" then match(#"")
	else if next = #"e" then match(#"") 

fun parseX next =
	if next = #"c" then parseY
	else raise Error "bah"

fun parseZ next =
	if next = #"a" then parseX
	else raise Error "bah"