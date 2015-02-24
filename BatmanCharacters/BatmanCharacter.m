#import "BatmanCharacter.h"

@implementation BatmanCharacter

+ (NSMutableArray *) initialSetOfBatmanCharacters {
    NSMutableArray *batmanCharacters = [[NSMutableArray alloc] init];
    
    BatmanCharacter *joker = [[BatmanCharacter alloc] init];
    joker.characterName = @"Joker";
    BatmanCharacter *riddler = [[BatmanCharacter alloc] init];
    riddler.characterName = @"Riddler";
    BatmanCharacter *twoFace = [[BatmanCharacter alloc] init];
    twoFace.characterName = @"TwoFace";
    BatmanCharacter *batman = [[BatmanCharacter alloc] init];
    batman.characterName = @"Batman";
    
    [batmanCharacters addObject:joker];
    [batmanCharacters addObject:riddler];
    [batmanCharacters addObject:twoFace];
    [batmanCharacters addObject:batman];
    
    return batmanCharacters;
}

@end
