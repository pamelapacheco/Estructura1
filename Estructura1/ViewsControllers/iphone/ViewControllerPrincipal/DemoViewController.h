//
//  DemoViewController.h
//  MFSideMenuDemo
//
//  Created by Michael Frederick on 3/19/12.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#import "SMPageControl.h"

@interface DemoViewController : UIViewController<UIScrollViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate>{
    UIImage *imageFoco;
    UILabel *tmpLabel;
    UILabel *contadorFoco;
    UIButton *buttonFoco;
    int numberOfPages;
    int cont1;
    int cont2;
}

@property (retain, nonatomic) IBOutlet UIScrollView *scrollFocos;
@property (retain, nonatomic) IBOutlet UIView *viewFocos;

@property (strong, nonatomic) IBOutlet SMPageControl *pageControlCust;

@property (retain, nonatomic) IBOutlet UICollectionView *collectionView;

@end
