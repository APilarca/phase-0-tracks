//take a string input by user
//reverse the letters in the string
//output the new string that is reversed

function reverse(string) {
	var original = string;
	var newString = '';
	for (i = (original.length - 1); i >= 0; i--) {
		newString += original[i]
	};
	console.log(newString)
};

if (1 == 1) {
	reverse("happy")
}
else {
	null
}