//
//  LoginViewController.m
//  FreesoundSampleApp
//
//  Created by Alexandros Katsaprakakis on 25/04/15.
//  Copyright (c) 2015 Frederic Font Corbera. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController () <UITextFieldDelegate>

@property (strong, nonatomic) NSString *userString;
@property (strong, nonatomic) NSString *passString;

@property (weak, nonatomic) IBOutlet UITextField *passTextField;
@property (weak, nonatomic) IBOutlet UITextField *userTextField;

- (IBAction)loginButtonTapped:(id)sender;
- (IBAction)textFieldDidChange:(UITextField *)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


# pragma mark - UITextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

- (IBAction)loginButtonTapped:(id)sender {
    NSLog(@"Attempt login with : %@ - %@", self.userString, self.passString);
}

- (IBAction)textFieldDidChange:(UITextField *)sender {
    if ([sender isEqual:self.userTextField]) {
        self.userString = sender.text;
    }else if ([sender isEqual:self.passTextField]) {
        self.passString = sender.text;
    }
}
@end
