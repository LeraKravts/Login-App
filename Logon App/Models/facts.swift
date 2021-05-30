struct Facts {
    let love: String
    let hate: String
    let respest: String
    
    static func getFacts() -> Facts {
        return Facts(love: "sushi", hate: "potatos", respest: "everybody")
    }
}

