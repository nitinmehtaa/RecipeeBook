//
//  Recipe.h
//  RecipeeBook
//
//  Created by apple on 04/02/17.
//  Copyright © 2017 nitin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *prepTime;
@property(nonatomic,strong) NSString *imageFile;
@property(nonatomic,strong) NSArray *ingredients;
@property(nonatomic,strong) NSArray *instructions;


@end
