//
//  GameScene.swift
//  DiveIntoSpriteKit
//
//  Created by Paul Hudson on 16/10/2017.
//  Copyright © 2017 Paul Hudson. All rights reserved.
//

import SpriteKit

@objcMembers
class MainMenu: SKScene, SKPhysicsContactDelegate {
    
    let titleLabel = SKLabelNode(fontNamed: "AvenirNextCondensed-Bold")
    let subTitleLabel = SKLabelNode(fontNamed: "AvenirNextCondensed-Bold")
    
    override func didMove(to view: SKView) {
        // this method is called when your game scene is ready to run
        let background = SKSpriteNode(imageNamed: "space")
        background.zPosition = -1
        addChild(background)
        
        titleLabel.text = "Main Menu"
        titleLabel.fontSize = 75
        titleLabel.zPosition = 1
        titleLabel.position.y = 150
        addChild(titleLabel)
        
        subTitleLabel.text = "Avoid enemy ships as long as possible. Tap to Start!"
        subTitleLabel.fontSize = 30
        subTitleLabel.zPosition = 1
        subTitleLabel.position.y = -100
        addChild(subTitleLabel)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // this method is called when the user touches the screen
        print("touching screen")
        
        if let scene = GameScene(fileNamed: "GameScene") {
            scene.scaleMode = .aspectFill
            self.view?.presentScene(scene)
        }
    }
}

