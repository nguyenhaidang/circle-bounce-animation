//
//  ViewController.m
//  testdistoration
//
//  Created by dang nguyen on 6/8/16.
//  Copyright © 2016 dang nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *widthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leading1;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leading2;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)animation:(id)sender {
    [self.view layoutIfNeeded];
    [self.imageView setNeedsUpdateConstraints];
    self.widthConstraint.constant = 150;
    [UIView animateWithDuration:0.5 animations:^{
        [self.view layoutIfNeeded];
        _leading1.constant = 150;
        _leading2.constant = 150+53;
        self.widthConstraint.constant = 53;
        [UIView animateWithDuration:0.7 delay:0.4 options:UIViewAnimationOptionCurveEaseIn animations:^{
            [self.view layoutIfNeeded];
            
        } completion:^(BOOL finished) {
         
        }];
    
    }];
    
}

@end
