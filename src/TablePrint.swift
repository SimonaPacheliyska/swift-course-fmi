/**
* Represents the table that should be printed on each step of playing the game.
* Contains a list of Players so it can be used for extracting their names and brain points.
*/
public class TablePrint {
  public var players : [Player]

  public init(players: [Player]) {
      self.players = players;
  }

  public func updatePlayerInfo(p: Player) {
      for _player in players {
        if _player.name == p.name {
          _player.brainPoints = p.brainPoints;
        }
      }
  }

  public func printTable() {
    print("Results so far\n");
    for player in players {
      print("Player \(player.name) is with points \(player.brainPoints)\n")
    }
  }
}
