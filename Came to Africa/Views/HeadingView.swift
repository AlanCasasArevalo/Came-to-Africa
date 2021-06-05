import SwiftUI

struct HeadingView: View {
    
    let headingTitle: String
    let headingIcon: String

    var body: some View {
        HStack {
            Image(systemName: headingIcon)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingTitle)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingTitle: "Wilderness in Pictures", headingIcon: "photo.on.rectangle.angled")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
