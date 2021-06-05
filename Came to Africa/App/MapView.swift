import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region : MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevelSpan = MKCoordinateSpan(latitudeDelta: 70, longitudeDelta: 70)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevelSpan)
        return mapRegion
    }()
    
    var locations: [LocationModel] = getLocations()
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }// Map
        .overlay(
            MapOverlayView(latitude: region.center.latitude, longitude: region.center.longitude)
                .padding()
            , alignment: .top            
        )// Overlay
        .edgesIgnoringSafeArea(.all)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
