import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTile: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected))
                .overlay(
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding(.top, 6)
                        .padding(.horizontal, 8)
                    ,
                    alignment: .topLeading
                )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTile, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTile: "Lion")
    }
}
