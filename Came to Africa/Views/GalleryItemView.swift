import SwiftUI

struct GalleryItemView: View {
    
    let animalImage: String
    let lineWidth: CGFloat?
    
    init(animalImage: String, lineWidth: CGFloat? = 1) {
        self.animalImage = animalImage
        self.lineWidth = lineWidth
    }
    
    var body: some View {
        Image(animalImage)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: lineWidth ?? 1)
            )
    }
}

struct GalleryItemView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryItemView(animalImage: getAnimals()[0].image)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
