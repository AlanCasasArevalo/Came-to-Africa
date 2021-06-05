import SwiftUI

struct InsetGalleryView: View {
    
    let animal: Animal
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                } // ForEach
            } // HStack
        }// ScrollView
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal]! = Bundle.main.decode(file: "animals.json")

    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
