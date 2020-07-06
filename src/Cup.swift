
public class Cup {
    private var dices: [Dice] = []

    init(){
        for _ in 0...2 {
            dices.append(Dice.red)
        }
        for _ in 0...3 {
            dices.append(Dice.yellow)
        }
        for _ in 0...5 {
            dices.append(Dice.green)
        }
    }

    public func isEmpty() -> Bool {
         return dices.isEmpty;
    }

    public func dicesCount() -> Int {
        return dices.count
    }

     public func reset() {
        dices = []
        for _ in 0...2 {
            dices.append(Dice.red)
        }
        for _ in 0...3 {
            dices.append(Dice.yellow)
        }
        for _ in 0...5 {
            dices.append(Dice.green)
        }
    }

    public func takeDice() -> Dice? {
        if(dices.isEmpty){
            return nil;
        }
        let index = Int.random(in: 0..< dices.count)
        let dice: Dice? = dices[index];
        dices.remove(at: index);
        return result;
    }

    public func takeThreeDices() -> [Dice] {
        var chosenDices: [Dice] = []
        for _ in 1...3 {
            if let dice = takeDice() {
                chosenDices.append(dice)
            }
        }
        return chosenDices
    }
}