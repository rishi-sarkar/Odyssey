import SpriteKit
import GameplayKit

class RulesScene: SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = .black
        
        let rulesText = "COLLECT JEWELS\nAVOID BOMBS\nDODGE MISSILES\nSURVIVE!!"
        let rulesLabel = SKLabelNode(fontNamed: "PixelFont")
        rulesLabel.text = rulesText
        rulesLabel.numberOfLines = 4
        rulesLabel.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(rulesLabel)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let transition = SKTransition.fade(withDuration: 1.0)
        let gameScene = GameScene(size: self.size)
        self.view?.presentScene(gameScene, transition: transition)
    }
}
