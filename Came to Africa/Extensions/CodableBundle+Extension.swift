import Foundation

extension Bundle {
    func decode<T: Codable>(file: String) -> T? {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            return nil
        }
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        guard let loaded = try? JSONDecoder().decode(T.self, from: data) else {
            return nil
        }
        return loaded
    }
}
