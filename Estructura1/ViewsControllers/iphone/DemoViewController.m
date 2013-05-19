//
//  DemoViewController.m
//  MFSideMenuDemo
//
//  Created by Michael Frederick on 3/19/12.
//

#import "DemoViewController.h"
#import "MFSideMenuContainerViewController.h"

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define numeroFocos 23

@implementation DemoViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    if(!self.title) self.title = @"Estructura 1!";
    
    [self setupMenuBarButtonItems];
    
    [self listaFocos];
    
    [self pageControlMetodo];
}

- (MFSideMenuContainerViewController *)menuContainerViewController {
    return (MFSideMenuContainerViewController *)self.navigationController.parentViewController;
}


#pragma mark -
#pragma mark - UIBarButtonItems

- (void)setupMenuBarButtonItems {
    self.navigationItem.rightBarButtonItem = [self rightMenuBarButtonItem];
    if(self.menuContainerViewController.menuState == MFSideMenuStateClosed &&
       ![[self.navigationController.viewControllers objectAtIndex:0] isEqual:self]) {
        self.navigationItem.leftBarButtonItem = [self backBarButtonItem];
    } else {
        self.navigationItem.leftBarButtonItem = [self leftMenuBarButtonItem];
    }
}

- (UIBarButtonItem *)leftMenuBarButtonItem {
    return [[UIBarButtonItem alloc]
            initWithImage:[UIImage imageNamed:@"menu-icon.png"] style:UIBarButtonItemStyleBordered
            target:self
            action:@selector(leftSideMenuButtonPressed:)];
}

- (UIBarButtonItem *)rightMenuBarButtonItem {
    return [[UIBarButtonItem alloc]
            initWithImage:[UIImage imageNamed:@"menu-icon.png"] style:UIBarButtonItemStyleBordered
            target:self
            action:@selector(rightSideMenuButtonPressed:)];
}

- (UIBarButtonItem *)backBarButtonItem {
    return [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back-arrow"]
                                            style:UIBarButtonItemStyleBordered
                                           target:self
                                           action:@selector(backButtonPressed:)];
}


#pragma mark - 
#pragma mark - UIBarButtonItem Callbacks

- (void)backButtonPressed:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)leftSideMenuButtonPressed:(id)sender {
    [self.menuContainerViewController toggleLeftSideMenuCompletion:^{
        [self setupMenuBarButtonItems];
    }];
}

- (void)rightSideMenuButtonPressed:(id)sender {
    [self.menuContainerViewController toggleRightSideMenuCompletion:^{
        [self setupMenuBarButtonItems];
    }];
}

#pragma mark -
#pragma mark - Focos

-(void)listaFocos{
    
    // Scroll
	self.scrollFocos.delegate = self;
	[self.scrollFocos setCanCancelContentTouches:NO];
    
	CGFloat cx = 0;
    numberOfPages = numeroFocos;
    
    for (int i =0; i<numberOfPages; i++) {
        
        buttonFoco = [UIButton buttonWithType:UIButtonTypeCustom];
        
        if (i >= 3) {
            buttonFoco.frame = CGRectMake(7+cx/3, 8, 93, 73);
            tmpLabel = [[UILabel alloc] initWithFrame:CGRectMake(7+cx/3, 83, 93, 90)];
        }
        else{
            buttonFoco.frame = CGRectMake(6+cx/3, 8, 93, 73);
            tmpLabel = [[UILabel alloc] initWithFrame:CGRectMake(6+cx/3, 83, 93, 90)];
        }
        
        buttonFoco.tag = i;
        
        //Label

        tmpLabel.font = [UIFont fontWithName:@"Roboto-Condensed" size:13.0];
        tmpLabel.text = [NSString stringWithFormat:@"Foco %i",i];
        tmpLabel.numberOfLines = 4;
        [tmpLabel sizeToFit];
      
        
        [tmpLabel setBackgroundColor:[UIColor colorWithRed:0.94f green:0.94f blue:0.94f alpha:1.00f]];
        [_scrollFocos addSubview:tmpLabel];
        
        //Boton
        [buttonFoco setTitle:@"" forState:UIControlStateNormal];
        
        //Imagen del Foco
        
//        imageFoco = [[UIImage alloc] initWithData:[[self.arrayFocos objectAtIndex:i]objectForKey:@"data"]];
//        
//        UIImage *imagenEscalada = [imageFoco  imageWithImage:imageFoco scaledToWidth:93.0f];
//        newImag = [imagenEscalada crop:imagenEscalada rect:CGRectMake(0, 0, 93, 73)];
//        
//        
//        [buttonFoco setBackgroundImage: newImag forState:UIControlStateNormal];
        
        // add targets and actions
        [buttonFoco addTarget:self action:@selector(BotonFoco:) forControlEvents:UIControlEventTouchUpInside];
        
        buttonFoco.layer.cornerRadius = 8.0;
        buttonFoco.layer.masksToBounds = YES;
        
        // add to a scroll
        [self.scrollFocos addSubview:buttonFoco];
        
        
		cx += _scrollFocos.frame.size.width;
        
       
    }
    
	[self.scrollFocos setContentSize:CGSizeMake(cx/3,93)];
}

-(void)BotonFoco:(id)sender {
    
//    UIButton *btn = (UIButton *)sender;
//    
//    // Navigation logic may go here. Create and push another view controller.
//    _detalle = [[DetailArticulosViewController alloc] initWithNibName:@"DetailArticulosViewController" bundle:nil];
//    _detalle.hidesBottomBarWhenPushed = YES;
//    
//    
//    _detalle.idNota =[[self.arrayFocos objectAtIndex:btn.tag]objectForKey:@"idnota"];
//    _detalle.idUrl = [[self.arrayFocos objectAtIndex:btn.tag]objectForKey:@"idurl"];
//    _detalle.seccion = [[self.arrayFocos objectAtIndex:btn.tag]objectForKey:@"section"];
//    _detalle.title = [NSString stringWithFormat:@"%@", self.seccionTitle];
//    _detalle.delegate=self;
//    
//    if([[[self.arrayFocos objectAtIndex:btn.tag]objectForKey:@"comments"] intValue] == 0){
//        _detalle.hayComentarios = FALSE;
//    } else{
//        _detalle.hayComentarios = TRUE;
//    }
//    
//    bool noImage = [[[self.arrayFocos objectAtIndex:btn.tag] valueForKey:@"data"] isEqualToData: self.imagenDefault];
//    _detalle.tituloTemporal = [[self.arrayFocos objectAtIndex:btn.tag]objectForKey:@"titulo"];
//    _detalle.fechaTemporal = [[self.arrayFocos objectAtIndex:btn.tag]objectForKey:@"fecha"];
//    _detalle.noImage = noImage;
//
//    if (!noImage) {
//        _detalle.imagenTemporal = [[[UIImage alloc] initWithData:[[self.arrayFocos objectAtIndex:btn.tag]objectForKey:@"data"]]autorelease];
//    }
//    _detalle.notaBodyTemporal = [[self.arrayFocos objectAtIndex:btn.tag] objectForKey:@"texto"];
//    
//    [self.navigationController pushViewController:_detalle animated:YES];
//    [_detalle release];
}


#pragma mark - PageControl Focos

-(void)pageControlMetodo{
    
    if (numeroFocos%3 != 0) {
        self.pageControlCust.numberOfPages = (numeroFocos / 3)+1;
    }
    else{
        self.pageControlCust.numberOfPages = (numeroFocos / 3);
    }

    [self.pageControlCust setPageIndicatorImage:[UIImage imageNamed:@"indicador_negro.png"]];
	[self.pageControlCust setCurrentPageIndicatorImage:[UIImage imageNamed:@"indicador_rosa.png"]];
    self.pageControlCust.indicatorDiameter = 10.0f;
    self.pageControlCust.indicatorMargin = 4.5f;
}


#pragma mark - ScrollView Focos

- (void)scrollViewDidScroll:(UIScrollView *)_scrollView
{
    cont1++;
    
    if (cont1 == 4) {
        
        NSLog(@"currentPage %i",self.pageControlCust.currentPage);
        
        CGFloat pageWidth = self.scrollFocos.frame.size.width;
        int page = floor((self.scrollFocos.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
        
         NSLog(@"currentPage %f",floor((self.scrollFocos.contentOffset.x - pageWidth / 2) / pageWidth));
        
        self.pageControlCust.currentPage = page;
        
        cont1=0;
    }
}


@end
