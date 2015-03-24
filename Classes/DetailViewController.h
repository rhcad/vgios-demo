// DetailViewController.h
// Copyright (c) 2012-2015, https://github.com/rhcad/vgios-demo, BSD License

#import <UIKit/UIKit.h>
#import "ARCMacro.h"

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (nonatomic, STRONG) UIViewController *content;

- (void)clearCachedData;
- (void)editDetailPage:(id)sender;
- (void)saveDetailPage:(id)sender;

@end
