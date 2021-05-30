import UIKit

class informationViewController: UIViewController {
    
    @IBOutlet weak var educationLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var skillsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let info = Information.getInfo()
        educationLabel.text = info.education
        jobLabel.text = info.job
        skillsLabel.text = info.skills
    }
}
