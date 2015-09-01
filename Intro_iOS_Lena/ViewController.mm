//
//  ViewController.m
//  Intro_iOS_Lena
//
//  Created by Simon Lucey on 8/16/15.
//  Copyright (c) 2015 CMU_16432. All rights reserved.
//

#import "ViewController.h"

// Include iostream and std namespace so we can mix C++ code in here
#include <iostream>
using namespace std;

@interface ViewController () {
    // Setup the view
    UIImageView *OpenCV_View_;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 1. Setup the your OpenCV view, so it takes up the entire App screen......
    OpenCV_View_ = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height)];
    
    // 2. Important: add OpenCV_View as a subview
    [self.view addSubview:OpenCV_View_];
    
    // 3.Read in the image (of the famous Lena)
    UIImage *image = [UIImage imageNamed:@"lena.png"];
    if(image != nil) OpenCV_View_.image = image; // Display the image if it is there....
    else cout << "Cannot read in the file" << endl;
    
    // 4. (Optional) Read in numbers from a text file (using C++ syntax)
    /*
     const char* filename = "lena.png";
     //NSString *numbersPath = [[NSBundle mainBundle] pathForResource:@"lena" ofType:@"png"];
     //const char* filename = [numbersPath UTF8String];
     
     ifstream inFile(filename);
     if(inFile.is_open()) {
     unsigned char n = 0;
     while(!inFile.eof()) {
     inFile >> n;
     cout << n << " ";
     }
     cout << endl;
     }
     else cout << "Cannot read in lena.png file" << endl;
     */
    
    // ALL DONE :)
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
