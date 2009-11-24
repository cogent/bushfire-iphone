//
//  LocationManager.m
//  BushFire
//
//  Created by Kevin O'Neill on 24/11/09.
//  Copyright 2009 Kevin O Neill. All rights reserved.
//

#import "LocationManager.h"


@implementation LocationManager

@synthesize delegate = _delegate;

- (id) init
{
  if (self = [super init])
  {
    _delegate = nil;
    _locations = [[NSMutableArray array] retain];
  }
  
  return self;
}

- (void)dealloc
{
  _delegate = nil;
  RELEASE_SAFELY(_locations);
  
  [super dealloc];
}

- (NSArray *)registeredLocations
{
	return _locations;
}

- (void) addLocation:(RegisteredLocation *)location
{
  [_locations addObject:location];
}

- (void) removeLocation:(RegisteredLocation *)location
{
  
}

@end
