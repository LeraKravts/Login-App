struct Information {
    let education: String
    let job: String
    let skills: String
    
    static func getInfo() -> Information {
        return Information(education: "MSLU", job: "PM", skills: "Python, Swift")
    }
}
