import Foundation

func getAnimals () -> [Animal]! {
    let animals: [Animal]! = Bundle.main.decode(file: "animals.json")
    return animals
}

func getVideos () -> [VideoModel]! {
    let animals: [VideoModel]! = Bundle.main.decode(file: "videos.json")
    return animals
}

func getLocations () -> [LocationModel]! {
    let locations: [LocationModel]! = Bundle.main.decode(file: "locations.json")
    return locations
}
