//
//  ViewController.m
//  RecipeeBook
//
//  Created by apple on 02/02/17.
//  Copyright © 2017 nitin. All rights reserved.
//

#import "ViewController.h"
#import "RecipeDetailViewController.h"
#import "Recipe.h"
#import "CategoriesCollectionViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *categoryName;
@end

@implementation ViewController
NSArray *recipes;

@synthesize tableView = _tableView;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Mac and Cheese";
    recipe1.prepTime = @"20 minutes";
    recipe1.imageFile = @"macandcheese.jpg";
    recipe1.ingredients = [NSArray arrayWithObjects:@"\u2022 250 grams Macaroni", @"\u2022 ¼ cup Butter", @"\u2022 ¼ cup Flour/Maida", @"\u2022 ½ teaspoon salt", @"\u2022 Pepper powder to taste", @"\u2022 2 cups Milk", @"\u2022 2 cups Shredded Cheddar Cheese", nil];
    recipe1.instructions = [NSArray arrayWithObjects:
                            @"\u2022 Pour water and salt in a big pot. Bring it to a boil.",
                            @"\u2022 Add macaroni and keep stirring until its cooked. Be careful about not over-cooking (approx 7-8 minutes).",
                            @"\u2022 Melt butter in a saucepan over medium heat; stir in flour, salt, and pepper to make a smooth mixture.",
                            @"\u2022 Add milk into mixture, stir it until mixture is smooth and bubbling, about 5 minutes.",
                            @"\u2022 Next, add cheddar cheese to this and stir until cheese is melted.",
                            @"\u2022 Now, add the boiled macaroni and coat it well with the cheese-milk mixture.",
                            nil];
    

    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Corn Pizza With Sauce";
    recipe2.prepTime = @"10-15 minutes";
    recipe2.imageFile = @"cornpizzawithsauce.jpg";
    recipe2.ingredients = [NSArray arrayWithObjects:
                           @"\u2022 2 Pizza base",
                           @"\u2022 ½ cup Sweet Corn, boiled",
                           @"\u2022 3 ½ tablespoons Oil",
                           @"\u2022 2 tablespoons Tomato Puree",
                           @"\u2022 Salt to taste",
                           @"\u2022 2 medium Green Capsicum, chopped lengthwise",
                           @"\u2022 1 medium Tomato, chopped",
                           @"\u2022 ½ teaspoon White Pepper Powder",
                           @"\u2022 2 tablespoons Butter",
                           @"\u2022 Pizza Sauce",
                           @"\u2022 ½ cup Mozzarella Cheese, grated",nil];
    
    
    recipe2.instructions=[NSArray arrayWithObjects:@"\u2022 Add 2 tablespoons oil in a non-stick pan.",@"\u2022 Pour the tomato puree and cook for 2-3 minutes. Drizzle salt and mix well. Put off the flame and keep it aside.",@"\u2022 In another non-stick pan, add the remaining oil and saute the capsicum until it becomes soft.",@"\u2022 Add tomatoes, sweet corn, salt and white pepper powder. Mix well and cook for a minute.",@"\u2022 Remove from stove and set aside.",@"Heat a non-stick pan. Place a pizza base on it, flip it upside down until it becomes golden.",@"\u2022 Flip it, and apply butter along with cooked tomato puree, pizza sauce, capsicum-corn mixture and cover with mozzarella cheese.",@"\u2022 Heat it properly for 3-4 times before serving it.",@"\u2022 Cut into slices and relish with chili or sweet sauce.",nil];
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Mixed Sprouts Corn Chaat";
    recipe3.prepTime = @"20 minutes";
    recipe3.imageFile = @"mixedsproutscornchaat.jpg";
    recipe3.ingredients = [NSArray arrayWithObjects:
                           @"\u2022 15g Mixed Sprouts, boiled",
                           @"\u2022 15g Corn, boiled",
                           @"\u2022 1 Tomato, finely chopped",
                           @"\u2022 1 Onion, finely chopped",
                           @"\u2022 1 tablespoon Coriander Chutney",
                           @"\u2022 ½ teaspoon Cumin Powder",
                           @"\u2022 ½ teaspoon Red Chilli/Paprika Powder",
                           @"\u2022 Salt to taste",
                           @"\u2022 A handful Pomegranate Seeds, to garnish",
                           @"\u2022 A handful freshly chopped Coriander leaves, to garnish",
                           @"\u2022 Half Lemon", nil];
    recipe3.instructions = [NSArray arrayWithObjects:
                            @"\u2022 Wash and soak the sprouts overnight. Next day, pressure cook it for 10-15 minutes. Strain well.",@"\u2022 Take a large bowl, combine all the ingredients together.",@"\u2022 Finish it up by squeezing a lemon and sprinkling chopped coriander leaves.",nil];
    
    
    
    
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Tomato Sev Puri";
    recipe4.prepTime = @"5 minutes";
    recipe4.imageFile = @"tomatosevpuri.jpg";
    recipe4.ingredients = [NSArray arrayWithObjects:
                           @"\u2022 2 Onions, finely chopped",
                           @"\u2022 1 Carrot, grated",
                           @"\u2022 3-4 Tomatoes",
                           @"\u2022 1 Capsicum, finely chopped",
                           @"\u2022 2-3 Green Chillies, finely chopped",
                           @"\u2022 7-8 pieces Sev Puri",
                           @"\u2022 1 teaspoon Chat Masala",
                           @"\u2022 1 teaspoon Cumin Seeds Powder (cumin seeds are roasted and then grounded)",
                           @"\u2022 1 teaspoon Red Chilli Powder",
                           @"\u2022 ½ teaspoon Amchur Powder",
                           @"\u2022 1 teaspoon Lemon Juice",
                           @"\u2022 2 teaspoons Sev",
                           @"\u2022 Salt as per taste",
                           @"\u2022 2 teaspoons Coriander Leaves, finely chopped", nil];
    recipe4.instructions = [NSArray arrayWithObjects:
                            @"\u2022 In a bowl, take chopped onions, grated carrots, chopped green chillies and capsicum. Mix all these ingredients together.",
                            @"\u2022 Sprinkle salt, red chilli powder, chat masala, cumin seed powder and amchur powder in the carrots mixture.",
                            @"\u2022 Add lemon juice to mixture.",
                            @"\u2022 Now, put three to four sev puri on a plate.",
                            @"\u2022 Top the sev puri with mixture immediately.",nil];
    
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Aloo Moong Dal Pakora";
    recipe5.prepTime = @"10 minutes";
    recipe5.imageFile = @"aloomoongdalpakora.jpg";
    recipe5.ingredients = [NSArray arrayWithObjects:
                           
                           @"\u2022 1 cup Moong Dal (green gram)",
                           @"\u2022 2 Potatoes, boiled",
                           @"\u2022 1 Onion, finely chopped",
                           @"\u2022 2 Green Chillies, chopped",
                           @"\u2022 1 tablespoon Ginger, grated",
                           @"\u2022 1 teaspoon Coriander Leaves, finely chopped",
                           @"\u2022 1 teaspoon Cumin Seeds",
                           @"\u2022 A pinch of Asafoetida/Hing Powder",
                           @"\u2022 Baking Soda, a pinch",
                           @"\u2022 Salt as per taste",
                           @"\u2022 Oil for frying",nil];
    
    recipe5.instructions = [NSArray arrayWithObjects:
                            @"\u2022 Soak Moong dal for 5-6 hours or overnight. Drain the water and grind it with green chillies and asafoetida into a coarse paste. Just ensure the batter is thick.",
                            @"\u2022 Now take another bowl and mash the boiled potatoes. Combine all the other ingredients and mix well.",
                            @"\u2022 Take the prepared mixture, using your fingers, drop small amounts of it in hot oil and deep-fry the pakodas on low flame. Fry until the pakodas turn crisp and golden brown.",
                            @"\u2022 Drain the excess oil of pakodas on paper towels or absorbent paper.",nil];

                            
    Recipe *recipe6 = [Recipe new];
    recipe6.name = @"Khoya Stuffed Matar ki Tikki";
    recipe6.prepTime = @"30 minutes";
    recipe6.imageFile = @"khoyastuffedmatarkitikki.jpg";
    recipe6.ingredients = [NSArray arrayWithObjects:
                           @"\u25CF For the tikki:",
                           @"\u2022 1 ½ teaspoon Desi Ghee",
                           @"\u2022 1 ½ teaspoon Jeera",
                           @"\u2022 1 pinch Hing mixed with water",
                           @"\u2022 3 teaspoons Green Chillies, chopped",
                           @"\u2022 2 tablespoons Ginger, chopped",
                           @"\u2022 1 bowl de-shelled Peas",
                           @"\u2022 ¼ teaspoon Turmeric Powder",
                           @"\u2022 1 teaspoon Coriander Powder",
                           @"\u2022 2-3 Tablespoons Besan (Gram Flour)",
                           @"\u2022 Salt as per taste",
                           @"\u25CF For the filling:",
                           @"\u2022 60-70 gms Khoya",
                           @"\u2022 2 teaspoons Green Chillies, chopped",
                           @"\u2022 3 teaspoons Pista (heaped), chopped",
                           @"\u2022 1 teaspoon Coriander leaves, chopped",
                           @"\u2022 2-3 Dates, chopped",
                           @"\u2022 Oil to pan grill/shallow fry the tikkis",nil];
    recipe6.instructions = [NSArray arrayWithObjects:
                            @"\u2022 In a pan add ghee, jeera, hing water, green chillies and ginger. Saute well for 30 seconds.",
                            @"\u2022 Now add green peas, turmeric powder, coriander powder and salt. Mix well and saute till the peas turn crispy and a little brown in colour.",
                            @"\u2022 Once cooked, combine all the ingredients and blend to a coarse mixture. Add besan to the mixture, to make it a little stiff.",
                            @"\u2022 In another bowl, crumble khoya with your fingers and add chillies, pista, coriander leaves and dates. Mix well.",
                            @"\u2022 Take a generous amount of pea mixture in your hand and stuff it with the khoya filling. Now shape it into a round tikki.",
                            @"\u2022 Heat oil in a non-stick pan.",
                            @"\u2022 Shallow fry these tikkis in a pan, till they turn golden-brown in colour.",nil];
    
 
    Recipe *recipe7 = [Recipe new];
    recipe7.name = @"Stuffed Bread Dahi Vada";
    recipe7.prepTime = @"10 minutes";
    recipe7.imageFile = @"stuffedbreaddahivada.jpg";
    recipe7.ingredients = [NSArray arrayWithObjects:
                           @"\u2022 10 Bread Slices",
                           @"\u2022 1 cup Yogurt",
                           @"\u2022 1 teaspoon Sugar",
                           @"\u2022 3 teaspoons Green chutney",
                           @"\u2022 3 teaspoons Sweet Chutney/Saunth",
                           @"\u2022 5 Cashew Nuts/Kaju",
                           @"\u2022 1 teaspoon Raisins/Kishmish",
                           @"\u2022 1 inch Ginger piece",
                           @"\u2022 2 teaspoons Fresh Coriander Leaves",
                           @"\u2022 3/4 tsp Chili Powder",
                           @"\u2022 3/4 tsp Roasted Cumin Powder/Bhuna Jeera",
                           @"\u2022 1/2 tsp Black Salt",nil];
    recipe7.instructions = [NSArray arrayWithObjects:
                            @"\u2022 Wash and soak cashew and raisins in 1/2 cup water and keep aside.",
                            @"\u2022 Take chilled yogurt in a bowl and whisk well.",
                            @"\u2022 Add 1/4 cup water, salt and sugar in the curd and mix well.",
                            @"\u2022 Now chop cashews and ginger into small pieces.",
                            @"\u2022 Now cut the bread into roundels (circles) with a sharp bowl, lid or any mould.",
                            @"\u2022 (Optional) Lightly toast the bread slices on a hot griddle.",
                            @"\u2022 Take a bread roundel and dip it in the curd and arrange in the serving dish.",
                            @"\u2022 Now sprinkle some chopped cashews, raisins, ginger and chopped coriander over it.",
                            @"\u2022 Cover it with another plain bread slice.",
                            @"\u2022 Drizzle yogurt over it to cover from all the sides.",
                            @"\u2022 Now drizzle sweet chutney and green chutney and sprinkle little chili powder, black salt and cumin powder.",nil];
 
    
    Recipe *recipe8 = [Recipe new];
    recipe8.name = @"Carrot and Moong Dal Salad";
    recipe8.prepTime = @"20 minutes";
    recipe8.imageFile = @"carrotandmoongdalsalad.jpg";
    recipe8.ingredients = [NSArray arrayWithObjects:
                           
                           @"\u2022 1/4 cup split Moong Dal (washed)",
                           @"\u2022 2 cups shredded Carrots (gajar)",
                           @"\u2022 2 teaspoons Oil",
                           @"\u2022 1/2 teaspoon Cumin Seeds (jeera)",
                           @"\u2022 ¼ cup shredded Coconut (gola)",
                           @"\u2022 2 tablespoons Coriander leaves chopped",
                           @"\u2022 2 tablespoons Lemon Juice",
                           @"\u2022 1 tablespoon Ginger finely shredded",
                           @"\u2022 1 teaspoon Salt",
                           @"\u2022 1/4 teaspoon Black Pepper",
                           @"\u2022 1/2 teaspoon Sugar",nil];
    recipe8.instructions = [NSArray arrayWithObjects:
                            
                            @"\u2022 Wash moong dal properly 4-5 times before soaking it for 2-3 hours. After soaking, moong dal will increase in volume. Drain the water.",
                            @"\u2022 In a small bowl or mason jar, prepare a dressing by adding lemon juice, ginger, salt, black pepper and sugar. Set aside.",
                            @"\u2022 In a deep pan, heat oil and add cumin seeds to splutter. Add the moong dal once seeds start to crack.",
                            @"\u2022 Toss for 2-3 minutes. Avoid overcooking.",
                            @"\u2022 Put off the flame and let it cool down.",
                            @"\u2022 Add carrots, coriander leaves and coconut. Mix it properly.",
                            @"\u2022 Add dressing to the carrot-moong mix. Mix well.",nil];
                            

    
    Recipe *recipe9 = [Recipe new];
    recipe9.name = @"Masala Paruppu Vada";
    recipe9.prepTime = @"20 minutes";
    recipe9.imageFile = @"masalaparuppuvada.jpg";
    recipe9.ingredients = [NSArray arrayWithObjects:
                           @"\u2022 1 cup Chana Dal",
                           @"\u2022 1 Onion, finely chopped",
                           @"\u2022 2 Green Chillies, finely chopped",
                           @"\u2022 1 teaspoon Fennel Seeds",
                           @"\u2022 ½ teaspoon Black Pepper",
                           @"\u2022 1 cup – Oil (frying)",
                           @"\u2022 4-5 Curry Leaves",
                           @"\u2022 1 tablespoon Coriander Leaves",
                           @"\u2022 Salt as per taste",nil];
                           
    
    recipe9.instructions = [NSArray arrayWithObjects:
                            @"\u2022 Soak chana dal in water for 4-5 hours",
                            @"\u2022 Strain the dal. Take 1 tablespoon of the dal and keep it aside. Grind the remaining dal into the paste. Add more water if required to get the right consistency.",
                            @"\u2022 Grind the dry ingredients namely fennel seeds, green chillies, curry leaves, onion, black pepper and salt. Add the remaining soaked chana dal in it. Mix with a spoon.",
                            @"\u2022 Add oil to a pan to deep fry. Slightly wet your palms, take a small amount of vada paste in your palm and flatten it by pressing it lightly. Once the oil is ready, gently dip the vada and deep-fry until it turns golden brown and crispy.",
                            @"\u2022 Strain the excess oil, once it is done.",nil];
    
                            
                            
    Recipe *recipe10 = [Recipe new];
    recipe10.name = @"Avocado Pasta";
    recipe10.prepTime = @"15 minutes";
    recipe10.imageFile = @"avocadopasta.jpg";
    recipe10.ingredients = [NSArray arrayWithObjects:
                            @"\u2022 12 ounces Spaghetti",
                            @"\u2022 2 ripe Avocados, halved, seeded and peeled",
                            @"\u2022 1/2 cup fresh Basil leaves",
                            @"\u2022 2 cloves Garlic",
                            @"\u2022 2 tablespoons freshly squeezed Lemon juice",
                            @"\u2022 1/3 cup Olive oil",
                            @"\u2022 1 cup Cherry tomatoes, halved",
                            @"\u2022 1/2 cup canned Corn kernels, drained and rinsed",
                            @"\u2022 Kosher salt and freshly ground Black pepper, to taste",nil];
    
    recipe10.instructions = [NSArray arrayWithObjects:
                            @"\u2022 Boil water in a large pot and add salt to it. Add pasta, cook the pasta according to the instructions on the package and drain well.",
                            @"\u2022 Combine avocados, basil, lemon juice, garlic and salt in a food processor and make a fine paste. Add salt and pepper, to the paste for good taste.",
                            @"\u2022 Simultaneously, add the olive oil until it's mixed completely and keep it aside.",
                            @"\u2022 Take a large bowl, mix the boiled pasta, avocado sauce, cherry tomatoes and corn. Toss well without mashing the ingredients.",nil];
    
    
    Recipe *recipe11 = [Recipe new];
    recipe11.name = @"Beetroot Kebab";
    recipe11.prepTime = @"25 minutes";
    recipe11.imageFile = @"beetrootkebab.jpg";
    recipe11.ingredients = [NSArray arrayWithObjects:
                            @"\u2022 1 cup Beetroot, grated",
                            @"\u2022 1/2 packet Tofu",
                            @"\u2022 1/2 tablespoon Garlic paste",
                            @"\u2022 1 tablespoon Amchoor powder",
                            @"\u2022 1 tablespoon Anardana, roasted and crushed",
                            @"\u2022 Chaat masala, a pinch",
                            @"\u2022 Rock salt, to taste",
                            @"\u2022 1/4 cup chopped Cashew nuts, to stuff",
                            @"\u2022 1/2 cup crushed Oats, to coat",
                            @"\u2022 Oil, to pan fry",nil];
    recipe11.instructions = [NSArray arrayWithObjects:
                             @"\u2022 Take a bowl and add grated beetroot, tofu, garlic, amchoor, chaat masala, rock salt and anardana. Mix well to combine all the ingredients.",
                             @"\u2022 Grease your palms, take small portion of the mixture and shape them into round patties. Place chopped cashews in the center and make round kebabs.",
                             @"\u2022 Roll the kebabs in crushed oat powder to evenly coat the patties from all sides.",
                             @"\u2022 Heat the oil in a flat pan and fry the kebabs, until they turn golden brown in colour from all the sides. Drain the kebabs on an absorbent paper.",nil];

    Recipe *recipe12 = [Recipe new];
    recipe12.name = @"Vegetable Clear Soup";
    recipe12.prepTime = @"20 minutes";
    recipe12.imageFile = @"vegetableclearsoup.jpg";
    recipe12.ingredients = [NSArray arrayWithObjects:
                            @"\u2022 2 cups Mix vegetables (Carrots/Beans/ Cauliflower/Green Capsicum) (finely chopped)",
                            @"\u2022 2 Spring Onion (white part finely chopped)",
                            @"\u2022 2 Spring Onion (green part finely chopped)",
                            @"\u2022 1 teaspoon Ginger (julienned)",
                            @"\u2022 3 Garlic Cloves (julienned)",
                            @"\u2022 3 tablespoons Onion (finely chopped)",
                            @"\u2022 ½ teaspoon Oil",
                            @"\u2022 4-5 cups Water",
                            @"\u2022 2 teaspoons Cornflour or cornstarch (add some water to make a paste)",
                            @"\u2022 Black pepper to taste",
                            @"\u2022 Salt to taste",nil];
    recipe12.instructions = [NSArray arrayWithObjects:
                             @"\u2022 Heat oil in a saucepan and add onion, ginger, garlic and spring onion (white part). Saute for a minute on low flame. Do not let it turn brown or soft",
                             @"\u2022 Toss in the mixed vegetable and saute for 5-6 minutes.",
                             @"\u2022 Pour water into the pan and stir until the vegetables are well cooked.",
                             @"\u2022 Next, add tastemakers like salt and black pepper along with corn flour water. Mix it well until you notice a good thick consistency.",nil];
    
    Recipe *recipe13 = [Recipe new];
    recipe13.name = @"Honey Chilli Potato";
    recipe13.prepTime = @"30 minutes";
    recipe13.imageFile = @"honeychillipotatto.jpg";
    recipe13.ingredients = [NSArray arrayWithObjects:
                            @"\u2022 2 Potatoes (peeled and sliced)",
                            @"\u2022 3-4 tablespoons Cornflour or Maida",
                            @"\u2022 Salt to taste",
                            @"\u2022 1 teaspoon Red Chilli powder",
                            @"\u2022 Oil, for deep frying",
                            @"\u2022 For the base-",
                            @"\u2022 1 teaspoon Oil",
                            @"\u2022 2 Spring Onions (with stalk), sliced",
                            @"\u2022 1 tablespoon Garlic paste",
                            @"\u2022 1 Capsicum (sliced)",
                            @"\u2022 2 tablespoons Honey",
                            @"\u2022 1/4 teaspoon Soya sauce",
                            @"\u2022 3 teaspoon White Sesame Seeds",
                            @"\u2022 2 teaspoon Chilli sauce",
                            @"\u2022 Salt, to taste",nil];
    recipe13.instructions = [NSArray arrayWithObjects:
                             @"\u25CF For potatoes:-",
                             @"\u2022 Assemble dry ingredients like cornflour or maida, salt and red chilli powder in a bowl.",
                             @"\u2022 Add the chopped potatoes and make sure it is coated well.",
                             @"\u2022 Put oil in a pan to deep fry the potatoes. Fry until they turn golden brown.",
                             @"\u25CF For base:-",
                             @"\u2022 In a skillet, add oil, garlic paste and spring onions. Toss on high heat for 1 minute.",
                             @"\u2022 Next up add capsicum, honey, salt, soya sauce, chilli sauce. Sautee for 2-3 minutes.",
                             @"\u2022 Finally, add the deep-fried potatoes and sesame seeds. Mix everything well.",nil];
    
    
    Recipe *recipe14 = [Recipe new];
    recipe14.name = @"Thai Shrimp Cake";
    recipe14.prepTime = @"1.5 hours";
    recipe14.imageFile = @"thai_shrimp_cake.jpg";
    recipe14.ingredients = [NSArray arrayWithObjects:@"8 oz (250g) peeled and deveined raw shrimp", @"2 tablespoons red curry paste", @"1 large egg", @"2 teaspoon fish sauce", @"1 tablespoon sugar", @"2 tablespoons coconut milk", @"2 tablespoons roughly chopped Thai basil leaves", nil];
    
    Recipe *recipe15 = [Recipe new];
    recipe15.name = @"Angry Birds Cake";
    recipe15.prepTime = @"4 hours";
    recipe15.imageFile = @"angry_birds_cake.jpg";
    recipe15.ingredients = [NSArray arrayWithObjects:@"12 tablespoons (1 1/2 sticks) unsalted butter", @"2 1/2 cups all-purpose flour", @"1 tablespoon baking powder", @"1 teaspoon salt", @"1 3/4 cups sugar", @"2 large eggs, plus 3 large egg yolks", @"1 cup of milk", nil];
    
    Recipe *recipe16 = [Recipe new];
    recipe16.name = @"Ham and Cheese Panini";
    recipe16.prepTime = @"10 min";
    recipe16.imageFile = @"ham_and_cheese_panini.jpg";
    recipe16.ingredients = [NSArray arrayWithObjects:@"2 tablespoons unsalted butter", @"4 cups thinly sliced shallots", @"2 teaspoons fresh thyme", @"1/4 cup grainy Dijon mustard", @"8 slices rustic white bread", @"8 slices Gruyere cheese", @"8 ounces sliced cooked ham", nil];
recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12, recipe13, recipe14, recipe15, recipe16, nil];
        
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath

{
    [tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionNone];
    NSLog(@"row selecter %d", (int)indexPath.row);
    UIStoryboard * main = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    RecipeDetailViewController *detail = [main instantiateViewControllerWithIdentifier:@"RecipeDetailViewController"];
    [detail setRecipe:[recipes objectAtIndex:indexPath.row]];
    [self.navigationController pushViewController:detail animated:YES];
    

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    return[recipes count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
static NSString *simpleTableIdentifier = @"SimpleTableCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell ==nil)
    {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    
    }
    Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    cell.textLabel.text = recipe.name;
    return cell;
    
 
}

@end
