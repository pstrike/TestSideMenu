//
//  TestSideMenuSecondViewController.m
//  TestSideMenu
//
//  Created by Pan Wang on 14-9-17.
//  Copyright (c) 2014年 walz. All rights reserved.
//

#import "TestSideMenuSecondViewController.h"
#import "TestSideMenuNavigationViewController.h"
#import "TestSideMenuViewController.h"

@interface TestSideMenuSecondViewController ()

@end

@implementation TestSideMenuSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Second Controller";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:(TestSideMenuNavigationViewController *)self.navigationController
                                                                            action:@selector(showMenu)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Go"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self action:@selector(go)];
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.image = [UIImage imageNamed:@"Balloon"];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) go
{
    TestSideMenuViewController* secVC = [[TestSideMenuViewController alloc] init];
    [self.navigationController pushViewController:secVC animated:YES];
}

@end
