//
//  PrincipalCustomCell.m
//  Estructura1
//
//  Created by PamLiiz on 20/05/13.
//  Copyright (c) 2013 PamLiiz. All rights reserved.
//

#import "PrincipalCustomCell.h"

@implementation PrincipalCustomCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        newView = [[UIView alloc] initWithFrame:CGRectMake(0,0, 145,145)];
        [self addSubview:newView];
        
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(45,55, 65,65)];
        imageView.backgroundColor = [UIColor clearColor];
        [newView addSubview:imageView];
        
    }
    return self;
}

-(void)setArraySectionRow:(NSArray *)arraySectionRow{
    
    int seccion = [[arraySectionRow objectAtIndex:0] integerValue];
    int renglon = [[arraySectionRow objectAtIndex:1] integerValue];
    
    switch (seccion)
    {
        case 0:{
            
            newView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"fondo_celda.png"]];
            
            switch (renglon)
            {
                case 0:
                    imageView.image = [UIImage imageNamed:@"scanners_cameras.png"];
                    break;
                case 1:
                    imageView.image = [UIImage imageNamed:@"image_x_generic.png"];
                    break;
                default:
                    break;
            }
        }
            break;
            
        case 1:{
            
            newView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"fondo_celda2.png"]];
            
            switch (renglon)
            {
                case 0:
                    imageView.image = [UIImage imageNamed:@"facebook.png"];
                    break;
                case 1:
                    imageView.image = [UIImage imageNamed:@"foursquare.png"];
                    break;
                case 2:
                    imageView.image = [UIImage imageNamed:@"google (1).png"];
                    break;
                case 3:
                    imageView.image = [UIImage imageNamed:@"images.jpeg"];
                    break;
                case 4:
                    imageView.image = [UIImage imageNamed:@"linkedin.png"];
                    break;
                case 5:
                    imageView.image = [UIImage imageNamed:@"twitter.png"];
                    break;
                default:
                    break;
            }
        }
            break;
            
        case 2:{
            newView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"fondo_celda3.png"]];
            imageView.image = [UIImage imageNamed:@"xine.png"];
        }
            break;
            
        case 3:{
            
            newView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"fondo_celda4.png"]];
            
            switch (renglon)
            {
                case 0:
                    imageView.image = [UIImage imageNamed:@"map.png"];
                    break;
                case 1:
                    imageView.image = [UIImage imageNamed:@"filetype_pdf.png"];
                    break;
                case 2:
                    imageView.image = [UIImage imageNamed:@"chat_video.png"];
                    break;
                case 3:
                    imageView.image = [UIImage imageNamed:@"youtube.png"];
                    break;
                default:
                    break;
            }
        }
            break;
            
        default:
            break;
    }
    
    
}

@end
