//
//  MovieController.m
//  Movie-Search
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "MovieController.h"

@implementation MovieController

//Standart Singleton:
+ (MovieController *)sharedInstance {
    
    static MovieController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [MovieController new];
    });
    return sharedInstance;
}

//This CONTROLLER method calls the API method to get the result passing the required parameters:
- (void)searchForMoviesWithName:(NSString *)movieName completion:(void (^)(BOOL success))completion{
    
    //setup the GET and the Required Parameters:
    [[NetworkController api]GET:@"/search/movie"
                     parameters:[NetworkController getParametersWithAPIKey:@{@"query" : movieName}]
                        success:^(NSURLSessionDataTask *task, id responseObject) { //this is the sucess task.
                            
        self.resultMovies = responseObject[@"result"];
        completion(YES);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completion(NO);
        
    }];
}


@end
