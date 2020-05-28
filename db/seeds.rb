Hike.destroy_all

#Local seeds1  format:     Hike.create(name, location, length, difficulty)
# Hike.create(name: "Boulder Valley Ranch Loop", location: "Boulder, CO", length: 2.9, difficulty: "Green")
# Hike.create(name: "Hogback Ridge Loop", location:"Boulder, CO", length: 2.1, difficulty: "Blue")
# Hike.create(name: "Bear Creek Trail", location:"Denver, CO", length: 14.9, difficulty: "Green")

#Boulder
data = RestClient.get 'https://www.hikingproject.com/data/get-trails?lat=40.0274&lon=-105.2519&maxDistance=10&key=200776816-6eeceb29bc94b84fca530c599ad06aa3'
    json = JSON.parse(data)['trails']
    json.each do |trail|
        Hike.create(name:trail['name'], location:"Boulder, CO", length:trail['length'], difficulty:trail['difficulty'])
        
    end

#Breckenridge
data = RestClient.get 'https://www.hikingproject.com/data/get-trails?lat=39.2959&lon=-106.0236&maxDistance=10&key=200775944-ce61bc5b952adb6c4b087018b8dab93e'
json = JSON.parse(data)['trails']
json.each do |trail|
    Hike.create(name:trail['name'], location:"Breckenridge, CO", length:trail['length'], difficulty:trail['difficulty'])
    
end