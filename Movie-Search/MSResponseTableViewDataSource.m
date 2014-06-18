//
//  MSResponseTableViewDataSource.m
//  Movie-Search
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "MSResponseTableViewDataSource.h"

static NSString * const cellReuseKey = @"cell";

@interface MSResponseTableViewDataSource () 


@end

@implementation MSResponseTableViewDataSource

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellReuseKey];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseKey];
    cell.textLabel.text = @"Your only cell";
    return cell;
}


@end
