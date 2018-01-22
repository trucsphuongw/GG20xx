//  HeadGear_item.m
//  Opp_Game_GUN
//
//  Created by Trúc Phương >_< on 13/01/2018.
//  Copyright © 2018 iDev Bao. All rights reserved.
//

#import "HeadGear_item.h"

@implementation HeadGear_item
-(instancetype)init_Object_NameObj:(NSString *)name
                          own_View:(UIView *)view
                        with_Scene:(Scene_VC *)scene{
    if (self = [super init_Object_NameObj:name own_View:view with_Scene:scene]){
        
        _inUser = false;
        _inScen = true;
        CGFloat x = arc4random_uniform(self.Width_Scene - 80);
        CGFloat y = arc4random_uniform(self.Height_Scene- 80);
        self.Location_obj = CGPointMake(x, y);
        self.View_obj.center = CGPointMake(self.Location_obj.x + 40, self.Location_obj.y + 40);
        
        
    }
    return self;
}
-(void)locationObjectAndItem_Quantity:(int)_quantity
                             with_Obj:(Object_GG*)_objGG
                            and_Scene:(Scene_VC*)_scene
                             View_Map:(UIView*)viewMap{
    
    for (int i = 0; i<_quantity; i ++) {
        int y = arc4random_uniform(3);
        NSString * HeadGear_item_img = [NSString stringWithFormat:@"HeadGear_item_%d",y];
        
        
        
        NSString * headgear_name = [NSString stringWithFormat:@"headgearitem%d",i];
        _objGG = [[HeadGear_item alloc] init_Object_NameObj:headgear_name
                                                   own_View:[[UIImageView alloc]initWithImage:[UIImage imageNamed:HeadGear_item_img]]
                                                 with_Scene:_scene];
        
        [_scene add_Object_item:_objGG];
        [viewMap addSubview:_objGG.View_obj];
        
    }
}

@end
