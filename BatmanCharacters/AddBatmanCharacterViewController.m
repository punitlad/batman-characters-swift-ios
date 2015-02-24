//
//  AddBatmanCharacterViewController.m
//  BatmanCharacters
//
//  Created by plad on 2015-02-24.
//  Copyright (c) 2015 plad. All rights reserved.
//

#import "AddBatmanCharacterViewController.h"
#import "BatmanCharacter.h"

@interface AddBatmanCharacterViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation AddBatmanCharacterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if (sender != self.saveButton) return;
    if (self.textField.text.length != 0) {
        self.batmanCharacter = [[BatmanCharacter alloc] init];
        self.batmanCharacter.characterName = self.textField.text;
        self.batmanCharacter.characterViewed = NO;
    }
}

@end
