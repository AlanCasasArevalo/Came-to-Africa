import SwiftUI

struct MainView: View {
    
    @State private var isGridViewActive = false
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    let animals: [Animal]? = Bundle.main.decode(file: "animals.json")
    @State var gridLayout = [GridItem(.flexible())]
    @State private var gridColums: GridColum = GridColum.one
    
    func gridLayoutSwitch () {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColums.setGridColumn(value: gridLayout.count)
    }
    
    var body: some View {
        NavigationView {

            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .padding(.bottom, 16)
                        
                        if let animals = animals {
                            ForEach (animals) { animal in
                                NavigationLink(
                                    destination: AnimalDetailView(animal: animal),
                                    label: {
                                        AnimalListRowView(animal: animal)
                                    })
                            }
                        }
                        CreditsView()
                            .modifier(CenterModifier())
                    }
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                                ForEach(animals ?? []) { animal in
                                    NavigationLink(
                                        destination: AnimalDetailView(animal: animal),
                                        label: {
                                            AnimalGridItemView(animal: animal)
                                        })
                                } // ForEach
                            } // LazyVGrid
                            .padding(10)
                            .animation(.easeIn)
                    }
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
            .navigationBarItems(trailing:
                                    HStack {
                                        Button(action: {
                                            isGridViewActive = false
                                            haptics.impactOccurred()
                                        }, label: {
                                            Image(systemName: "square.fill.text.grid.1x2")
                                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                                        })

                                        Button(action: {
                                            isGridViewActive = true
                                            haptics.impactOccurred()
                                            gridLayoutSwitch()
                                        }, label: {
                                            Image(systemName: gridColums.getIcon())
                                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                                        })
                                    }
            )
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
