//
//  MSViewController.m
//  Movie-Search
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "MSViewController.h"
#import "MSResponseTableViewDataSource.h"
#import "MSMovieDetailViewController.h"

@interface MSViewController () <UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) MSResponseTableViewDataSource *dataSource;

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.dataSource = [MSResponseTableViewDataSource new];
    
    self.tableView.dataSource = self.dataSource;
    [self.dataSource registerTableView:self.tableView];
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    MSMovieDetailViewController *detailViewController = [MSMovieDetailViewController new];
    [self.navigationController pushViewController:detailViewController animated:YES];
}

@end
