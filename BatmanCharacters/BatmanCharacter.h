//
//  BatmanCharacter.h
//  BatmanCharacters
//
//  Created by plad on 2015-02-24.
//  Copyright (c) 2015 plad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BatmanCharacter : NSObject

@property NSString *characterName;
@property BOOL characterViewed;
@property (readonly) NSDate *creationDate;

@end
