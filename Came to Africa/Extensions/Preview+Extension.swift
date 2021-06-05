import SwiftUI

extension PreviewProvider {
    static func getAnimals () -> [Animal]! {
        let animals: [Animal]! = Bundle.main.decode(file: "animals.json")
        return animals
    }
    
    static func getVideos () -> [VideoModel]! {
        let animals: [VideoModel]! = Bundle.main.decode(file: "videos.json")
        return animals
    }
}
