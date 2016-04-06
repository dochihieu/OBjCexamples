//
//  DemoSelector.m
//  OBjCEx..
//
//  Created by chihieu on 4/6/16.
//  Copyright © 2016 chihieu. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self performSelector:@selector(hideSlider) withObject:nil afterDelay:2]; // sau 2s ke tu khi chay ham! ham nay lam cho slider bien mat trong 2
     
    
}
- (IBAction)onCrunchData:(id)sender {
    //[self performSelectorInBackground:@selector(doCrunchData) withObject:nil];
    [self performSelectorOnMainThread:@selector(doCrunchData) withObject:nil waitUntilDone:true];
    //[self performSelectorOnMainThread:@selector(doCrunchData) withObject:nil waitUntilDone:false]; //T or F ko co tac dung gi ka
    
}

-(void) doCrunchData {
    [NSThread sleepForTimeInterval:2];//2 giay (blocking 2s)
}

-(void) hideSlider {
    self.slider.hidden = true;
}


@end
