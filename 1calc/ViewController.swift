//
//  ViewController.swift
//  1calc
//
//  Created by 管理者 on 2017/01/13.
//  Copyright © 2017年 Shoko. All rights reserved.
//

import UIKit



    
    
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


 
    @IBOutlet weak var genjituText: UITextField!
    
   
   
    
    //genjituText.text = mon
    
  //textField.genjituText = UIKeyboardType.Number
    
    var mon : Int = 0//モニタ1
    var a : Int = 0//モニタ1
    var cal : Int = 0//計算
    var enz : Int = 1//演算子の振り分け
    
    
    @IBAction func but1(sender: AnyObject) {
        a = 1
         mon = mon*10 + a
        genjituText.text = String(mon)
    }
   
    @IBAction func but2(sender: AnyObject) {
        a = 2
        mon = mon*10 + a
        genjituText.text = String(mon)
    }
    
    @IBAction func but3(sender: AnyObject) {
        a = 3
        mon = mon*10 + a
        genjituText.text = String(mon)
    }
    
    
    
    @IBAction func but(sender: AnyObject) {
        if enz == 1{
            cal = cal + mon
        }
        if enz == 2{
            cal = cal - mon
        }
        if mon == 0{
        }else{
            enz = 1
            mon = 0
        }
        genjituText.text = String(cal)
    }
    
    @IBAction func butMai(sender: AnyObject) {
        if enz == 1{
            cal = cal + mon
        }
        if enz == 2{
            cal = cal - mon
        }
        
        if mon == 0{
        }else{
            enz = 2
            mon = 0
        }
        genjituText.text = String(cal)
    }
    
    @IBAction func butAc(sender: AnyObject) {
        cal = 0
        mon = 0
        enz = 1
        genjituText.text = String(cal)
    }

    
    
    
   
    @IBAction func butgen(sender: AnyObject) {
        if enz == 1{
            cal = cal + mon
             genjituText.text = String(cal)
        }else if enz == 2{
            cal = cal - mon
            genjituText.text = String(cal)
        }
        
    }
    
    
    
    
    
}

