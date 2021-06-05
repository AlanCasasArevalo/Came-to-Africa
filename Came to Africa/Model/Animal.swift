import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    var headline: String
    var description: String
    var link: String
    var image: String
    var gallery: [String]
    var fact: [String]
}
