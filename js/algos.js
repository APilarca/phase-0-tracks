function longer(array) {
	var longest = "";
	for(i = 0; i < array.length; i++) {
		if (array[i].length > longest.length) {
			longest = array[i];
		} else {
			longest;
		}
	}
	console.log(longest);
}

function compare(obj1, obj2) {
	var key = Object.keys(obj1);
	var key2 = Object.keys(obj2);
	for (var i = 0; i < key.length; i ++) {
	if (key[i] === key2[i]) {
		if (obj1[key[i]] === obj2[key2[i]]) {
			console.log("true");
			break;
		} else {
			console.log("false");
		}
		
	} else {
		console.log("false");
	}
};
}

function randData(length) {
	newData = [];
	alphabet = "abcdefghijklmnopqrstuvwxyz";
	newString = ""
	for (var i = 0; i < length; i++) {
		for (var x = 0; x < 10; x++) {
			newString += alphabet.charAt(Math.floor(Math.random() *alphabet.length));
			
		}
		newData[i] = newString;
	}

	return newData;
}


// var words = ["hat", "mouse", "very long word", "shorter", "this should be the longest"];

// longer(words);

// longer(["ahts", "and", "cats", "obviously the longest", "short", "obviously the longestsss"]);

var first = {name: "A", age: 12};
var second = {name: "A", age: 10};



compare(first, second);
randData(2);

for (var n = 0; n < 10; n++) {
	test = randData(2)
	console.log(test);
	longer(test);


}