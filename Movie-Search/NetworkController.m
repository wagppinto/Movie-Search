//
//  NetworkController.m
//  Movie-Search
//
//  Created by Wagner Pinto on 3/3/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "NetworkController.h"

NSString * const baseURL = @"http://api.themoviedb.org/3";
static NSString * const API_KEY = @"";

@implementation NetworkController

//JSON Singleton that stablishes the connection with the URL passed
+ (AFHTTPSessionManager *)api {
    
    static AFHTTPSessionManager *api = nil; //set the session to nil.

    //this is the singleton:
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        api = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:baseURL]];//geting the URL
        api.responseSerializer = [AFJSONResponseSerializer serializer];//setup the response
        api.requestSerializer = [AFJSONRequestSerializer serializer];//setup the request
    });
    return api;
}

+ (NSDictionary *)getParametersWithAPIKey:(NSDictionary *)parameter{
  
    NSMutableDictionary *parametersWithAPIKey = [[NSMutableDictionary alloc]initWithDictionary:parameter];
    [parametersWithAPIKey setObject:API_KEY forKey:@"apiKey"];
    
    return parametersWithAPIKey;
    
}


@end
