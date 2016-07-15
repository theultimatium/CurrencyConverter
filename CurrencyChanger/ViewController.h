//
//  ViewController.h
//  CurrencyChanger
//
//  Created by Julius Nedzinskas on 7/12/16.
//  Copyright © 2016 Julius Nedzinskas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *home;
@property (weak, nonatomic) IBOutlet UITextField *foreign;
- (IBAction)exchangeButton:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlHome;

@end

