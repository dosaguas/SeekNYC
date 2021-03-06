//
//  MKMapFullCoverageOverlay.m

//  Based on MKMapDimOverlay
//  Created by swapnil luktuke on 01/05/15.
//  Copyright (c) 2015 Swapnil Luktuke. All rights reserved.
//

#import "MKMapFullCoverageOverlay.h"

@interface MKMapFullCoverageOverlay ()

@property (nonatomic) CLLocationCoordinate2D fullOverlayCoordinates;

@end

@implementation MKMapFullCoverageOverlay

-(id)initWithMapView:(MKMapView *)mapView {
    self = [super init];
    if(self)
    {
        self.fullOverlayCoordinates = mapView.centerCoordinate;
    }
    return self;
}

-(CLLocationCoordinate2D)coordinate {
    
    return self.fullOverlayCoordinates;
}

/*
 *  Returning MKMapRectWorld in this method makes sure entire map view is covered with the overlay.
 */

-(MKMapRect)boundingMapRect {
    return MKMapRectWorld;
}

@end
