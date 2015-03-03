//
//  NetworkController.h
//  Movie-Search
//
//  Created by Wagner Pinto on 3/3/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface NetworkController : NSObject

+ (AFHTTPSessionManager *)api;
+ (NSDictionary *)getParametersWithAPIKey:(NSDictionary *)parameter;

@end
