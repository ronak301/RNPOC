
#import "MenuViewController.h"

#import "ViewInViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController {
    NSDictionary *data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    data = @{
        @"sectionTitles": @[@"Simple"],
        @"sectionKeys": @[
            @[@"ViewInView"],
        ],
        @"sectionData": @[
            @[
                @"React View inside a Native View",
            ]
        ],
    };
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
  
    self.title = @"Embedded App Example";
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [[data objectForKey:@"sectionTitles"] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[data objectForKey:@"sectionData"] objectAtIndex:section] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
  
  return [[data objectForKey:@"sectionTitles"] objectAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [[[data objectForKey:@"sectionData"] objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
  
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *chosenItem = [[[data objectForKey:@"sectionKeys"] objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
  
    if ([chosenItem isEqualToString:@"ViewInView"]) {
        ViewInViewController *viewInViewController = [[ViewInViewController alloc] init];
        [self.navigationController pushViewController:viewInViewController animated:YES];
    }
}

@end
