public class Player {

  public var name : String
  public var brainPoints: Int
  public var shotgunPoints: Int
  public var dicer: DiceRoller

  public init(name : String, brainPoints: Int) {
    self.name = name
    self.brainPoints = brainPoints
    self.shotgunPoints = 0
    self.dicer = DiceRoller()
  }

  public func doTurn() {
    print("#########\n\(name) is at turn")

    let lastBrainPoints = brainPoints
    var player_cmd = ""
    while( player_cmd != "n" && !dicer.currentDice.isEmpty) {
        let currentDice = dicer.pickDice()

        var hand = [String]()
        for dice in currentDice {
            hand.append(dice.rollTheDice())
        }

        var brainCnt = 0
        var shotgunCnt = 0
        var cnt = 0

        print("\nPicked dice: ", terminator: " ")
        for roll in hand {
            if roll == "👣" {
                dicer.addRepeatDice(d: currentDice[cnt])
            }
            else if roll == "🧠" {
                brainCnt += 1
            }
            else if roll == "💥" {
                shotgunCnt += 1
            }
            print("\(roll)", terminator: " ")
            cnt += 1
        }

        brainPoints += brainCnt
        shotgunPoints += shotgunCnt

        if shotgunPoints >= 3 {
          print("\n\nPlayer finished the turn, because he got shot. No points are accumulated\n")
          dicer.reset()
          shotgunPoints = 0
          brainPoints = lastBrainPoints
          return
        }

        print("\n\nCurrent player status\nName: \(name) \nBrain points: \(brainPoints) \nShotgun points: \(shotgunPoints) \nLeft dices: \(dicer.currentDice.count) \nDo you want to continue [y/n]?")

        player_cmd = readLine()!
    }
    dicer.reset()
    shotgunPoints = 0
  }
}