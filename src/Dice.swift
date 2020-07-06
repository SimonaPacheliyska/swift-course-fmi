enum Dice {
    case red 
    case green 
    case yellow

    func getDiceFaces() -> [String] {
        switch self {
        case .red:
            return ["🧠", "💥", "💥", "💥", "👣", "👣"]
        case .yellow:
            return ["🧠", "🧠", "💥", "💥", "👣", "👣"]
        case .green:
            return ["🧠", "🧠", "🧠", "💥", "👣", "👣"]
        }
    }

    func roll() -> String {
        return self.getDiceFaces().randomElement()!
    }
}

enum DiceFace {
    case brain
    case footsteps
    case gun
}
