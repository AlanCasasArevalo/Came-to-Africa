import Foundation
import AVKit

var video: AVPlayer?

func playVideo(fileName: String, withExtension: String = "mp4") -> AVPlayer? {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: withExtension) else { return nil }
    video = AVPlayer(url: url)
    video?.play()
    return video
}
