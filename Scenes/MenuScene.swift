import SpriteKit
import GameplayKit

class MenuScene: SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = .black
        
        let playLabel = SKLabelNode(fontNamed: "PixelFont")
        playLabel.text = "PLAY"
        playLabel.position = CGPoint(x: size.width / 2, y: size.height / 2 + 20)
        playLabel.name = "play"
        addChild(playLabel)
        
        let settingsLabel = SKLabelNode(fontNamed: "PixelFont")
        settingsLabel.text = "SETTINGS"
        settingsLabel.position = CGPoint(x: size.width / 2, y: size.height / 2 - 20)
        settingsLabel.name = "settings"
        addChild(settingsLabel)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            let node = atPoint(location)
            
            if node.name == "play" {
                let transition = SKTransition.fade(withDuration: 1.0)
                let rulesScene = RulesScene(size: self.size)
                self.view?.presentScene(rulesScene, transition: transition)
            }
        }
    }
}
