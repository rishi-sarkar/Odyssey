import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var player: SKSpriteNode!
    var evilShip: SKSpriteNode!
    var joystick: SKNode!
    var missile: SKSpriteNode!
    var scoreLabel: SKLabelNode!
    var lives = 5
    
    override func didMove(to view: SKView) {
        backgroundColor = .black
        
        player = SKSpriteNode(imageNamed: "playerShip")
        player.position = CGPoint(x: size.width / 2, y: 100)
        addChild(player)
        
        evilShip = SKSpriteNode(imageNamed: "evilShip")
        evilShip.position = CGPoint(x: size.width / 2, y: size.height - 100)
        addChild(evilShip)
        
        joystick = SKNode()
        joystick.position = CGPoint(x: 100, y: 100)
        addChild(joystick)
        
        scoreLabel = SKLabelNode(fontNamed: "PixelFont")
        scoreLabel.text = "Score: 0"
        scoreLabel.position = CGPoint(x: size.width / 2, y: size.height - 50)
        addChild(scoreLabel)
    }
    
    override func update(_ currentTime: TimeInterval) {
        moveEnemyTowardsPlayer()
    }
    
    func moveEnemyTowardsPlayer() {
        let moveAction = SKAction.move(to: player.position, duration: 1.5)
        evilShip.run(moveAction)
    }
}
