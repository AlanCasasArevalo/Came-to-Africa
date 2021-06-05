import Foundation

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    var headline: String
    
    var thumbnail: String {
        return "video-\(self.id)"
    }
}
