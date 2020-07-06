public class Player {
    let name: String
    var points: Int

    init(name: String, points: Int = 0){
       self.name = name;
       self.points = points; 
    }

    public func getName() -> String{
        return self.name
    }

    public func getPoints() -> Int {
        return self.points
    }

    public func resetPoints() {  
        self.points = 0
    }

    public func addPoints(points: Int) {
        self.points += points
    }

    deinit {
        print("Disposing player \(name)")
    }
}