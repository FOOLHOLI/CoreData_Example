//
//  AddNewDataViewController.m
//  CoreData
//
//  Created by 蘇健豪1 on 2014/12/6.
//  Copyright (c) 2014年 蘇健豪. All rights reserved.
//

#import "AddNewDataViewController.h"

#import "AppDelegate.h"
#import "Member.h"

@protocol page2Delegate

- (void)passValue:(NSString *)value;

@end

@interface AddNewDataViewController ()

@property (nonatomic, readonly) NSManagedObjectContext *managedObjectContext;

@property (weak, nonatomic) IBOutlet UITextField *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *phoneLabel;

@end

@implementation AddNewDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"新增";
}

- (IBAction)save:(id)sender {
    Member *newMember = [NSEntityDescription insertNewObjectForEntityForName:@"Member" inManagedObjectContext:self.managedObjectContext];
    newMember.name = self.nameLabel.text;
    newMember.phoneNumber = self.phoneLabel.text;
}


- (NSManagedObjectContext *)managedObjectContext {
    return [(AppDelegate *) [[UIApplication sharedApplication] delegate] managedObjectContext];
}


@end
