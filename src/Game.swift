import Foundation

public class Game {
  public func startGame() {
    print("Welcome to Zombie Dice!!!")
    print("1. Let's play")
    print("2. Let's learn the rules")
    print("Make selection: ", terminator: "")

    let choice = readLine()

    if choice != "1" && choice != "2" {
      print("Invalid selection!")
      return
    }

    if choice == "2" {
      print( "You can learn the rules at https://github.com/SimonaPacheliyska/zombie-dice" )
      print("When you are ready with reading the rules, press any key")
    }

    print("Enter players' names, separated with spaces. Enter between 2 and 8 playes")

    let playersString = readLine()!
    let players = playersString.components(separatedBy: " ")

    if players.count < 2 {
      print("At least 2 players must be selected")
      return;
    }
    else if players.count > 8 {
      print("Up to 8 players can play Zombi Dice, sorry :(")
      return
    }

    var actualPlayers = [Player]()
    for player in players {
      actualPlayers.append(.init(name: player, brainPoints: 0))
    }

    let gameLogic = GameLogic(players: actualPlayers)
    gameLogic.runGame()
    print("\nThank you for spending time with Zombie Dice")
  }
}