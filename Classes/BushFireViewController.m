  //
  //  BushFireViewController.m
  //  BushFire
  //
  //  Created by Kevin O'Neill on 17/11/09.
  //  Copyright Kevin O Neill 2009. All rights reserved.
  //

#import "BushFireViewController.h"
#import "RegisteredLocation.h"

@implementation BushFireViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
  {
    _mapView = nil;
  }
  
  return self;
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated
{
//  CLLocationCoordinate2D cogent = {-37.807221, 144.19277};
//  
//  [_mapView setCenterCoordinate:cogent animated:animated];
}

- (void)viewDidUnload {
  RELEASE_SAFELY(_mapView);
}

- (void)dealloc
{
  RELEASE_SAFELY(_mapView);
  
  [super dealloc];
}

- (IBAction) addLocation
{
  RegisteredLocation *location = [[RegisteredLocation alloc] initWithLatitude:-37.807221 longitude:144.19277 notificationRadius:25];
  [_mapView addAnnotation:location];
  [_mapView selectAnnotation:location animated:YES];
  
  RELEASE_SAFELY(location);
}



@end
