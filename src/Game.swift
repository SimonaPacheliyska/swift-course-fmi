import Foundation
public class Game {
    private var zombies: [Player]

    init(zombiesNames:[String]) {
        self.zombies = []
        for zombieName in zombiesNames {
           zombies.append(Player(name: zombieName))
        }
    }

    public func resetAllPoints() {
        for zombie in zombies {
            zombie.resetPoints()
        }
    }

    public func scoreTable() -> String {
        var table = "===\nScores:\n";
        for zombie in zombies {
            table += ("Zombie \(zombie.getName()), points - \(zombie.getPoints())\n")
        }
        table+="==="
        return table;
    }

}