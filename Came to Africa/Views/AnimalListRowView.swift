import SwiftUI

struct AnimalListRowView: View {
    
    var animal: Animal = Animal(id: "Lion", name: "Lion", headline: "Son los felinos mas grandes y sociables del mundo animal", description: "His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu.", link: "", image: "lion", gallery: [""], fact: [""])
    
    var body: some View {
        HStack (alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            VStack (alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .foregroundColor(.accentColor)
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Text(animal.headline)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing ,8)
                
            } // VStack
        } // HStack
    }
}

struct AnimalListRowView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalListRowView(animal: Animal(id: "Lion", name: "Lion", headline: "Son los felinos mas grandes y sociables del mundo animal", description: "His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu.", link: "", image: "lion", gallery: [""], fact: [""]))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
