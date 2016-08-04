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

var words = ["hat", "mouse", "very long word", "shorter", "this should be the longest"];

longer(words);

longer(["ahts", "and", "cats", "obviously the longest", "short", "obviously the longestsss"]);