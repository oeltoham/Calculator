//
//  ViewController.swift
//  Omar_Eltohamy_Calculator_Project1
//
//  Created by oeltoham on 9/12/17.
//  Copyright © 2017 oeltoham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var CalcScreenNumb:Double = 0;
    var CalcPrev:Double=0;
    var CalcMathPerf = false
    var CalcOper = 0;
    @IBOutlet weak var CalcLabel: UILabel!
    
    @IBAction func CalcNumbers(_ sender: UIButton)
    {
        if CalcMathPerf == true {
            if sender.tag == 17 {
                self.CalcLabel.text = String(".")
            }
            else
            {self.CalcLabel.text = String(sender.tag-1)
            self.CalcScreenNumb = Double(self.CalcLabel.text!)!
            self.CalcMathPerf = false
            }}
        else
        {
            if sender.tag == 17 {
                self.CalcLabel.text = String(".")
            }
            else{
            self.CalcLabel.text = self.CalcLabel.text! + String(sender.tag-1)
            self.CalcScreenNumb = Double(self.CalcLabel.text!)!
            }}
       
    }

    
    @IBAction func CalcOthers(_ sender: UIButton)
    {
        if CalcLabel.text != "" && sender.tag != 16
        {
            CalcPrev = Double(CalcLabel.text!)!
            if sender.tag == 11
            {
                CalcLabel.text = ""
                CalcPrev = 0
                CalcScreenNumb = 0
                CalcOper = 0}
            else if sender.tag == 12 //Division
            {
                CalcLabel.text = "/";
            }
            else if sender.tag == 13 //Multiplication
            {
                CalcLabel.text = "*";
            }
            else if sender.tag == 14 //Subtraction
            {
                CalcLabel.text = "-";
            }
            else if sender.tag == 15 //Addition
            {
                CalcLabel.text = "+";
            }
            else if sender.tag == 18
            {
                CalcLabel.text = "+/-";
            }
            CalcOper = sender.tag
            CalcMathPerf = true;
        }
        else if sender.tag == 16
        {
        
            if self.CalcOper == 12
            {
                CalcLabel.text = String(CalcPrev / CalcScreenNumb)
            }
            else if self.CalcOper == 13
            {
                CalcLabel.text = String(CalcPrev * CalcScreenNumb)
            }
            else if self.CalcOper == 14
            {
                CalcLabel.text = String(CalcPrev - CalcScreenNumb)
            }
            else if self.CalcOper == 15
            {
                CalcLabel.text = String(CalcPrev + CalcScreenNumb)
            }
            else if self.CalcOper == 18
            {
                CalcScreenNumb = CalcScreenNumb * -1;
                CalcLabel.text = "\(CalcScreenNumb)"
            }
     
    
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    }
