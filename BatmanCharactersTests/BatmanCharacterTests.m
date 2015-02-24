#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "BatmanCharacter.h"

@interface BatmanCharacterTest : XCTestCase

@end

@implementation BatmanCharacterTest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void) testShouldContainCorrectInitialSetOfCharacters {
    NSMutableArray *expectedCharacters = [[NSMutableArray alloc] init];
    BatmanCharacter *joker = [[BatmanCharacter alloc] init];
    joker.characterName = @"Joker";
    BatmanCharacter *riddler = [[BatmanCharacter alloc] init];
    riddler.characterName = @"Riddler";
    BatmanCharacter *twoFace = [[BatmanCharacter alloc] init];
    twoFace.characterName = @"TwoFace";
    BatmanCharacter *batman = [[BatmanCharacter alloc] init];
    batman.characterName = @"Batman";
    [expectedCharacters addObject:joker];
    [expectedCharacters addObject:riddler];
    [expectedCharacters addObject:twoFace];
    [expectedCharacters addObject:batman];
    
    int expectedCount = 4;
    
    NSMutableArray *actualCharacters = [BatmanCharacter initialSetOfBatmanCharacters];
    
    XCTAssertEqual(expectedCount, [actualCharacters count]);
    
    for (int i = 0; i < expectedCount; i++) {
        BatmanCharacter *expectedCharacter = [expectedCharacters objectAtIndex:i];
        BatmanCharacter *actualCharacter = [expectedCharacters objectAtIndex:i];
        XCTAssertEqual(expectedCharacter.characterName, actualCharacter.characterName);
    }
}

@end
