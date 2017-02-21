//
//  RecipeDetailViewController.m
//  RecipeeBook
//
//  Created by apple on 02/02/17.
//  Copyright © 2017 nitin. All rights reserved.
//

#import "RecipeDetailViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController
@synthesize recipePhoto;
@synthesize prepTimeLabel;
@synthesize ingredientTextView;
@synthesize recipe;
@synthesize RecipeDetailViewControllerScroll;
@synthesize instructionsLabel;

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
    
    
    [self.ingredientTextView.layer setBorderWidth:3.1];
    [self.ingredientTextView.layer setBorderColor:[[UIColor grayColor] CGColor]];
    
    [self.instructionsTextView.layer setBorderWidth:3.1];
    [self.instructionsTextView.layer setBorderColor:[[UIColor grayColor] CGColor]];
    
    
    NSMutableString *instructionText = [NSMutableString string];
    for (NSString* instruction in recipe.instructions){[instructionText appendFormat:@"%@\n", instruction];
    
    }
   
    
    
   // Ingredients TextView Height calculation (start)
    
    [self.ingredientTextView setText:ingredientText];
    [self.instructionsTextView setText:instructionText];

    CGSize ingredientTextViewSize = [self.ingredientTextView sizeThatFits:CGSizeMake(self.ingredientTextView.frame.size.width, MAXFLOAT)];
    self.ingredientTextView.frame = CGRectMake(ingredientTextView.frame.origin.x, ingredientTextView.frame.origin.y,ingredientTextViewSize.width,ingredientTextViewSize.height);
    
    CGFloat nextY = ingredientTextView.frame.origin.y + ingredientTextViewSize.height+10;

    //end
    
    
    
    //Instruction TextView Height calculation (start)
    
    [instructionsLabel sizeToFit];
    self.instructionsLabel.frame = CGRectMake(instructionsLabel.frame.origin.x, nextY, instructionsLabel.frame.origin.y, instructionsLabel.frame.size.height);

    nextY += 10+ instructionsLabel.frame.size.height;
    
    CGSize instructionsTextViewSize = [self.instructionsTextView sizeThatFits:CGSizeMake(self.instructionsTextView.frame.size.width, MAXFLOAT)];
    self.instructionsTextView.frame = CGRectMake(_instructionsTextView.frame.origin.x, nextY, instructionsTextViewSize.width, instructionsTextViewSize.height) ;
    nextY += instructionsTextViewSize.height;
    
    RecipeDetailViewControllerScroll.contentSize = CGSizeMake(_instructionsTextView.frame.size.width, nextY+ 65);
    
        //end
    
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    if (self.prepTimeLabel) {
        
    }
    if (self.recipePhoto) {
        
    }

}



@end
