import UIKit

class factsViewController: UIViewController {
    
    
    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var hate: UILabel!
    @IBOutlet weak var respectLabell: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fact = Facts.getFacts()
        loveLabel.text = fact.love
        hate.text = fact.hate
        respectLabell.text = fact.respest
    }
}
