//
//  RecipeDetailViewController.h
//  RecipeeBook
//
//  Created by apple on 02/02/17.
//  Copyright © 2017 nitin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"

@interface RecipeDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *recipePhoto;
@property (weak, nonatomic) IBOutlet UITextView *ingredientTextView;
@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;

@property (nonatomic,strong) Recipe *recipe;


@end
