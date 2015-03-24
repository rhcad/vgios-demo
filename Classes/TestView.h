// TestView.h
// Copyright (c) 2012-2015, https://github.com/rhcad/vgios-demo, BSD License

#import <UIKit/UIKit.h>

@protocol TestView <NSObject>
@optional

- (void)save;
- (void)edit;
- (BOOL)exportPNG:(NSString *)filename;

@end
