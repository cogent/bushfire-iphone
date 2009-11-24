//
//  RegisteredLocation.h
//  BushFire
//
//  Created by Kevin O'Neill on 24/11/09.
//  Copyright 2009 Kevin O Neill. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface RegisteredLocation : NSObject 
{
  double _latitude;
  double _longitude;
  long _notificationRadius;
}

@property(readonly) double latitude;
@property(readonly) double longitude;
@property(readonly) long notificationRadius;

- (id)initWithLatitude:(double) latitude longitude:(double)longitude notificationRadius:(long) radius;

@end
