import SwiftUI

extension PreviewProvider {
    static func getAnimals () -> [Animal]! {
        let animals: [Animal]! = Bundle.main.decode(file: "animals.json")
        return animals
    }
}
