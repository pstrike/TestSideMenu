//
//  TestSideMenuViewController.m
//  TestSideMenu
//
//  Created by Pan Wang on 14-9-17.
//  Copyright (c) 2014年 walz. All rights reserved.
//

#import "TestSideMenuViewController.h"
#import "TestSideMenuNavigationViewController.h"
#import "TestSideMenuSecondViewController.h"

@interface TestSideMenuViewController ()

@end

@implementation TestSideMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Home Controller";
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

- (void) go
{
    TestSideMenuSecondViewController* secVC = [[TestSideMenuSecondViewController alloc] init];
    [self.navigationController pushViewController:secVC animated:YES];
}

@end
