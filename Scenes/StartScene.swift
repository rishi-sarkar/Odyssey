import SpriteKit
import GameplayKit

class StartScene: SKScene {
    let titleLabel = SKLabelNode(fontNamed: "PixelFont")
    let startLabel = SKLabelNode(fontNamed: "PixelFont")
    
    override func didMove(to view: SKView) {
        backgroundColor = .black
        
        titleLabel.text = "ODYSSEY"
        titleLabel.fontSize = 50
        titleLabel.position = CGPoint(x: size.width / 2, y: size.height / 2 + 50)
        addChild(titleLabel)
        
        startLabel.text = "CLICK TO PLAY"
        startLabel.fontSize = 30
        startLabel.position = CGPoint(x: size.width / 2, y: size.height / 2 - 50)
        startLabel.run(SKAction.repeatForever(SKAction.sequence([
            SKAction.fadeOut(withDuration: 0.5),
            SKAction.fadeIn(withDuration: 0.5)
        ])))
        addChild(startLabel)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let transition = SKTransition.fade(withDuration: 1.0)
        let menuScene = MenuScene(size: self.size)
        self.view?.presentScene(menuScene, transition: transition)
    }
}
