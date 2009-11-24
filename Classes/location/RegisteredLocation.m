//
//  RegisteredLocation.m
//  BushFire
//
//  Created by Kevin O'Neill on 24/11/09.
//  Copyright 2009 Kevin O Neill. All rights reserved.
//

#import "RegisteredLocation.h"


@implementation RegisteredLocation

@synthesize latitude = _latitude;
@synthesize longitude = _longitude;
@synthesize notificationRadius = _notificationRadius;

- (id)initWithLatitude:(double) latitude longitude:(double)longitude notificationRadius:(long) radius
{
  if (self = [super init])
  {
    _latitude = latitude;
    _longitude = longitude;
    _notificationRadius = radius;
  }
  
  return self;
}

@end
