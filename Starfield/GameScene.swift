//
//  GameScene.swift
//  Starfield
//
//  Created by Prudhvi Gadiraju on 4/29/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        let starField = SKEmitterNode(fileNamed: "starfield.sks")!
        starField.position = CGPoint(x: 1024, y: 384)
        starField.zPosition = -1
        starField.advanceSimulationTime(10)
        addChild(starField)
        
        let player = SKSpriteNode(imageNamed: "player")
        player.position = CGPoint(x: 64, y: 384)
        player.zPosition = 0
        addChild(player)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func update(_ currentTime: TimeInterval) {
    }
}
