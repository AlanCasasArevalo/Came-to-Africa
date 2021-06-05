import Foundation
import MapKit

struct LocationModel: Codable, Identifiable {
    let id: String
    let name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
