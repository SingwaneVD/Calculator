//
//  ViewController.swift
//  Calculator
//
//  Created by IACD-VictorSingwane on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var DisplayScreen: UILabel!
    @IBOutlet var devideBtn: UIButton!
    
    @IBOutlet var multiBtn: UIButton!
    
    @IBOutlet var percBtn: UIButton!
    @IBOutlet var nineBtn: UIButton!
    @IBOutlet var minusBtn: UIButton!
    
    @IBOutlet var zeroBtn: UIButton!
    
    
    
    
    
    var workings: String = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ClearAll()
        
        devideBtn.layer.cornerRadius = 47
        multiBtn.layer.cornerRadius = 47
        percBtn.layer.cornerRadius = 47
        nineBtn.layer.cornerRadius = 47
        minusBtn.layer.cornerRadius = 47
        zeroBtn.layer.cornerRadius = 50
        
        
    }
    
    func ClearAll(){
        workings=""
        DisplayScreen.text = "0"
    }

    @IBAction func allCleartap(_ sender: Any) {
        ClearAll()
        
    }
    
    func addToDisplay(value: String){
        workings = workings + value
        DisplayScreen.text = workings
    }
    
    
    @IBAction func PosNeg(_ sender: Any) {
        addToDisplay(value: "-")
    }
    
    @IBAction func PercentageTap(_ sender: Any) {
        addToDisplay(value: "%")
    }
    
    
    @IBAction func DevideTap(_ sender: Any) {
        addToDisplay(value: "/")
    }
    
    
    @IBAction func MultiplyTap(_ sender: Any) {
        addToDisplay(value: "*")
    }
    
    @IBAction func minusTap(_ sender: Any) {
        addToDisplay(value: "-")
    }
    
    @IBAction func AddTap(_ sender: Any) {
        addToDisplay(value: "+")
    }
    
    @IBAction func equalsToTap(_ sender: Any) {
        
        
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil)
        let resultString = fomatResult(result: result as! Double)
        DisplayScreen.text = resultString
    }
    func fomatResult(result: Double)-> String{
        if(result.truncatingRemainder(dividingBy: 1)==0){
            return String(format: "%.0f", result)
        }else{
            return String(format: "%.2f", result)
        }
    }
    @IBAction func commaTap(_ sender: Any) {
        addToDisplay(value: ".")
    }
    
    @IBAction func nineTap(_ sender: Any) {
        addToDisplay(value: "9")
    }
    
    @IBAction func eightTap(_ sender: Any) {
        addToDisplay(value: "8")
    }
    
    @IBAction func sevenTap(_ sender: Any) {
        addToDisplay(value: "7")
    }
    
    @IBAction func sixTap(_ sender: Any) {
        addToDisplay(value: "6")
    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addToDisplay(value: "5")
    }
    
    
    @IBAction func fourTap(_ sender: Any) {
        addToDisplay(value: "4")
    }
    
    @IBAction func threeTap(_ sender: Any) {
        addToDisplay(value: "3")
    }
    
    @IBAction func twoTap(_ sender: Any) {
        addToDisplay(value: "2")
    }
    
    @IBAction func oneTap(_ sender: Any) {
        addToDisplay(value: "1")
    }
    
    @IBAction func zeroTap(_ sender: Any) {
        addToDisplay(value: "0")
    }
    
    
    
    
}
