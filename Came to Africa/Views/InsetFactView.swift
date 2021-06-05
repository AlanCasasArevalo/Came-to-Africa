import SwiftUI

struct InsetFactView: View {

    let animal: Animal

    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id:\.self) { fact in
                    Text(fact)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal]! = Bundle.main.decode(file: "animals.json")

    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()

    }
}
