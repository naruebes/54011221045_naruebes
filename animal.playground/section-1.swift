import UIKit

class animal {
    let animal: [String] = ["หมา", "หมู", "วัว"]
    let feed: [String] = ["กระดูก", "รำ" , "หญ้า"]
    var temp: String
    
    init(animal: String) {
        self.temp = animal
    }
    
    func animalFeed() -> String {
        var f = ""
        for (var i = 0; i < animal.count; i++) {
            if (temp == animal[i]) {
                f = feed[i]
            }
        }
        
        return f
    }
}

let feedForAnimal = animal(animal: "หมู")
feedForAnimal.animalFeed()