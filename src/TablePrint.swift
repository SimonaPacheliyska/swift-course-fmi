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