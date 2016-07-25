office_building = {
	floor_1: {
		cubicle_1: ["Jane", "Janet"],
		conference_room: ["Rob", "Dan", "Joe"]
	},
	floor_2: {
		kitchen: ["Dave"],
		bathroom: ["Kate"]
	},
	basement: {
		rest_area: ["Tom", "Larry"]
	}
}

p office_building [:floor_2][:kitchen][0]
p office_building [:basement]
p office_building [:floor_1][:cubicle_1][1]

p office_building [floor_2][kitchen][0]
p office_building [basement]
p office_building [floor_1][cubicle_1][1]