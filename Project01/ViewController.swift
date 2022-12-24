//
//  ViewController.swift
//  Project01
//
//  Created by Priyank Patel on 2022-10-11.
//

import UIKit

class ViewController: UIViewController {
    
    public var x1 = 0
    public var x2 = 0
    public var x3 = 0
    public var x4 = 0
    public var x5 = 0
    public var x6 = 0
    public var j = 1
    
    
    @IBOutlet var buttons: [UIButton]!
    
    
    @IBOutlet var raw1: [UILabel]!
    
    @IBOutlet var raw2: [UILabel]!
    
    @IBOutlet var raw3: [UILabel]!
    
    @IBOutlet var raw4: [UILabel]!
    
    @IBOutlet var raw5: [UILabel]!
    
    @IBOutlet var raw6: [UILabel]!
    
    @IBOutlet weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //test
        //Another change
        
        submitButton.isEnabled = false
    }
    
    @IBAction func validateButton(_ sender: Any) {
        switch(j){
        case 1:
            validateRaw1()
            if  raw1[0].text == "I" && raw1[1].text == "N" && raw1[2].text == "D" && raw1[3].text == "I" && raw1[4].text == "A"{
                print("Correct Word")
                correctAlert()
                clearScreen()
                
            }
            else{
                wrongwordAlert()
            }
            
            j += 1
            submitButton.isEnabled = false
            break
            
        case 2:
            validateRaw2()
            if  raw2[0].text == "I" && raw2[1].text == "N" && raw2[2].text == "D" && raw2[3].text == "I" && raw2[4].text == "A"{
                print("Correct Word")
                correctAlert()
                clearScreen()
                
            }
            else{
                wrongwordAlert()
            }
            j += 1
            submitButton.isEnabled = false
            break
        case 3:
            validateRaw3()
            if  raw3[0].text == "I" && raw3[1].text == "N" && raw3[2].text == "D" && raw3[3].text == "I" && raw3[4].text == "A"{
                print("Correct Word")
                correctAlert()
                clearScreen()
                
            }
            else{
                wrongwordAlert()
            }
            j += 1
            submitButton.isEnabled = false
            break
        case 4:
            validateRaw4()
            if  raw4[0].text == "I" && raw4[1].text == "N" && raw4[2].text == "D" && raw4[3].text == "I" && raw4[4].text == "A"{
                print("Correct Word")
                correctAlert()
                clearScreen()
                
                
            }
            else{
                wrongwordAlert()
            }
            j += 1
            submitButton.isEnabled = false
            break
        case 5:
            validateRaw5()
            if  raw5[0].text == "I" && raw5[1].text == "N" && raw5[2].text == "D" && raw5[3].text == "I" && raw5[4].text == "A"{
                print("Correct Word")
                correctAlert()
                clearScreen()
            }
            else{
                wrongwordAlert()
            }
            j += 1
            submitButton.isEnabled = false
            break
        case 6:
            validateRaw6()
            if  raw6[0].text == "I" && raw6[1].text == "N" && raw6[2].text == "D" && raw6[3].text == "I" && raw6[4].text == "A"{
                print("Correct Word")
                correctAlert()
                clearScreen()
                
            }
            else{
                wrongwordAlert()
                clearScreen()
            }
            j += 1
            submitButton.isEnabled = false
            break
       
            
        
            
        

        default:
            print("default")
        }
  
        
  
    }
    @IBAction func btnR(_ sender: UIButton) {
        // ((UIButton)sender).viewWithTag(<#T##Int#>)
        //  (sender as! UIButton).viewWithTag(1)
        
       let buttonTitle = sender.titleLabel?.text ?? ""
        
            addRaws(lable: buttonTitle)
        
        print(sender.titleLabel?.text ?? 0)
       
        }
    
    private func correctAlert(){
        let alert = UIAlertController(title: "Authentication", message: "Correct Word..!", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default){
            _ in print("ok button pressed on wrong password")
        }
        alert.addAction(okButton)
        self.show(alert, sender: nil)
        
    }
    private func wrongwordAlert(){
        let alert = UIAlertController(title: "Authentication", message: "Word is not known", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default){
            _ in print("wrong")
        }
        alert.addAction(okButton)
        self.show(alert, sender: nil)
    }
    
    private func addRaws(lable: String){
        if (x1 < 5) {
            if lable == "Back"{
                x1 -= 1
                raw1[x1].text = ""
                return
        }
            
            raw1[x1].text = lable
            x1 += 1
            
            if x1 == 5{
                submitButton.isEnabled = true
//                if lable == "Submit Word"{
//                    print("validate here")
//                    
//                    return
//                }
//               
               return
           }
            
        }
        else if x2 < 5 {
            if lable == "Back"{
                x2 -= 1
                raw2[x2].text = ""
                
                return
            }
            raw2[x2].text = lable
            x2 += 1
            
            if x2 == 5{
                submitButton.isEnabled = true
                if lable == "Submit Word"{
                    print("validate here")
                    
                    return
                }
               
               return
           }

            
        }
        else if x3 < 5 {
            if lable == "Back"{
                x3 -= 1
                raw3[x3].text = ""
                
                return
            }
            raw3[x3].text = lable
            x3 += 1
            
            if x3 == 5{
                submitButton.isEnabled = true
                if lable == "Submit Word"{
                    print("validate here")
                    
                    return
                }
               
               return
           }

        }
        else if x4 < 5 {
            if lable == "Back"{
                x4 -= 1
                raw4[x4].text = ""
               
                return
            }
            raw4[x4].text = lable
            x4 += 1
            
            if x4 == 5{
                submitButton.isEnabled = true
                if lable == "Submit Word"{
                    print("validate here")
                    
                    return
                }
               
               return
           }
            
        }
        else if x5 < 5 {
            if lable == "Back"{
                x5 -= 1
                raw5[x5].text = ""
                
                return
            }
            raw5[x5].text = lable
            x5 += 1
            if x5 == 5{
                submitButton.isEnabled = true
                if lable == "Submit Word"{
                    print("validate here")
                    
                    return
                }
               
               return
           }
            
        }
        else if x6 < 5 {
            if lable == "Back"{
                x6 -= 1
                raw6[x6].text = ""
                
                return
            }
            raw6[x6].text = lable
            x6 += 1
            
            if x6 == 5{
                submitButton.isEnabled = true
                if lable == "Submit Word"{
                    print("validate here")
                    
                    return
                }
               
               return
           }
        }
        
            
        
       
    }
    private func validateRaw1(){
        for x in 0...4{
            raw1[x].backgroundColor = UIColor.darkGray
            if  raw1[x].text == "N" || raw1[x].text == "I" || raw1[x].text == "D" || raw1[x].text == "A" {
                raw1[x].backgroundColor = UIColor.systemOrange
                
                
                if raw1[0].text == "I"{
                    raw1[0].backgroundColor = UIColor.systemTeal
                    buttons[7].tintColor = UIColor.systemTeal
                }
                if raw1[1].text == "N"{
                    raw1[1].backgroundColor = UIColor.systemTeal
                    buttons[24].tintColor = UIColor.systemTeal
                }
                if raw1[2].text == "D"{
                    raw1[2].backgroundColor = UIColor.systemTeal
                    buttons[12].tintColor = UIColor.systemTeal
                }
                if raw1[3].text == "I"{
                    raw1[3].backgroundColor = UIColor.systemTeal
                    buttons[7].tintColor = UIColor.systemTeal
                }
                if raw1[4].text == "A"{
                    raw1[4].backgroundColor = UIColor.systemTeal
                    buttons[10].tintColor = UIColor.systemTeal
                }
            }
        }
    }
    
    private func validateRaw2(){
        for x in 0...4{
            raw2[x].backgroundColor = UIColor.darkGray
            print(raw2[x].text ?? "")
            if  raw2[x].text == "N" || raw2[x].text == "I" || raw2[x].text == "D" || raw2[x].text == "A" {
                raw2[x].backgroundColor = UIColor.systemOrange
                if raw2[0].text == "I"{
                    raw2[0].backgroundColor = UIColor.systemTeal
                }
                if raw2[1].text == "N"{
                    raw2[1].backgroundColor = UIColor.systemTeal
                }
                if raw2[2].text == "D"{
                    raw2[2].backgroundColor = UIColor.systemTeal
                }
                if raw2[3].text == "I"{
                    raw2[3].backgroundColor = UIColor.systemTeal
                }
                if raw2[4].text == "A"{
                    raw2[4].backgroundColor = UIColor.systemTeal
                }
            }
        }
    }
    private func validateRaw3(){
        for x in 0...4{
            raw3[x].backgroundColor = UIColor.darkGray
            print(raw3[x].text ?? "")
            if  raw3[x].text == "N" || raw3[x].text == "I" || raw3[x].text == "D" || raw3[x].text == "A" {
                raw3[x].backgroundColor = UIColor.systemOrange
                if raw3[0].text == "I"{
                    raw3[0].backgroundColor = UIColor.systemTeal
                }
                if raw3[1].text == "N"{
                    raw3[1].backgroundColor = UIColor.systemTeal
                }
                if raw3[2].text == "D"{
                    raw3[2].backgroundColor = UIColor.systemTeal
                }
                if raw3[3].text == "I"{
                    raw3[3].backgroundColor = UIColor.systemTeal
                }
                if raw3[4].text == "A"{
                    raw3[4].backgroundColor = UIColor.systemTeal
                }
            }
        }
    }
    private func validateRaw4(){
        for x in 0...4{
            raw4[x].backgroundColor = UIColor.darkGray
            print(raw4[x].text ?? "")
            if  raw4[x].text == "N" || raw4[x].text == "I" || raw4[x].text == "D" || raw4[x].text == "A" {
                raw4[x].backgroundColor = UIColor.systemOrange
                if raw4[0].text == "I"{
                    raw4[0].backgroundColor = UIColor.systemTeal
                }
                if raw4[1].text == "N"{
                    raw4[1].backgroundColor = UIColor.systemTeal
                }
                if raw4[2].text == "D"{
                    raw4[2].backgroundColor = UIColor.systemTeal
                }
                if raw4[3].text == "I"{
                    raw4[3].backgroundColor = UIColor.systemTeal
                }
                if raw4[4].text == "A"{
                    raw4[4].backgroundColor = UIColor.systemTeal
                }
            }
        }
    }
    private func validateRaw5(){
        for x in 0...4{
            raw5[x].backgroundColor = UIColor.darkGray
            print(raw5[x].text ?? "")
            if  raw5[x].text == "N" || raw5[x].text == "I" || raw5[x].text == "D" || raw5[x].text == "A" {
                raw5[x].backgroundColor = UIColor.systemOrange
                if raw5[0].text == "I"{
                    raw5[0].backgroundColor = UIColor.systemTeal
                }
                if raw5[1].text == "N"{
                    raw5[1].backgroundColor = UIColor.systemTeal
                }
                if raw5[2].text == "D"{
                    raw5[2].backgroundColor = UIColor.systemTeal
                }
                if raw5[3].text == "I"{
                    raw5[3].backgroundColor = UIColor.systemTeal
                }
                if raw5[4].text == "A"{
                    raw5[4].backgroundColor = UIColor.systemTeal
                }
            }
        }
    }
    private func validateRaw6(){
        for x in 0...4{
            raw6[x].backgroundColor = UIColor.darkGray
            print(raw6[x].text ?? "")
            if  raw6[x].text == "N" || raw6[x].text == "I" || raw6[x].text == "D" || raw6[x].text == "A" {
                raw6[x].backgroundColor = UIColor.systemOrange
                if raw6[0].text == "I"{
                    raw6[0].backgroundColor = UIColor.systemTeal
                }
                if raw6[1].text == "N"{
                    raw6[1].backgroundColor = UIColor.systemTeal
                }
                if raw6[2].text == "D"{
                    raw6[2].backgroundColor = UIColor.systemTeal
                }
                if raw6[3].text == "I"{
                    raw6[3].backgroundColor = UIColor.systemTeal
                }
                if raw6[4].text == "A"{
                    raw6[4].backgroundColor = UIColor.systemTeal
                }
            }
        }
    }
    
    private func clearScreen(){
        
        for x in 0...4{
            raw1[x].text = ""
            raw1[x].backgroundColor = UIColor.lightGray
            raw2[x].text = ""
            raw2[x].backgroundColor = UIColor.lightGray
            raw3[x].text = ""
            raw3[x].backgroundColor = UIColor.lightGray
            raw4[x].text = ""
            raw4[x].backgroundColor = UIColor.lightGray
            raw5[x].text = ""
            raw5[x].backgroundColor = UIColor.lightGray
            raw6[x].text = ""
            raw6[x].backgroundColor = UIColor.lightGray
            x1 = 0
            x2 = 0
            x3 = 0
            x4 = 0
            x5 = 0
            x6 = 0
            j = 0
        
        
        }
        
    }
    
    
   
                
}

    
