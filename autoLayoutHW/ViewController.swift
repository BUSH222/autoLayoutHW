//
//  ViewController.swift
//  autoLayoutHW
//
//  Created by Захар Литвинчук on 19.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var firstnum = 0
    var mode = ""
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        var buttonText = String(sender.title(for: .normal)!)
        switch buttonText {
        case "=":
            break
        case "+":
            mode = "+"
        case "-":
            mode = "-"
        case "*":
            mode = "*"
        case "/":
            mode = "/"
        case "%":
            // lazy
            break
        case ".":
            // lazy
            break
        case "AC":
            firstnum = 0
            mode = ""
        case "+/-":
            firstnum = -1 * firstnum
        default:
            if mode == "" && firstnum != 0 {
                firstnum = Int(String(firstnum)+buttonText)!
            } else if mode == "" && firstnum == 0 {
                firstnum = Int(buttonText)!
            } else if mode != "" {
                let stringWithMathematicalOperation: String = String(firstnum)+mode+buttonText
                let exp: NSExpression = NSExpression(format: stringWithMathematicalOperation)
                let result = String(format: "%.0f", exp.expressionValue(with:nil, context: nil) as! Double)
                firstnum = Int(result)!
            }
        }
        mainLabel.text = String(firstnum)
        
        // i will not do floats sorry too tired
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    



}

