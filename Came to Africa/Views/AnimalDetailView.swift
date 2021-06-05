import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        
        ScrollView (.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20) {
                
                // HERO Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()

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
                Group {
                    HeadingView(headingTitle: "Did you know?", headingIcon: "questionmark.circle")
                    
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)

                // Description
                Group {
                    HeadingView(headingTitle: "All about \(animal.name)", headingIcon: "info.circle")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)

                // Map
                Group {
                    HeadingView(headingTitle: "National park", headingIcon: "map")                    
                    InsetMapView(animal: animal)
                }
                .padding(.horizontal)

                // Link
                Group {
                    HeadingView(headingTitle: "Learn more", headingIcon: "books.vertical")
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
                .padding(.bottom, 24)
                
            } // VStack
            .navigationBarTitle("Learn more about \(animal.name)", displayMode: .inline)
        }// ScrollView
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetailView(animal: getAnimals()[1])
    }
}
