import UIKit

class KeyboardViewController: UIInputViewController, KeyboardDelegate {

    var keyboard: IpaKeyboard!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.keyboard = IpaKeyboard()
        self.keyboard.delegate = self
        self.keyboard.sizeToFit()
        self.keyboard.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.keyboard)
        
        self.keyboard.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.keyboard.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        self.keyboard.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.keyboard.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    func keyWasTapped(_ character: String) {
        self.textDocumentProxy.insertText(character)
    }
    
    func keyBackspace() {
        self.textDocumentProxy.deleteBackward()
    }
    
    func keyNextKeyboard() {
        advanceToNextInputMode()
    }
}
