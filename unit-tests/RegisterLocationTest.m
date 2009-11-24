//
//  RegisterLocationTest.m
//  BushFire
//
//  Created by Kevin O'Neill on 17/11/09.
//  Copyright 2009 Kevin O Neill. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GHUnit.h"
#import "LocationManager.h"

@interface RegisterLocationTest : GHTestCase
{
  LocationManager *_manager;
}

@end

@implementation RegisterLocationTest

- (BOOL)shouldRunOnMainThread
{
	return NO;
}

- (void)setUpClass
{
  _manager = [[LocationManager alloc] init];
}


- (void)tearDownClass
{
	RELEASE_SAFELY(_manager);
}

- (void)setUp
{
    // Run before each test method
}

- (void)tearDown
{
    // Run after each test method
}   

- (void)testShouldAllowLocationsToBeRegistered
{
  RegisteredLocation *location = [[RegisteredLocation alloc] initWithLatitude:1.1 longitude:2.0 notificationRadius:10];
	[_manager addLocation:location];

  GHAssertEquals(1u, [[_manager registeredLocations] count], @"Expected a single location but found %d", [[_manager registeredLocations] count]);
}

@end
