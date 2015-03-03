
import Foundation

@objc class BatmanCharacter : NSObject {
    
    var characterName:String
    var characterViewed:Bool
    
    class func initialSetOfBatmanCharacters() -> [BatmanCharacter] {
        var joker:BatmanCharacter = BatmanCharacter(characterName: "Joker")
        var riddler:BatmanCharacter = BatmanCharacter(characterName: "Riddler")
        var twoface:BatmanCharacter = BatmanCharacter(characterName: "TwoFace")
        var batman:BatmanCharacter = BatmanCharacter(characterName: "Batman")
        
        var batmanCharacters:[BatmanCharacter] = []
        batmanCharacters.append(joker)
        batmanCharacters.append(riddler)
        batmanCharacters.append(twoface)
        batmanCharacters.append(batman)
        
        return batmanCharacters
    }
    
    init(characterName:String) {
        self.characterName = characterName
        self.characterViewed = false
    }
    
}
