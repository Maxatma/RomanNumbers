//
//  ViewController.m
//  RomanNumbers
//
//  Created by Alexander Zaporozhchenko on 6/27/16.
//  Copyright © 2016 Alexander Zaporozhchenko. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveCocoa.h"
#import "NSNumber+RNRoman.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *arabicTextField;
@property (weak, nonatomic) IBOutlet UILabel     *romanLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    RAC(_romanLabel, text) = [_arabicTextField.rac_textSignal map:^id(NSString *value) {
        NSNumber *number = @(value.integerValue);
        return [number romanString];
    }];
}

@end
