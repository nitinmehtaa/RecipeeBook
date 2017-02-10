//
//  RecipeDetailViewController.m
//  RecipeeBook
//
//  Created by apple on 02/02/17.
//  Copyright © 2017 nitin. All rights reserved.
//

#import "RecipeDetailViewController.h"

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController
@synthesize recipePhoto;
@synthesize prepTimeLabel;
@synthesize ingredientTextView;
@synthesize recipe;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[self view] setBackgroundColor:[UIColor whiteColor]];
    self.title = recipe.name;
    [self.prepTimeLabel setText:recipe.prepTime];
    [self.recipePhoto setImage:[UIImage imageNamed:recipe.imageFile]];
    NSMutableString *ingredientText = [NSMutableString string];
    for (NSString* ingredient in recipe.ingredients) {
        [ingredientText appendFormat:@"%@\n", ingredient];
    }
    [self.ingredientTextView setText:ingredientText];
    
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    if (self.prepTimeLabel) {
        
    }
    if (self.recipePhoto) {
        
    }

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
