//
//  LocationManager.h
//  BushFire
//
//  Created by Kevin O'Neill on 24/11/09.
//  Copyright 2009 Kevin O Neill. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RegisteredLocation.h"

@protocol LocationManagerDelegate <NSObject>


@end


@interface LocationManager : NSObject
{
	id <LocationManagerDelegate> _delegate;
  NSMutableArray *_locations; 
}

@property(nonatomic, assign) id <LocationManagerDelegate> delegate;

- (NSArray *)registeredLocations;
- (void) addLocation:(RegisteredLocation *)location;
- (void) removeLocation:(RegisteredLocation *)location;

@end
