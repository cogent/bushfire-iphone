//
//  BushFireViewController.h
//  BushFire
//
//  Created by Kevin O'Neill on 17/11/09.
//  Copyright Kevin O Neill 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface BushFireViewController : UIViewController
{
	IBOutlet MKMapView *_mapView;
}

- (IBAction) addLocation;


@end

