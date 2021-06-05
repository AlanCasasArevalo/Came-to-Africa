import SwiftUI

struct ExternalWeblinkView: View {
    
    var animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()

                Group {
                    Image(systemName: "arrow.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://www.wikipedia.org")!))
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWeblinkView(animal: getAnimals()[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
