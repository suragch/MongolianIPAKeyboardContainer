import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func onCopyTap(_ sender: UIButton) {
        guard let text = textField.text, text != "" else {
            return
        }
        UIPasteboard.general.string = text
    }
    
    @IBAction func onClearTap(_ sender: UIButton) {
        textField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.becomeFirstResponder()
    }

}

