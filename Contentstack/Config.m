//
//  Config.m
//  Contentstack
//
//  Created by Priyanka Mistry on 01/06/16.
//  Copyright © 2016 Contentstack. All rights reserved.
//

#import "Config.h"
#import "CSIOConstants.h"
#import "NSObject+Extensions.h"
@implementation Config
-(instancetype)init {
    self = [super init];
    if (self) {
        _region = US;
//        _host = @"cdn.contentstack.io";
        _host = @"dev10-cdn.csnonprod.com";
        _version = kCSIO_ApiVersion;
    }
    return self;
}
- (void)setRegion:(ContentstackRegion)region {
    _region = region;
    if ([[self hostURLS] containsObject:_host]) {
        _host = [self hostURL:_region];
    }
}
@end
