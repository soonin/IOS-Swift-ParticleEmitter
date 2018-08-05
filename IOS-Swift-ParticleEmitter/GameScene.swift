//
//  GameScene.swift
//  IOS-Swift-ParticleEmitter
//
//  Created by Pooya on 2018-08-05.
//  Copyright © 2018 Pooya. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.black
        
        let path = Bundle.main.path(forResource: "Rain", ofType: "sks")
        let rainParticle = NSKeyedUnarchiver.unarchiveObject(withFile: path!) as! SKEmitterNode
        
        rainParticle.position = CGPoint(x: self.size.width/2, y: self.size.height)
        rainParticle.name = "rainParticle"
        rainParticle.targetNode = self.scene
        
        self.addChild(rainParticle)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
