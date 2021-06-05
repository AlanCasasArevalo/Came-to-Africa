import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        
        ScrollView (.vertical, showsIndicators: false) {
            VStack {
                
                // HERO Image
                Image(animal.image)
                    .resizable()
                    .scaledToFill()

                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .underline(true, color: .accentColor)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)

                // headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)

                // Gallery
                Group {
                    HeadingView(headingTitle: "Wilderness in Pictures", headingIcon: "photo.on.rectangle.angled")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)

                // Facts
                
                // Description
                
                // Map
                
                // Link
                
                
                
                
            } // VStack
            .navigationBarTitle("Learn more about \(animal.name)", displayMode: .inline)
        }// ScrollView
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal]! = Bundle.main.decode(file: "animals.json")

    static var previews: some View {
        AnimalDetailView(animal: animals[1])
    }
}
