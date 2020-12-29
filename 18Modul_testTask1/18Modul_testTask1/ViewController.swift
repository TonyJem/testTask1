import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textLabel: UILabel!
    @IBOutlet private weak var actionButton: UIButton!
    @IBOutlet private weak var resetButton: UIButton!
    
    var buttonInitialTextColor: UIColor = .black
    var textLabelInitialText = "Hello World!"
    var actionButtonInitialTitle = "Click me!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonInitialTextColor = actionButton.titleColor(for: .normal) ?? buttonInitialTextColor
        initialSetup()
     }
    
    private func initialSetup() {
        textLabel.text = textLabelInitialText
        actionButton.setTitle(actionButtonInitialTitle, for: .normal)
        actionButton.setTitleColor(buttonInitialTextColor, for: .normal)
    }
    
    @IBAction func actionButtonTapped(_ sender: Any) {
        textLabel.text = "Button is clicked"
        actionButton.setTitleColor(.blue, for: .normal)
    }
    
    @IBAction func resetUIButtonTapped(_ sender: Any) {
        initialSetup()
    }
}
