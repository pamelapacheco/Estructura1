//
//  PrincipalCustomCell.h
//  Estructura1
//
//  Created by PamLiiz on 20/05/13.
//  Copyright (c) 2013 PamLiiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrincipalCustomCell : UICollectionViewCell

@property (retain, nonatomic)  NSString *nombreImagen;
@property (retain, nonatomic)  NSString *nombreTitulo;

@property (retain, nonatomic) IBOutlet UIImageView *imagenCell;
@property (retain, nonatomic) IBOutlet UILabel *lbTitulo;

@end
