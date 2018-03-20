//
//  ObjCColorSliderViewController.m
//  Color Sliders
//
//  Created by CSSE Department on 3/20/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "ObjCColorSliderViewController.h"

@implementation ObjCColorSliderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.redSlider.value = 0.5;
    self.greenSlider.value = 0.0;
    self.blueSlider.value = 0.0;
    self.alphaSlider.value = 1.0;
    [self updateView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderChanged:(id)sender {
    //NSLog(@"Slider changed");
    [self updateView];
}

- (void) updateView {
    self.redLabel.text = [NSString stringWithFormat:@"%.2f", self.redSlider.value];
    self.greenLabel.text = [NSString stringWithFormat:@"%.2f", self.greenSlider.value];
    self.blueLabel.text = [NSString stringWithFormat:@"%.2f", self.redSlider.value];
    self.alphaLabel.text = [NSString stringWithFormat:@"%.2f", self.alphaSlider.value];
    
    //TODO: update the self.colorView background color
    self.colorView.backgroundColor = [[UIColor alloc] initWithRed:self.redSlider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:self.alphaSlider.value];
    
    
    
}
@end
