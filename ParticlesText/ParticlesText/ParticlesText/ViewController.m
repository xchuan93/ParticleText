//
//  Particle.metal
//  ParticlesOC
//
//  Created by roselzy on 2018/9/3.
//  Copyright © 2018 chason. All rights reserved.
//

#import "ViewController.h"
#import "ParticlesMTKView.h"

@interface ViewController ()
@property (nonatomic, strong) ParticlesMTKView *particlesMTKView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    self.view.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.4];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(homingAnimationFinished) name:ParticlesHomingAnimationFinishedNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(diffusingAnimationFinished) name:ParticlesDiffuseAnimationFinishedNotification object:nil];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.particlesMTKView = [[ParticlesMTKView alloc] initWithBuilder:^(ParticlesBuilder *builder) {
        builder.frame = CGRectMake(50, 160, CGRectGetWidth(self.view.bounds) - 100, 100);
        builder.text = @"爱吃兽奶奶 ";
        builder.font = [UIFont systemFontOfSize:60];
        builder.density = 10;
        builder.dispersionX = 2;
        builder.dispersionY = 2;
        builder.duration = 2.0;
        builder.hexColor = @"#c0a062";
        builder.adjustsFontSizeToFitWidth = YES;
        builder.particleFinishType = ParticleFinishTypeStatic;
    }];
    [self.view addSubview:self.particlesMTKView];
    [self.particlesMTKView prepareAnimating];
    [self.particlesMTKView startAnimating];
}

- (void)homingAnimationFinished {
    NSLog(@"homing");
}

- (void)diffusingAnimationFinished {
    NSLog(@"diffusing");
}


@end
