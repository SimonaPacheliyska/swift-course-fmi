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

    func info() -> String { 
        switch self {
        case .brain: 
            return "Face of die that represents brain. Gives you 1 point"
        case .footsteps : 
            return "Face of die that represents footsteps. This dice can be rerolled."
        case .gun: return "Face of die that represents gun. You are shot"
        }
    }
}
