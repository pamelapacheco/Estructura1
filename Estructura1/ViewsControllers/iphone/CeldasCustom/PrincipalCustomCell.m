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
        
        NSArray *screens = [[NSBundle mainBundle] loadNibNamed:@"PrincipalCustomCell" owner:self options:nil];
        [self addSubview:[screens objectAtIndex:0]];

    }
    return self;
}

-(void)setNombreImagen:(NSString *)nombreImagen{
    NSLog(@"%@",nombreImagen);
    self.imagenCell.image = [UIImage imageNamed:nombreImagen];
    NSLog(@"%@",self.nombreImagen);
}

-(void)setNombreTitulo:(NSString *)nombreTitulo{
    NSLog(@"%@",nombreTitulo);
    self.lbTitulo.text = nombreTitulo;
    NSLog(@"%@",self.lbTitulo.text);
}

@end
