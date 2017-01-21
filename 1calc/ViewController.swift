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
    
         
    var mon : Double = 0//モニタ1
    var a : Double = 0//モニタ1
    var cal : Double = 0//計算
    var enz : Int = 1//演算子の振り分け
    var han : Int = 0//数字入力判定用
    
    
    @IBAction func but1(sender: AnyObject) {
        a = 1
        han = 1
         mon = mon*10 + a
        genjituText.text = String(mon)
    }
   
    @IBAction func but2(sender: AnyObject) {
        a = 2
        han = 1
        mon = mon*10 + a
        genjituText.text = String(mon)
    }
    
    @IBAction func but3(sender: AnyObject) {
        a = 3
        han = 1
        mon = mon*10 + a
        genjituText.text = String(mon)
    }
    
    @IBAction func but4(sender: AnyObject) {
        a = 4
        han = 1
        mon = mon*10 + a
        genjituText.text = String(mon)    }
    
    @IBAction func but5(sender: AnyObject) {
        a = 5
        han = 1
        mon = mon*10 + a
        genjituText.text = String(mon)    }
    
    @IBAction func but6(sender: AnyObject) {
        a = 6
        han = 1
        mon = mon*10 + a
        genjituText.text = String(mon)
    }
    
    @IBAction func but7(sender: AnyObject) {
        a = 7
        han = 1
        mon = mon*10 + a
        genjituText.text = String(mon)
    }
    
    @IBAction func but8(sender: AnyObject) {
        a = 8
        han = 1
        mon = mon*10 + a
        genjituText.text = String(mon)
    }
    
   
    @IBAction func but9(sender: AnyObject) {
        a = 9
        han = 1
        mon = mon*10 + a
        genjituText.text = String(mon)
    }
    
    @IBAction func but0(sender: AnyObject) {
        a = 0
        han = 1
        mon = mon*10 + a
        genjituText.text = String(mon)
    }
    
    
    
    
    
    
    @IBAction func but(sender: AnyObject) {
        if han == 0{
        }
        else if enz == 1{
            cal = cal + mon
        }
        else if enz == 2{
            cal = cal - mon
        }
        else if enz == 3{
            cal = cal * mon
        }
        else if enz == 4{
            cal = cal / mon
        }
        enz = 1
        mon = 0
        han = 0
        genjituText.text = String(cal)
    }
    
    @IBAction func butMai(sender: AnyObject) {
        if han == 0{
        }
        else if enz == 1{
            cal = cal + mon
        }
        else if enz == 2{
            cal = cal - mon
        }
        else if enz == 3{
            cal = cal * mon
        }
        else if enz == 4{
            cal = cal / mon
        }
        enz = 2
        mon = 0
        han = 0
        genjituText.text = String(cal)
    }
    
    @IBAction func butKak(sender: AnyObject) {
        
        if han == 0{
        }
        else if enz == 1{
            cal = cal + mon
        }
        else if enz == 2{
            cal = cal - mon
        }
        else if enz == 3{
            cal = cal * mon
        }
        else if enz == 4{
            cal = cal / cal
        }
        enz = 3
        mon = 0
        han = 0
        genjituText.text = String(cal)
    }

    @IBAction func butWar(sender: AnyObject) {
        if han == 0{
        }
        else if enz == 1{
            cal = cal + mon
        }
        else if enz == 2{
            cal = cal - mon
        }
        else if enz == 3{
            cal = cal * mon
        }
        else if enz == 4{
            cal = cal / mon
        }
        enz = 4
        mon = 0
        han = 0
        genjituText.text = String(cal)
        
    }

 
    
    
    
    @IBAction func butAc(sender: AnyObject) {
        cal = 0
        mon = 0
        enz = 1
        han = 0
        genjituText.text = String(cal)
    }

    
    
    
   
    @IBAction func butgen(sender: AnyObject) {
        if enz == 1{
            cal = cal + mon
             genjituText.text = String(cal)
        }else if enz == 2{
            cal = cal - mon
            genjituText.text = String(cal)
        }else if enz == 3{
            cal = cal * mon
            genjituText.text = String(cal)
        }else if enz == 4{
            cal = cal / mon
            genjituText.text = String(cal)
        }
        print(mon)
        han = 0
    }
}