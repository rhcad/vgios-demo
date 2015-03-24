// BasicAnimationView.h
// Copyright (c) 2012-2015, https://github.com/rhcad/vgios-demo, BSD License

#import <UIKit/UIKit.h>

@class CAShapeLayer;

@interface BasicAnimationView : UIView {
    CAShapeLayer    *shapeLayer;
    int             step;
}

@end
