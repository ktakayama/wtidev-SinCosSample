//
//  AnimationWave.h
//  SinCos
//
//  Created by Kyosuke Takayama on 10/11/22.
//  Copyright 2010 aill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AnimationLoop.h"

@interface AnimationWave : AnimationLoop {
   int radius;
}

@property int radius;

@end
