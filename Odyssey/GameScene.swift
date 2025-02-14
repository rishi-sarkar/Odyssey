import SpriteKit

class GameScene: SKScene {
    
    let player = SKSpriteNode(imageNamed: "player") // Add a player sprite
    
    override func didMove(to view: SKView) {
        backgroundColor = .black
        player.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(player)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            let moveAction = SKAction.move(to: location, duration: 0.5)
            player.run(moveAction)
        }
    }
}
