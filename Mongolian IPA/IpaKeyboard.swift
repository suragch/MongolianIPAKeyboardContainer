import UIKit

// View Controllers must adopt this protocol
protocol KeyboardDelegate: class {
    func keyWasTapped(_ character: String)
    func keyBackspace()
    func keyNextKeyboard()
}

class IpaKeyboard: UIView, KeyboardKeyDelegate {
    
    weak var delegate: KeyboardDelegate? // probably the view controller
    
    // Keyboard Keys
    
    // Row 1
    private let key_a = KeyboardTextKey()
    private let key_ae = KeyboardTextKey()
    private let key_e = KeyboardTextKey()
    private let key_i = KeyboardTextKey()
    private let key_o4 = KeyboardTextKey()
    private let key_oe = KeyboardTextKey()
    private let key_u5 = KeyboardTextKey()
    private let key_o6 = KeyboardTextKey()
    private let key_u7 = KeyboardTextKey()
    private let key_long = KeyboardTextKey()
    
    // Row 2
    private let key_n = KeyboardTextKey()
    private let key_ng = KeyboardTextKey()
    private let key_b = KeyboardTextKey()
    private let key_p = KeyboardTextKey()
    private let key_x = KeyboardTextKey()
    private let key_g = KeyboardTextKey()
    private let key_m = KeyboardTextKey()
    private let key_l = KeyboardTextKey()
    private let key_s = KeyboardTextKey()
    private let key_sh = KeyboardTextKey()
    
    // Row 3
    private let key_t = KeyboardTextKey()
    private let key_d = KeyboardTextKey()
    private let key_ch = KeyboardTextKey()
    private let key_dzh = KeyboardTextKey()
    private let key_j = KeyboardTextKey()
    private let key_r = KeyboardTextKey()
    private let key_w = KeyboardTextKey()
    private let key_f = KeyboardTextKey()
    private let key_del = KeyboardTextKey()
    
    // Row 4
    private let key_keyboard = KeyboardTextKey()
    private let key_k = KeyboardTextKey()
    private let key_space = KeyboardTextKey()
    private let key_ts = KeyboardTextKey()
    private let key_dz = KeyboardTextKey()
    private let key_enter = KeyboardTextKey()
    
    // MARK:- keyboard initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    private func setup() {
        addSubviews()
        setPrimaryKeyStrings()
        assignDelegates()
    }
    
    private func addSubviews() {
        
        // Row 1
        self.addSubview(key_a)
        self.addSubview(key_ae)
        self.addSubview(key_e)
        self.addSubview(key_i)
        self.addSubview(key_o4)
        self.addSubview(key_oe)
        self.addSubview(key_u5)
        self.addSubview(key_o6)
        self.addSubview(key_u7)
        self.addSubview(key_long)
        
        // Row 2
        self.addSubview(key_n)
        self.addSubview(key_ng)
        self.addSubview(key_b)
        self.addSubview(key_p)
        self.addSubview(key_x)
        self.addSubview(key_g)
        self.addSubview(key_m)
        self.addSubview(key_l)
        self.addSubview(key_s)
        self.addSubview(key_sh)
        
        // Row 3
        self.addSubview(key_t)
        self.addSubview(key_d)
        self.addSubview(key_ch)
        self.addSubview(key_dzh)
        self.addSubview(key_j)
        self.addSubview(key_r)
        self.addSubview(key_w)
        self.addSubview(key_f)
        self.addSubview(key_del)
        
        // Row 4
        self.addSubview(key_keyboard)
        self.addSubview(key_k)
        self.addSubview(key_space)
        self.addSubview(key_ts)
        self.addSubview(key_dz)
        self.addSubview(key_enter)
        
    }
    
    private func setPrimaryKeyStrings() {
        
        // Row 1
        key_a.primaryString = Ipa.a
        key_ae.primaryString = Ipa.ae
        key_e.primaryString = Ipa.e
        key_i.primaryString = Ipa.i
        key_o4.primaryString = Ipa.o4
        key_oe.primaryString = Ipa.oe
        key_u5.primaryString = Ipa.u5
        key_o6.primaryString = Ipa.o6
        key_u7.primaryString = Ipa.u7
        key_long.primaryString = Ipa.long
        
        // Row 2
        key_n.primaryString = Ipa.n
        key_ng.primaryString = Ipa.ng
        key_b.primaryString = Ipa.b
        key_p.primaryString = Ipa.p
        key_x.primaryString = Ipa.x
        key_g.primaryString = Ipa.g
        key_m.primaryString = Ipa.m
        key_l.primaryString = Ipa.l
        key_s.primaryString = Ipa.s
        key_sh.primaryString = Ipa.sh
        
        // Row 3
        key_t.primaryString = Ipa.t
        key_d.primaryString = Ipa.d
        key_ch.primaryString = Ipa.ch
        key_dzh.primaryString = Ipa.dzh
        key_j.primaryString = Ipa.j
        key_r.primaryString = Ipa.r
        key_w.primaryString = Ipa.w
        key_f.primaryString = Ipa.f
        key_del.primaryString = Ipa.del
        
        // Row 4
        key_keyboard.primaryString = Ipa.keyboard
        key_k.primaryString = Ipa.k
        key_space.primaryString = Ipa.space
        key_ts.primaryString = Ipa.ts
        key_dz.primaryString = Ipa.dz
        key_enter.primaryString = Ipa.enter
        
    }
    
    private func assignDelegates() {
        
        // Row 1
        key_a.delegate = self
        key_ae.delegate = self
        key_e.delegate = self
        key_i.delegate = self
        key_o4.delegate = self
        key_oe.delegate = self
        key_u5.delegate = self
        key_o6.delegate = self
        key_u7.delegate = self
        key_long.delegate = self
        
        // Row 2
        key_n.delegate = self
        key_ng.delegate = self
        key_b.delegate = self
        key_p.delegate = self
        key_x.delegate = self
        key_g.delegate = self
        key_m.delegate = self
        key_l.delegate = self
        key_s.delegate = self
        key_sh.delegate = self
        
        // Row 3
        key_t.delegate = self
        key_d.delegate = self
        key_ch.delegate = self
        key_dzh.delegate = self
        key_j.delegate = self
        key_r.delegate = self
        key_w.delegate = self
        key_f.delegate = self
        key_del.delegate = self
        
        // Row 4
        key_keyboard.delegate = self
        key_k.delegate = self
        key_space.delegate = self
        key_ts.delegate = self
        key_dz.delegate = self
        key_enter.delegate = self
    }
    
    override func layoutSubviews() {
        
        // | a | æ | ə | i | ɔ | œ | ʊ | o | u | ː |    Row 1
        // | n | ŋ | b | p | x | g | m | l | s | ʃ |    Row 2
        // | t | d | ʧ |ʤ | j | r | w | f |  del  |    Row 3
        // |   🌐  | k |   space   | ʦ | ʣ | enter |    Row 4
        
        let numberOfKeysPerRow = [10, 10, 9, 6]
        // each row should sum to 1
        let keyWeights = getKeyWeights()
        let numberOfRows = numberOfKeysPerRow.count
        let totalWidth = self.bounds.width
        let totalHeight = self.bounds.height
        var x: CGFloat = 0
        var y: CGFloat = 0
        var keyIndex = 0
        for rowIndex in 0..<numberOfRows {
            let start = keyIndex
            let end = keyIndex + numberOfKeysPerRow[rowIndex]
            for _ in start..<end {
                let key = subviews[keyIndex]
                let keyWidth = totalWidth * keyWeights[keyIndex]
                let keyHeight = totalHeight / CGFloat(numberOfRows)
                key.frame = CGRect(x: x, y: y, width: keyWidth, height: keyHeight)
                x += keyWidth
                keyIndex += 1
            }
            
            x = 0
            y += totalHeight / CGFloat(numberOfRows)
            
        }
    }
    
    private func getKeyWeights() -> [CGFloat] {
        // each row should sum to 1
        return [
            0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1,
            0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1,
            0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.2,
            0.2, 0.1, 0.3, 0.1, 0.1, 0.2]
    }
    
    // MARK: - KeyboardKeyDelegate protocol
    
    func keyTextEntered(sender: KeyboardKey, keyText: String) {
        // pass the input up to the Keyboard delegate
        
        // FIXME: this is just to get the job done quickly
        // make these different delegate methods and key types
        if (keyText == Ipa.del) {
            self.delegate?.keyBackspace()
        } else if keyText == Ipa.keyboard {
            self.delegate?.keyNextKeyboard()
        } else if keyText == Ipa.enter {
            self.delegate?.keyWasTapped("\n")
        } else if keyText == Ipa.space {
            self.delegate?.keyWasTapped(" ")
        } else {
            self.delegate?.keyWasTapped(keyText)
        }
    }
    
    func keyBackspaceTapped() {
        // TODO
    }
}
