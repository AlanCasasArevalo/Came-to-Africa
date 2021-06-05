import SwiftUI

struct AnimalListRowView: View {
    
    var animal: Animal
    
    var body: some View {
        HStack (alignment: .center, spacing: 16) {
            Image(animal.image )
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            VStack (alignment: .leading, spacing: 8) {
                Text(animal.name )
                    .foregroundColor(.accentColor)
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Text(animal.headline )
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
        AnimalListRowView(animal: getAnimals()[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
