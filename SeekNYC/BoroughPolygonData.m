//
//  CountyPolygonData.m
//  CountyPolygons
//
//  Created by Justine Gartner on 12/16/15.
//  Copyright © 2015 Justine Kay. All rights reserved.
//

#import "BoroughPolygonData.h"
#import <CoreLocation/CoreLocation.h>

@implementation BoroughPolygonData

-(void) initializeData {
    
    NSString *BKPolygonCoords = @"-73.97394,40.7079 -73.97004,40.70695 -73.96837,40.71413 -73.9657,40.71878 -73.96154,40.72388 -73.96162,40.72486 -73.96153,40.72809 -73.96174,40.73079 -73.9626,40.7349 -73.96279,40.73767 -73.96216,40.73744 -73.94637,40.73726 -73.93148,40.72835 -73.92436,40.71557 -73.92147,40.709 -73.91481,40.70519 -73.90962,40.69872 -73.90619,40.6968 -73.9052,40.69614 -73.9052,40.69368 -73.90108,40.68923 -73.89107,40.68417 -73.88227,40.68904 -73.86762,40.68914 -73.86351,40.67999 -73.86106,40.67434 -73.85606,40.66551 -73.85768,40.66077 -73.86151,40.65905 -73.85839,40.65267 -73.83709,40.63215 -73.83428,40.60919 -73.86561,40.5812 -73.88507,40.57375 -73.93489,40.56665 -73.99709,40.55728 -74.03629,40.55104 -74.03628,40.55118 -74.03622,40.5524 -74.03621,40.55252 -74.03598,40.55656 -74.03515,40.571 -74.03505,40.57275 -74.03505,40.57285 -74.03455,40.57625 -74.03788,40.5892 -74.04139,40.60311 -74.04204,40.60409 -74.04382,40.60682 -74.04751,40.61232 -74.04757,40.61241 -74.04962,40.61571 -74.04996,40.61626 -74.05235,40.62013 -74.05384,40.62262 -74.05532,40.6251 -74.05663,40.62729 -74.05574,40.65176 -74.05462,40.65341 -74.05435,40.65386 -74.05433,40.65387 -74.0543,40.65391 -74.05348,40.6552 -74.05323,40.65566 -74.05302,40.65603 -74.0528,40.65641 -74.05229,40.6573 -74.05178,40.6582 -74.05137,40.65893 -74.05082,40.65985 -74.05049,40.66038 -74.05048,40.6604 -74.05015,40.66083 -74.04979,40.6613 -74.04959,40.66162 -74.04894,40.6627 -74.04822,40.6639 -74.04766,40.66483 -74.04595,40.66768 -74.04467,40.66981 -74.04351,40.67174 -74.03594,40.68433 -74.03586,40.68446 -74.03584,40.68449 -74.03444,40.68683 -74.01935,40.67955 -74.01548,40.68191 -74.00936,40.6855 -74.008,40.68674 -74.00585,40.68775 -74.00392,40.68908 -74.00263,40.69107 -74.00155,40.69315 -74.00042,40.69499 -73.99946,40.6968 -73.99835,40.69895 -73.99552,40.70326 -73.99135,40.70475 -73.98952,40.70512 -73.98404,40.70489 -73.97923,40.70577 -73.97406,40.70783";
    
    
    NSString *MANPolygonCoords1 = @"-74.04626,40.69116 -74.04586,40.6911 -74.04485,40.69073 -74.04428,40.69046 -74.04393,40.69022 -74.04377,40.69008 -74.04356,40.68972 -74.04351,40.68927 -74.04359,40.68898 -74.0438,40.68876 -74.04421,40.68861 -74.04457,40.68858 -74.04507,40.68873 -74.04562,40.68902 -74.04614,40.68927 -74.04657,40.68964 -74.04699,40.69017 -74.04713,40.69054 -74.04712,40.69065 -74.04721,40.69072 -74.04723,40.69085 -74.04725,40.691 -74.04717,40.69111 -74.0471,40.69114 -74.04689,40.69112 -74.04657,40.69115";
    
    NSString *MANPolygonCoords2 = @"-74.0394,40.70047 -74.0382,40.69922 -74.03818,40.69909 -74.03844,40.69897 -74.03881,40.69888 -74.0392,40.69887 -74.03939,40.69898 -74.03949,40.69915 -74.03963,40.69913 -74.03973,40.69903 -74.04015,40.69928 -74.03973,40.69937 -74.04,40.69955 -74.04015,40.69974 -74.04017,40.69991 -74.04012,40.7001 -74.04029,40.70017 -74.04035,40.70039 -74.04031,40.70054 -74.04018,40.7006 -74.04006,40.70063 -74.03993,40.70065 -74.03979,40.70063 -74.03973,40.70059 -74.03961,40.70054 -74.03949,40.70051";
    
    NSString *MANPolygonCoords3 = @"-73.97394,40.7079 -73.97406,40.70783 -73.97923,40.70577 -73.98404,40.70489 -73.98952,40.70512 -73.99135,40.70475 -73.99552,40.70326 -73.99835,40.69895 -73.99946,40.6968 -74.00042,40.69499 -74.00155,40.69315 -74.00263,40.69107 -74.00392,40.68908 -74.00585,40.68775 -74.008,40.68674 -74.00936,40.6855 -74.01548,40.68191 -74.01935,40.67955 -74.03444,40.68683 -74.02628,40.6999 -74.0254,40.70474 -74.02454,40.70944 -74.02339,40.71577 -74.02196,40.72359 -74.02152,40.72545 -74.0211,40.72747 -74.0204,40.73032 -74.01825,40.73912 -74.01787,40.74068 -74.01568,40.74935 -74.01378,40.7566 -74.01113,40.76064 -74.0098,40.76267 -74.00918,40.7636 -74.00508,40.7692 -74.00138,40.7743 -74.00133,40.77438 -74.00022,40.77605 -73.99958,40.777 -73.99958,40.77716 -73.99738,40.7803 -73.99288,40.7863 -73.99198,40.7876 -73.99162,40.78811 -73.98488,40.7975 -73.98492,40.79752 -73.98489,40.79756 -73.97488,40.8108 -73.97113,40.81626 -73.97011,40.81774 -73.96798,40.82083 -73.9666,40.82258 -73.96571,40.82371 -73.96509,40.82448 -73.9612,40.83145 -73.95762,40.83965 -73.95348,40.849 -73.95204,40.8516 -73.94838,40.85847 -73.9453,40.86354 -73.94389,40.86585 -73.94321,40.86697 -73.94311,40.86713 -73.94286,40.86754 -73.94186,40.86913 -73.94113,40.87037 -73.9402,40.87183 -73.93956,40.87291 -73.93901,40.87381 -73.93856,40.8745 -73.93838,40.87477 -73.93817,40.87512 -73.93381,40.88221 -73.92497,40.87914 -73.92141,40.87818 -73.91517,40.87569 -73.91004,40.87899 -73.90782,40.8772 -73.9071,40.87298 -73.9098,40.86828 -73.9165,40.86038 -73.92027,40.85623 -73.9222,40.85311 -73.92742,40.84641 -73.92901,40.84408 -73.93016,40.84166 -73.93341,40.83318 -73.93294,40.82821 -73.93253,40.8261 -73.93265,40.82534 -73.9325,40.82414 -73.93236,40.82254 -73.93212,40.81962 -73.9322,40.81458 -73.93185,40.80862 -73.9317,40.80798 -73.92988,40.80585 -73.92231,40.80218 -73.91631,40.79788 -73.91251,40.79618 -73.91119,40.79291 -73.91341,40.78886 -73.91632,40.7866 -73.91817,40.78459 -73.92042,40.78287 -73.92112,40.78232 -73.92425,40.77973 -73.92601,40.77888 -73.92955,40.77687 -73.93186,40.77826 -73.93509,40.77927 -73.93497,40.77844 -73.93735,40.77558 -73.93842,40.77429 -73.93808,40.77255 -73.93519,40.77174 -73.93574,40.77055 -73.93751,40.76935 -73.93908,40.76847 -73.94084,40.7674 -73.94511,40.76309 -73.95275,40.75391 -73.95559,40.75036 -73.9583,40.74573 -73.9618,40.74139 -73.9627,40.7383 -73.96279,40.73767 -73.9626,40.7349 -73.96174,40.73079 -73.96153,40.72809 -73.96162,40.72486 -73.96154,40.72388 -73.9657,40.71878 -73.96837,40.71413 -73.97004,40.70695";
    
    
    NSString *BRXPolygonCoords = @"-73.93185,40.80862 -73.9322,40.81458 -73.93212,40.81962 -73.93236,40.82254 -73.9325,40.82414 -73.93265,40.82534 -73.93253,40.8261 -73.93294,40.82821 -73.93341,40.83318 -73.93016,40.84166 -73.92901,40.84408 -73.92742,40.84641 -73.9222,40.85311 -73.92027,40.85623 -73.9165,40.86038 -73.9098,40.86828 -73.9071,40.87298 -73.90782,40.8772 -73.91004,40.87899 -73.91517,40.87569 -73.92141,40.87818 -73.92497,40.87914 -73.93381,40.88221 -73.93365,40.88246 -73.93173,40.88558 -73.92982,40.88868 -73.92945,40.88962 -73.92943,40.88969 -73.92919,40.89031 -73.92829,40.89256 -73.92724,40.8952 -73.92712,40.8955 -73.92655,40.89688 -73.92592,40.89848 -73.92566,40.89915 -73.92495,40.90102 -73.92423,40.90274 -73.92384,40.90367 -73.92331,40.90506 -73.92247,40.90724 -73.92097,40.91101 -73.92009,40.91313 -73.9199,40.9136 -73.9191,40.91481 -73.91879,40.91597 -73.91849,40.91713 -73.9184,40.91748 -73.91835,40.91749 -73.91813,40.91753 -73.9179,40.91758 -73.91081,40.91537 -73.9007,40.91238 -73.88624,40.90805 -73.88011,40.90659 -73.87462,40.90496 -73.8624,40.90134 -73.8594,40.90138 -73.8578,40.90254 -73.85714,40.90498 -73.85623,40.90612 -73.85429,40.90792 -73.85148,40.90959 -73.85102,40.9065 -73.84485,40.90531 -73.84114,40.90349 -73.84018,40.90076 -73.83926,40.89871 -73.83628,40.89353 -73.82727,40.8908 -73.82357,40.88988 -73.82313,40.89087 -73.8185,40.88988 -73.81243,40.88838 -73.8054,40.8866 -73.7973,40.88448 -73.74948,40.8721 -73.74806,40.87172 -73.75373,40.85656 -73.75379,40.85641 -73.7578,40.84568 -73.75797,40.84554 -73.76164,40.84237 -73.76217,40.84191 -73.77343,40.83221 -73.77452,40.83127 -73.77498,40.83088 -73.78019,40.8264 -73.77942,40.81224 -73.77973,40.81129 -73.7817,40.80448 -73.7867,40.80048 -73.7899,40.79978 -73.79367,40.79996 -73.8047,40.80324 -73.81123,40.8051 -73.82289,40.80437 -73.82709,40.80308 -73.83076,40.80308 -73.8349,40.80188 -73.84665,40.80064 -73.85347,40.79958 -73.86306,40.79696 -73.87,40.79068 -73.87102,40.78883 -73.87125,40.78759 -73.87218,40.7867 -73.87896,40.78574 -73.88291,40.78633 -73.88713,40.78697 -73.88992,40.7874 -73.89059,40.79014 -73.8922,40.79038 -73.89287,40.79057 -73.89981,40.79252 -73.91251,40.79618 -73.91631,40.79788 -73.92231,40.80218 -73.92988,40.80585 -73.9317,40.80798";
    
    
    NSString *QNSPolygonCoords = @"-73.75237,40.58796 -73.7555,40.58539 -73.78397,40.53239 -73.82616,40.52287 -73.85484,40.512 -73.87003,40.50249 -73.87678,40.50113 -73.88184,40.49569 -73.88227,40.49521 -73.88665,40.48979 -73.94375,40.52201 -73.94991,40.52554 -73.95034,40.52546 -73.95499,40.52463 -73.95727,40.52423 -74.04211,40.5093 -74.03813,40.53829 -74.03749,40.54279 -74.03667,40.54837 -74.03667,40.54838 -74.03655,40.54919 -74.03655,40.54921 -74.0363,40.5509 -74.0363,40.55095 -74.0363,40.55097 -74.03629,40.55104 -73.99709,40.55728 -73.93489,40.56665 -73.88507,40.57375 -73.86561,40.5812 -73.83428,40.60919 -73.83709,40.63215 -73.85839,40.65267 -73.86151,40.65905 -73.85768,40.66077 -73.85606,40.66551 -73.86106,40.67434 -73.86351,40.67999 -73.86762,40.68914 -73.88227,40.68904 -73.89107,40.68417 -73.90108,40.68923 -73.9052,40.69368 -73.9052,40.69614 -73.90619,40.6968 -73.90962,40.69872 -73.91481,40.70519 -73.92147,40.709 -73.92436,40.71557 -73.93148,40.72835 -73.94637,40.73726 -73.96216,40.73744 -73.96279,40.73767 -73.9627,40.7383 -73.9618,40.74139 -73.9583,40.74573 -73.95559,40.75036 -73.95275,40.75391 -73.94511,40.76309 -73.94084,40.7674 -73.93908,40.76847 -73.93751,40.76935 -73.93574,40.77055 -73.93519,40.77174 -73.93808,40.77255 -73.93842,40.77429 -73.93735,40.77558 -73.93497,40.77844 -73.93509,40.77927 -73.93186,40.77826 -73.92955,40.77687 -73.92601,40.77888 -73.92425,40.77973 -73.92112,40.78232 -73.92042,40.78287 -73.91817,40.78459 -73.91632,40.7866 -73.91341,40.78886 -73.91119,40.79291 -73.91251,40.79618 -73.89981,40.79252 -73.89287,40.79057 -73.8922,40.79038 -73.89059,40.79014 -73.88992,40.7874 -73.88713,40.78697 -73.88291,40.78633 -73.87896,40.78574 -73.87218,40.7867 -73.87125,40.78759 -73.87102,40.78883 -73.87,40.79068 -73.86306,40.79696 -73.85347,40.79958 -73.84665,40.80064 -73.8349,40.80188 -73.83076,40.80308 -73.82709,40.80308 -73.82289,40.80437 -73.81123,40.8051 -73.8047,40.80324 -73.79367,40.79996 -73.7899,40.79978 -73.7867,40.80048 -73.7817,40.80448 -73.77973,40.81129 -73.77942,40.81224 -73.74942,40.78175 -73.73936,40.77587 -73.72304,40.76612 -73.71011,40.75771 -73.70117,40.74886 -73.70394,40.73353 -73.71241,40.72698 -73.72399,40.72451 -73.72944,40.72254 -73.72709,40.71126 -73.72575,40.70199 -73.7264,40.69686 -73.7258,40.68435 -73.72646,40.67675 -73.72793,40.6701 -73.72711,40.65975 -73.72869,40.65105 -73.73986,40.64823 -73.74201,40.64257 -73.74254,40.635 -73.76695,40.62317 -73.75519,40.6103 -73.74355,40.60842 -73.73815,40.59448";
    
    
    NSString *SIPolygonCoords = @"-74.1359,40.64333 -74.13391,40.64368 -74.13002,40.64381 -74.12557,40.64402 -74.12383,40.64453 -74.12211,40.64503 -74.11651,40.64645 -74.10998,40.64801 -74.10025,40.64815 -74.09418,40.64823 -74.09375,40.64824 -74.09058,40.64977 -74.08742,40.6513 -74.08681,40.6516 -74.07726,40.65173 -74.07441,40.65177 -74.07157,40.65181 -74.05574,40.65176 -74.05663,40.62729 -74.05532,40.6251 -74.05384,40.62262 -74.05235,40.62013 -74.04996,40.61626 -74.04962,40.61571 -74.04757,40.61241 -74.04751,40.61232 -74.04382,40.60682 -74.04204,40.60409 -74.04139,40.60311 -74.03788,40.5892 -74.03455,40.57625 -74.03505,40.57285 -74.03505,40.57275 -74.03515,40.571 -74.03598,40.55656 -74.03621,40.55252 -74.03622,40.5524 -74.03628,40.55118 -74.03629,40.55104 -74.0363,40.55097 -74.0363,40.55095 -74.0363,40.5509 -74.03655,40.54921 -74.03655,40.54919 -74.03667,40.54838 -74.03667,40.54837 -74.03749,40.54279 -74.03813,40.53829 -74.04211,40.5093 -74.05759,40.50653 -74.05787,40.50648 -74.07105,40.50391 -74.07818,40.5025 -74.0829,40.50167 -74.09149,40.50014 -74.09167,40.5001 -74.0923,40.49999 -74.09448,40.4996 -74.09858,40.4989 -74.10758,40.49742 -74.12455,40.49462 -74.13113,40.49353 -74.13716,40.49254 -74.14392,40.49139 -74.14994,40.49037 -74.15207,40.49002 -74.16039,40.48869 -74.16263,40.48829 -74.16386,40.48807 -74.20034,40.48202 -74.20039,40.48201 -74.20645,40.48101 -74.21704,40.47922 -74.22815,40.4774 -74.23793,40.48124 -74.24858,40.4855 -74.24993,40.48603 -74.25429,40.48901 -74.25909,40.49721 -74.25909,40.50013 -74.25909,40.50289 -74.25829,40.5079 -74.25634,40.51207 -74.25481,40.51534 -74.24607,40.52095 -74.24641,40.52436 -74.25061,40.54185 -74.23921,40.55376 -74.23215,40.55816 -74.23169,40.55846 -74.23029,40.55833 -74.22824,40.55813 -74.22451,40.5577 -74.21682,40.55864 -74.21603,40.55946 -74.21221,40.56818 -74.21075,40.57195 -74.2083,40.57905 -74.20824,40.57933 -74.2063,40.58854 -74.20369,40.59269 -74.19952,40.59754 -74.19949,40.59829 -74.19941,40.6002 -74.20376,40.6066 -74.20254,40.61617 -74.20316,40.62249 -74.20348,40.62506 -74.20225,40.6309 -74.201,40.63211 -74.19743,40.63543 -74.19699,40.63583 -74.19602,40.63716 -74.19571,40.63758 -74.19566,40.63765 -74.19348,40.63967 -74.19049,40.64244 -74.18922,40.64356 -74.18855,40.6441 -74.1878,40.6446 -74.18678,40.64524 -74.18139,40.64647 -74.17907,40.64621 -74.17759,40.64605 -74.16171,40.64432 -74.16156,40.64431 -74.16149,40.6443 -74.16137,40.64428 -74.15953,40.64405 -74.15825,40.64389 -74.15798,40.64386 -74.1577,40.64382 -74.15643,40.64367 -74.14938,40.64285 -74.14325,40.64215 -74.14208,40.64225 -74.1419,40.64228";
    
    
    self.BKPolygon = [self polygonWithLocations:[self polygonCoords:BKPolygonCoords]];
    self.MANPolygon1 = [self polygonWithLocations:[self polygonCoords:MANPolygonCoords1]];
    self.MANPolygon2 = [self polygonWithLocations:[self polygonCoords:MANPolygonCoords2]];
    self.MANPolygon3 = [self polygonWithLocations:[self polygonCoords:MANPolygonCoords3]];
    self.BRXPolygon = [self polygonWithLocations:[self polygonCoords:BRXPolygonCoords]];
    self.QNSPolygon = [self polygonWithLocations:[self polygonCoords:QNSPolygonCoords]];
    self.SIPolygon = [self polygonWithLocations:[self polygonCoords:SIPolygonCoords]];
    
    self.BKPolygon.name = @"Brooklyn";
    self.MANPolygon1.name = @"Manhattan";
    self.MANPolygon2.name = @"Manhattan";
    self.MANPolygon3.name = @"Manhattan";
    self.BRXPolygon.name = @"Bronx";
    self.QNSPolygon.name = @"Queens";
    self.SIPolygon.name = @"Staten Island";
    
}

- (NSMutableArray *) polygonCoords: (NSString *)polygonCoords {
    
    NSMutableArray *polygonCoordsArray = [[NSMutableArray alloc] init];
    
    NSArray *lngLatCoords = [polygonCoords componentsSeparatedByString:@" "];
    
    for (NSString *lngLat in lngLatCoords) {
        
        NSArray *latLngComponents = [lngLat componentsSeparatedByString:@","];
        NSString *latStr = latLngComponents[1];
        NSString *lngStr = latLngComponents[0];
        double lat = latStr.doubleValue;
        double lng = lngStr.doubleValue;
        
        CLLocation *polygonCoord = [[CLLocation alloc] initWithLatitude:lat longitude:lng];
        
        [polygonCoordsArray addObject:polygonCoord];
        
    }
    
    return polygonCoordsArray;
}


- (BoroughPolygon *)polygonWithLocations: (NSArray <CLLocation *> *)locations {
    
    CLLocationCoordinate2D coords[locations.count];
    
    for (int i = 0; i < locations.count; i++) {
        CLLocation *location = [locations objectAtIndex:i];
        coords[i] = location.coordinate;
    }
    
    return [BoroughPolygon polygonWithCoordinates:coords count:locations.count];
}



@end