//
//  CategoriesCollectionViewController.m
//  RecipeeBook
//
//  Created by apple on 07/02/17.
//  Copyright © 2017 nitin. All rights reserved.
//

#import "CategoriesCollectionViewController.h"
#import "ViewController.h"
#import "CategoriesCollectionViewCell.h"


@interface CategoriesCollectionViewController(){
    NSArray *categoriesPhotos;
    NSArray *categories;

}

@end

@implementation CategoriesCollectionViewController


static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
   categories = [NSArray arrayWithObjects:@"appetizer.jpg", @"breakfast.jpg",@"maincourse.jpg",@"dessert.jpg",@"beverages.jpg", nil];
    [self setNeedsStatusBarAppearanceUpdate];
    [self.navigationController.navigationBar setBarTintColor:[UIColor redColor]];
    categoriesPhotos = [NSArray arrayWithObjects:@"appetizer.jpg", @"breakfast.jpg",@"maincourse.jpg",@"dessert.jpg",@"beverages.jpg", nil];
    self.navigationController.navigationBar.translucent = NO;
    self.automaticallyAdjustsScrollViewInsets = YES;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return categoriesPhotos.count;
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"recipecell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    UIImageView *categoryImageView = (UIImageView *)[cell viewWithTag:100];
    categoryImageView.image = [UIImage imageNamed:[categoriesPhotos objectAtIndex:indexPath.row]];
    [self.view addSubview:categoryImageView];
    cell.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:[categoriesPhotos objectAtIndex:indexPath.row]]];
    cell.layer.cornerRadius = 7;
    self.collectionView.contentInset = UIEdgeInsetsZero;
    self.collectionView.scrollIndicatorInsets = UIEdgeInsetsZero;
    return cell;
    
}

//Spacing between cell <start>

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 1.2;
}

//Spacing between cell <end>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath

{
    [collectionView selectItemAtIndexPath:indexPath animated:YES scrollPosition:UICollectionViewScrollPositionNone];
    NSLog(@"row selecter %d", (int)indexPath.row);
    UIStoryboard * main = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ViewController *listPage = [main instantiateViewControllerWithIdentifier:@"ViewController"];
    [listPage setCategories:[categories objectAtIndex:indexPath.row]];
    [self.navigationController pushViewController:listPage animated:YES];
}


@end
