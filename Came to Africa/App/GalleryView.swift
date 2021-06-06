import SwiftUI

struct GalleryView: View {
    
    
    // Grid
    // let gridLayout: [GridItem] = [
    //     GridItem(.flexible()),
    //     GridItem(.flexible()),
    //     GridItem(.flexible())
    // ]
    
    // Otro tipo de grid mas eficiente
//    let gridLayout = Array(repeating: GridItem(.flexible()), count: 3)

    @State private var animalSelected = "lion"
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumns: Double = 3
    
    let animals = getAnimals()
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    func gridLayoutSwitch () {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumns))
    }

    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            GalleryItemView(animalImage: animalSelected, lineWidth: 8)
            
            Slider(value: $gridColumns, in: 2...5, step: 1)
                .padding(.horizontal)
                .onChange(of: gridColumns, perform: { value in
                    gridLayoutSwitch()
                })
            
            VStack {
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals ?? []) { animal in
                        GalleryItemView(animalImage: animal.image)
                            .onTapGesture {
                                animalSelected = animal.image
                                haptics.impactOccurred()
                            }
                    } // ForEach
                } // LazyVGrid
                .animation(.easeIn)
                .onAppear {
                    gridLayoutSwitch()
                }
            } // VStack
            .padding(.vertical, 50)
            .padding(.horizontal, 10)
        } // ScrollView
        .frame( maxWidth: .infinity, maxHeight: .infinity)
        .background(
            MotionAnimationView()
        )
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
