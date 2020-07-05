class Player {
    let name: String
    var points: Int

    init(name: String, points: Int = 0){
       self.name = name;
       self.points = points; 
    }

    public func getPoints() -> Int {
        return points
    }

    public func resetPoints() {  
        self.points = 0
    }

    public func addPoints(points: Int) {
        self.points += points
    }
}