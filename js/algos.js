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
	
}


// var words = ["hat", "mouse", "very long word", "shorter", "this should be the longest"];

// longer(words);

// longer(["ahts", "and", "cats", "obviously the longest", "short", "obviously the longestsss"]);

var first = {name: "A", age: 12};
var second = {name: "B", age: 12};

compare(first, second);