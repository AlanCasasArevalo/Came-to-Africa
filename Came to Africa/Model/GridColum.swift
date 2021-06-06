import Foundation

enum GridColum: Int {
    case one
    case two
    case three
    
    mutating func setGridColumn(value: Int) {
        self = GridColum(rawValue: value) ?? .one
    }
    
    func getIcon () -> String {
        switch self {
        case .one:            
            return "square.grid.3x2"
        case .two:
            return "rectangle.grid.1x2"            
        case .three:
            return "square.grid.2x2"
            
        }
    }
}
