//
//  ViewController.h
//  ArchiveDemo
//
//  Created by DingDing on 16/1/153.
//  Copyright © 2016年 奶豆. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *titleField;

@property (nonatomic, weak) IBOutlet UITextView *contentTextView;

- (IBAction)ArchiveMethod:(id)sender;

- (IBAction)UnArchiveMethod:(id)sender;

@end

