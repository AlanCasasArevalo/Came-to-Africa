import SwiftUI

struct CoverImageView: View {
    
    // MARK: - Properties
    
    let coverImages: [CoverImage]? = Bundle.main.decode(file: "covers.json")

    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages ?? [], id: \.id) { cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFill()
            } // ForEach
        } // TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - Previews
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
            .padding()
    }
}
