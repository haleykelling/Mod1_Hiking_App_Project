User.destroy_all
Hike.destroy_all


#Hike.create(name, location, length, difficulty)
Hike.create(name: "Boulder Valley Ranch Loop", location: "Boulder, CO", length: 2.9, difficulty: "Green")
Hike.create(name: "Hogback Ridge Loop", location:"Boulder, CO", length: 2.1, difficulty: "Blue")
Hike.create(name: "Bear Creek Trail", location:"Denver, CO", length: 14.9, difficulty: "Green")
