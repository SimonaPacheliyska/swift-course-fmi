import Foundation
public class Game {
    private var zombies: [Player] = [];

    init(zombiesNames:[String]) {
        for zombieName in zombiesNames {
           zombies.append(Player(name: zombieName))
        }
    }

     public func resetAllScores() {
        for zombie in zombies {
            zombie.resetPoints()
        }
    }

}