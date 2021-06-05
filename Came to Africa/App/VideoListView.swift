import SwiftUI

struct VideoListView: View {
    
    @State var videos: [VideoModel]! = Bundle.main.decode(file: "videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos, id: \.id) { item in                    
                    NavigationLink(
                        destination: VideoPlayerView(videoSelected: item.id, videoTile: item.name),
                        label: {
                            VideoListIdemView(video: item)
                                .padding(.vertical, 8)
                        })
                } // Foreach
            }// List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                videos.shuffle()
                hapticImpact.impactOccurred()
            }, label: {
                Image(systemName: "arrow.triangle.2.circlepath")
            }))
            
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
