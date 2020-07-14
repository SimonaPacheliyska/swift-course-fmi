/**
* Represents the main game logic.
* Contains a list of Players, winners and table for printing the current results
*/
public class GameLogic {
  public var players : [Player]
  var winners: [Player]
  var tablePrint: TablePrint

  public init(players: [Player]) {
      self.players = players;
      self.winners = [Player]()
      tablePrint = TablePrint(players: self.players)
  }
/**
* Prints the table containing the current results.
* Player[i] is on turn
* Update player's[i] points in the table
*/
  public func runGame() {
    while winners.count == 0 {
      for player in players {
        print("Score")
        
        printTable()

        print("\n")
        player.doTurn()

        tablePrint.updatePlayerInfo(p: player)

        if player.brainPoints >= 13 {
          winners.append(.init(name: player.name, brainPoints: player.brainPoints))
        }
      }
    }
    printWinners();
  }

  public func printTable() {
    tablePrint.printTable()
  }

  public func printWinners() {
    for winner in winners {
      print("Winner is \(winner.name) with score \(winner.brainPoints)")
    }
  }
}
