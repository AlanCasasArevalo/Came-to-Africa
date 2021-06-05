import SwiftUI

struct MapOverlayView: View {
    
    var latitude: Double
    var longitude: Double
    
    var body: some View {
        HStack (alignment: .center, spacing: 12) {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            
            VStack (alignment: .leading, spacing: 3) {
                HStack {
                    Text("Latitude")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(latitude)")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                
                Divider()
                
                HStack {
                    Text("Longitude")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(longitude)")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                
            }
        } // Hstack
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(
            Color.black.opacity(0.6)
                .cornerRadius(8)
        )
    }
}

struct MapOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        MapOverlayView(latitude: 6.6002332, longitude: 43.2324233)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
