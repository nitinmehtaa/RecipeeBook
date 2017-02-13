//
//  CategoriesCollectionViewCell.h
//  RecipeeBook
//
//  Created by apple on 07/02/17.
//  Copyright © 2017 nitin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoriesCollectionViewCell : UICollectionViewCell

@property(nonatomic,strong) NSArray *categoryLabelArray;
@property (nonatomic, weak) IBOutlet UILabel *categoryLabel;



@end
