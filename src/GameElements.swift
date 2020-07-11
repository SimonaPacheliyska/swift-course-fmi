public class Dice {
  var sides: [String]

  public init(sides: [String]) {
    self.sides = sides
  }

  public func rollTheDice() -> String {
    sides.shuffle()
    return sides.randomElement()!
  }
}

public class DiceRoller {
  var dices : [Dice]
  var currentDice: [Dice]

  public init() { 
    self.dices = [Dice]()
    let greenDice = ["🧠", "🧠", "🧠", "💥", "👣", "👣"]
    let redDice = ["🧠", "💥", "💥", "💥", "👣", "👣"]
    let yellowDice = ["🧠", "🧠", "💥", "💥", "👣", "👣"]

    for i in 1...13 {
      if i < 7 {
        dices.append(.init(sides: greenDice))
      }
      else if i < 11 {
        dices.append(.init(sides: yellowDice))
      }
      else {
        dices.append(.init(sides: redDice))
      }
    }
    currentDice = dices
  }

  public func pickDice() -> [Dice] {
    var result = [Dice]()
    for _ in 0..< min(3, currentDice.count) {
        currentDice.shuffle()
        result.append(currentDice.removeFirst())
    }
    return result
  }

  public func addRepeatDice(d: Dice) {
    currentDice.append(d)
  }

  public func reset() {
    currentDice = dices
  }
}