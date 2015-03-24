// MasterViewController.h
// Copyright (c) 2012-2015, https://github.com/rhcad/vgios-demo, BSD License

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (nonatomic, strong) DetailViewController *detailViewController;

- (void)clearCachedData;

@end
