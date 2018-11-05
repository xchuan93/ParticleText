//
//  Particle.metal
//  ParticlesOC
//
//  Created by roselzy on 2018/9/3.
//  Copyright © 2018 chason. All rights reserved.
//

#import "ParticlesBuilder.h"
#import "ParticlesMTKView.h"

@implementation ParticlesBuilder

- (ParticlesMTKView *)build {
    ParticlesMTKView *particlesMTKView = [[ParticlesMTKView alloc] initWithFrame:self.frame];
    particlesMTKView.text = self.text;
    particlesMTKView.font = self.font;
    particlesMTKView.density = self.density;
    particlesMTKView.dispersionX = self.dispersionX;
    particlesMTKView.dispersionY = self.dispersionY;
    particlesMTKView.duration = self.duration;
    particlesMTKView.hexColor = self.hexColor;
    particlesMTKView.particleFinishType = self.particleFinishType;
    particlesMTKView.adjustsFontSizeToFitWidth = self.adjustsFontSizeToFitWidth;
    return particlesMTKView;
}

@end
