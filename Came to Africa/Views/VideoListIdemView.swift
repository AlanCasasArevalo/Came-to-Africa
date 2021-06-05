import SwiftUI

struct VideoListIdemView: View {
    
    let video: VideoModel
    
    var body: some View {
        HStack (spacing: 20) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .cornerRadius(9)

                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32)
                    .cornerRadius(4)
            }
            
            VStack (alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .foregroundColor(.accentColor)
                    .fontWeight(.heavy)

                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
}

struct VideoListIdemView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListIdemView(video: getVideos()[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
