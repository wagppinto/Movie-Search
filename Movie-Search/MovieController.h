//
//  MovieController.h
//  Movie-Search
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkController.h"

@interface MovieController : NSObject

+ (MovieController *)sharedInstance;

@property (nonatomic, strong) NSArray *resultMovies;

- (void)searchForMoviesWithName:(NSString *)movieName completion:(void (^)(BOOL success))completion;


@end
