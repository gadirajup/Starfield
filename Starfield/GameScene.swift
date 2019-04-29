//
//  GameScene.swift
//  Starfield
//
//  Created by Prudhvi Gadiraju on 4/29/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var score = 0 {
        didSet {
            scoreLabel.text = "Score: \(score)"
        }
    }
    
    private var player : SKSpriteNode!
    private var starField : SKEmitterNode!
    private var scoreLabel : SKLabelNode!
    
    override func didMove(to view: SKView) {
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        physicsWorld.contactDelegate = self
        
        backgroundColor = .black
        
        scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
        scoreLabel.fontSize = 24
        scoreLabel.position = CGPoint(x: 16, y: 36)
        scoreLabel.zPosition = 0
        scoreLabel.horizontalAlignmentMode = .left
        addChild(scoreLabel)
        score = 0
        
        starField = SKEmitterNode(fileNamed: "starfield.sks")!
        starField.position = CGPoint(x: 1024, y: 384)
        starField.zPosition = -1
        starField.advanceSimulationTime(10)
        addChild(starField)
        
        player = SKSpriteNode(imageNamed: "player")
        player.position = CGPoint(x: 64, y: 384)
        player.zPosition = 0
        player.physicsBody = SKPhysicsBody(texture: player.texture!, size: player.size)
        player.physicsBody?.contactTestBitMask = 1
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
