#import "BatmanCharactersTableViewController.h"
#import "BatmanCharacter.h"
#import "AddBatmanCharacterViewController.h"

@interface BatmanCharactersTableViewController ()

@property NSMutableArray *batmanCharacters;

@end

@implementation BatmanCharactersTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.batmanCharacters = [[NSMutableArray alloc] init];
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loadInitialData {
    BatmanCharacter *joker = [[BatmanCharacter alloc] init];
    joker.characterName = @"Joker";
    BatmanCharacter *riddler = [[BatmanCharacter alloc] init];
    riddler.characterName = @"Riddler";
    BatmanCharacter *twoFace = [[BatmanCharacter alloc] init];
    twoFace.characterName = @"TwoFace";
    BatmanCharacter *batman = [[BatmanCharacter alloc] init];
    batman.characterName = @"Batman";
    
    [self.batmanCharacters addObject:joker];
    [self.batmanCharacters addObject:riddler];
    [self.batmanCharacters addObject:twoFace];
    [self.batmanCharacters addObject:batman];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.batmanCharacters count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BatmanCharacterPrototypeCell"
                                                            forIndexPath:indexPath];
    BatmanCharacter *batmanCharacter = [self.batmanCharacters objectAtIndex:indexPath.row];
    cell.textLabel.text = batmanCharacter.characterName;
    
    if (batmanCharacter.characterViewed) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
    AddBatmanCharacterViewController *source = [segue sourceViewController];
    BatmanCharacter *batmanCharacter = source.batmanCharacter;
    if (batmanCharacter != nil) {
        [self.batmanCharacters addObject:batmanCharacter];
        [self.tableView reloadData];
    }
}

#pragma mark - table view delegates
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    BatmanCharacter *tappedCharacter = [self.batmanCharacters objectAtIndex:indexPath.row];
    tappedCharacter.characterViewed = !tappedCharacter.characterViewed;
    
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    
}

@end
