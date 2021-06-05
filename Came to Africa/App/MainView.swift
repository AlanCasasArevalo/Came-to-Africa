import SwiftUI

struct MainView: View {
    
    let animals: [Animal]? = Bundle.main.decode(file: "animals.json")
    
    var body: some View {
        NavigationView {
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
                
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
