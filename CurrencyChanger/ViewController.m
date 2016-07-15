//
//  ViewController.m
//  CurrencyChanger
//
//  Created by Julius Nedzinskas on 7/12/16.
//  Copyright © 2016 Julius Nedzinskas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize segmentedControl;
@synthesize segmentedControlHome;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
@interface ExchangeRate ; NSObject <NSCoding>
@property (strong, nonatomic) Currency* home;
@property (strong, nonatomic) Currency* foreign;
@property (assign, nonatomic) float rate;
self.rate=[self updateRate];
 -(bool) updateRate;
 -(NSString*) exchangeToHome: (NSNumber*) value;
 -(NSString*) exchangeToForeign: (NSNumber*) value;
 -(void) reverse;
 -(NSString*) name;
 -(NSString*) description;
 -(ExchangeRate*) initWithName: (Currency*) aHome 
                        foreign (Currency*) aForeign;
@property (strong, nonatomic) NSDate* expiresOn;
 
@interface Currency : NSObject <NSCoding>
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* alphaCode;
@property (strong, nonatomic) NSString* symbol;
@property (strong, nonatomic) NSNumberFormatter* formatter;
-(Currency*) initWithName:(NSString*) aName
                alphaCode:(NSString*) aCode
                   symbol:(NSString*) aSymbol;
            decimalPlaces:(NSNumber*) places;
-(NSString*) format (NSNumber*) quantity;
 
[NSString stringWithFormat: @"https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where
%20pair%20in%20(%22%@%@%22)&format=json&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=",
exchangeRate.home.aplhaCode, exchangeRate.foreign.alphaCode];
*/

- (IBAction)exchangeButton:(id)sender {
    
    float currencyRate;
    
    if (segmentedControlHome.selectedSegmentIndex == 0) {
        if (segmentedControl.selectedSegmentIndex == 0) {
            currencyRate = 1;
        } else if(segmentedControl.selectedSegmentIndex == 1) {
            currencyRate = 0.77;
        } else if(segmentedControl.selectedSegmentIndex == 2) {
            currencyRate = 1.08;
        }
    } else if(segmentedControlHome.selectedSegmentIndex == 1) {
        if (segmentedControl.selectedSegmentIndex == 0) {
            currencyRate = 1.29;
        } else if(segmentedControl.selectedSegmentIndex == 1) {
            currencyRate = 1;
        } else if(segmentedControl.selectedSegmentIndex == 2) {
            currencyRate = 1.4;
        }
    } else if(segmentedControlHome.selectedSegmentIndex == 2) {
        if (segmentedControl.selectedSegmentIndex == 0) {
            currencyRate = 0.92;
        } else if(segmentedControl.selectedSegmentIndex == 1) {
            currencyRate = 0.72;
        } else if(segmentedControl.selectedSegmentIndex == 2) {
            currencyRate = 1;
        }
    }
    
    NSLog(@"Convert");
    
    float home = [[self.home text] floatValue];
    
    NSLog(@"home: %f", home);
    
    float converted = home*currencyRate;
    NSString* foreignCurrency = [NSString stringWithFormat:@"%f", converted];
    self.foreign.text = foreignCurrency;

}

@end
