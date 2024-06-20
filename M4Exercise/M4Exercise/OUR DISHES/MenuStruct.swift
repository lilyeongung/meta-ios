import Foundation

struct JSONMenu: Codable {
    let menu: [MenuItem]
}


struct MenuItem: Codable, Identifiable {
    let id = UUID()
    
    // var title: String? vs
    //
    var title: String
    var price: String
}
