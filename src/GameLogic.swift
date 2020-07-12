public class GameLogic {
  public var players : [Player]
  var winners: [Player]

  public init(players: [Player]) {
      self.winners = [Player]()
      self.players = players;
  }

  public func runGame() {
    while winners.count == 0 {
      for player in players{
        printTable(player: player.name)
        print("\n")
        player.doTurn()

        if player.brainPoints >= 13 {
          winners.append(.init(name: player.name, brainPoints: player.brainPoints))
        }
      }
    }
    printWinners();
  }

  public func printTable(player: String) {
    print("\n===")
    print(player + " is at turn")
    print("\n===")
    
    
  }

  public func printWinners() {
    for winner in winners {
      print("Winner is \(winner.name) with score \(winner.brainPoints)")
    }
  }
}