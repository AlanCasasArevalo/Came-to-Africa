import Foundation

extension Bundle {
    func decode(file: String) -> [CoverImage]? {
        guard let url = self.url(forResource: file, withExtension: nil) else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        guard let coverImages = try? JSONDecoder().decode([CoverImage].self, from: data) else { return nil }
        return coverImages
    }
}
