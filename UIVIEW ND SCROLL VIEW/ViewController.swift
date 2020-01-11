//
//  ViewController.swift
//  UIVIEW ND SCROLL VIEW
//
//  Created by Syed.Reshma Ruksana on 23/09/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var componentType:UIView!
    var componentAxis:UIView!
    var components:UIScrollView!
    
    
    
    var labelSwitch:UISwitch!
    var buttonSwitch:UISwitch!
    var switchSwitch:UISwitch!
    
    
    var horizontalSwitch:UISwitch!
    var verticalSwitch:UISwitch!
    
    var horizontalLabel:UILabel!
    var verticalLabel:UILabel!
    
    
    var labelLabel:UILabel!
    var switchLabel:UILabel!
    var buttonLabel:UILabel!
    
    
    var labelArray=[UILabel]()
    var buttonArray=[UIButton]()
    var switchArray=[UISwitch]()
    
    
    
    var slider:UISlider!
    var stepper:UIStepper!
    var create:UIButton!
    var count:UILabel!
    var labeli:UILabel!
    var buttoni:UIButton!
    var switchi:UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        createUI()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func createUI()
        
    {
        

        
        
        componentType=UIView()
        componentType.frame=CGRect(x: 20, y: 50, width: 200, height: 130)
        componentType.backgroundColor=UIColor.red
        view.addSubview(componentType)
        
        
        
        componentAxis=UIView()
        componentAxis.frame=CGRect(x: 230, y: 70, width: 170, height: 100)
        componentAxis.backgroundColor=UIColor.green
        view.addSubview(componentAxis)
        
        
        components=UIScrollView()
        components.frame=CGRect(x: 20, y: 300, width: 2000, height: 2000)
        components.contentSize=CGSize(width: 12000, height: 7000)
        components.backgroundColor=UIColor.cyan
        view.addSubview(components)
        
        
        
        
        labelLabel=UILabel()
        labelLabel.frame=CGRect(x: 20, y: 5, width: 100, height: 30)
        labelLabel.text="     Label"
        labelLabel.textColor=UIColor.red
        labelLabel.backgroundColor=UIColor.yellow
        componentType.addSubview(labelLabel)
        
        
        labelSwitch=UISwitch()
        labelSwitch.frame=CGRect(x: 140, y: 5, width: 100, height: 100)
        labelSwitch.setOn(false, animated: true)
        labelSwitch.addTarget(self, action: #selector(onSwitchChange(changedSwitch: )),for:UIControl.Event.valueChanged)
        componentType.addSubview(labelSwitch)
        
        
        
        buttonLabel=UILabel()
        buttonLabel.frame=CGRect(x: 20, y: 45, width: 100, height: 30)
        buttonLabel.text="     Button"
        buttonLabel.textColor=UIColor.red
        buttonLabel.backgroundColor=UIColor.yellow
        componentType.addSubview(buttonLabel)
        
        
        buttonSwitch=UISwitch()
        buttonSwitch.frame=CGRect(x: 140, y: 45, width: 100, height: 100)
        buttonSwitch.addTarget(self, action: #selector(onSwitchChange),for:UIControl.Event.valueChanged)
        buttonSwitch.setOn(false, animated: true)
        componentType.addSubview(buttonSwitch)
        
        
        
        switchLabel=UILabel()
        switchLabel.frame=CGRect(x: 20, y: 85, width: 100, height: 30)
        switchLabel.text="     Switch"
        switchLabel.textColor=UIColor.red
        switchLabel.backgroundColor=UIColor.yellow
        componentType.addSubview(switchLabel)
        
        
        
        switchSwitch=UISwitch()
        switchSwitch.frame=CGRect(x: 140, y: 85, width: 100, height: 100)
        switchSwitch.addTarget(self, action: #selector(onSwitchChange),for:UIControl.Event.valueChanged)
        switchSwitch.setOn(false, animated: true)
        componentType.addSubview(switchSwitch)
        
        
        slider=UISlider()
        slider.frame=CGRect(x: 30, y: 200, width: 150, height: 50)
        slider.minimumValue=0
        slider.maximumValue=1000
        slider.minimumTrackTintColor=UIColor.black
        slider.maximumTrackTintColor=UIColor.brown
        slider.thumbTintColor=UIColor.blue
        slider.addTarget(self, action: #selector(onSliderChange), for: UIControl.Event.valueChanged)
        view.addSubview(slider)
        
        
        
        stepper=UIStepper()
        stepper.frame=CGRect(x: 300, y: 250, width: 100, height: 100)
        stepper.minimumValue=0
        stepper.maximumValue=1000
        stepper.addTarget(self, action: #selector(onStepperChange), for: UIControl.Event.valueChanged)
        view.addSubview(stepper)
        
        
        
        create=UIButton(type: UIButton.ButtonType.system)
        create.frame=CGRect(x: 150, y: 250, width: 50, height: 40)
        create.addTarget(self, action: #selector(onButtonTap), for: UIControl.Event.touchUpInside)
        create.setTitle("Create", for: UIControl.State.normal)
        create.setTitleColor(UIColor.red, for: UIControl.State.normal)
        view.addSubview(create)
        
        
        
        verticalLabel=UILabel()
        verticalLabel.frame=CGRect(x: 10, y: 10, width: 80, height: 30)
        verticalLabel.text="Vertical"
        verticalLabel.textColor=UIColor.red
        verticalLabel.backgroundColor=UIColor.yellow
        componentAxis.addSubview(verticalLabel)
        
        
        verticalSwitch=UISwitch()
        verticalSwitch.frame=CGRect(x: 100, y: 10, width: 100, height: 100)
        verticalSwitch.setOn(false, animated: true)
        verticalSwitch.addTarget(self, action: #selector(onSwitchChange(changedSwitch: )),for:UIControl.Event.valueChanged)
        componentAxis.addSubview(verticalSwitch)
        
        
        
        horizontalLabel=UILabel()
        horizontalLabel.frame=CGRect(x: 10, y: 45, width: 80, height: 30)
        horizontalLabel.text="Horizontal"
        horizontalLabel.textColor=UIColor.red
        horizontalLabel.backgroundColor=UIColor.yellow
        componentAxis.addSubview(horizontalLabel)
        
        
        
        horizontalSwitch=UISwitch()
        horizontalSwitch.frame=CGRect(x: 100, y: 45, width: 100, height: 100)
        horizontalSwitch.setOn(false, animated: true)
        horizontalSwitch.addTarget(self, action: #selector(onSwitchChange(changedSwitch: )),for:UIControl.Event.valueChanged)
        componentAxis.addSubview(horizontalSwitch)
        
        
    }
  
    @objc func onSwitchChange(changedSwitch:UISwitch)
        
    {
        
        if(changedSwitch==labelSwitch)
            
        {
            
            if(changedSwitch.isOn==true)
                
            {
                
                print("Label Switch is ON")
                
                buttonSwitch.setOn(false, animated: true)
                
                switchSwitch.setOn(false, animated: true)
                
            }
                
            else{
                
                print("label switch is OFF")
                
            }
            
        }
        
        if(changedSwitch==buttonSwitch)
            
        {
            
            if(changedSwitch.isOn==true)
                
            {
                
                print("Button Switch is ON")
                
                labelSwitch.setOn(false, animated: true)
                
                switchSwitch.setOn(false, animated: true)
                
            }
                
            else{
                
                print("button swith is OFF")
                
            }
            
        }
        
        if(changedSwitch==switchSwitch)
            
        {
            
            if(changedSwitch.isOn==true)
                
            {
                
                print("switch Switch is ON")
                
                buttonSwitch.setOn(false, animated: true)
                
                labelSwitch.setOn(false, animated: true)
                
            }
                
            else
                
            {
               
                print("switch switch is OFF")
                
            }
            
        }
        
        if(changedSwitch==horizontalSwitch)
        {
            if(changedSwitch.isOn==true)
                
            {
                verticalSwitch.setOn(false, animated: true)
                
                print("Horizontal Switch is ON")
            }
            else{
                
                print("Horizontal Switch is OFF")
            }
            
        }
        
        if(changedSwitch==verticalSwitch)
        {
            if(changedSwitch.isOn==true)
            {
                horizontalSwitch.setOn(false, animated:true)
                
                print("Vertical Switch is ON")
                
            }
                
            else{
                
                print("Vertical switch is OFF")
                
            }
        }
    }
    
    
    @objc func onStepperChange()
     
    {
    
        print("stepper value changed to \(stepper.value)")
     
        slider.setValue(Float(stepper.value), animated: true)
        
        
        count=UILabel()
        count.backgroundColor=UIColor.red
        count.textColor=UIColor.white
        count.text = String(Int(stepper.value))
        count.frame=CGRect(x: 300, y: 200, width: 50, height: 50)
        view.addSubview(count)
        
        
        
        stepper.addTarget(self, action: #selector(onButtonTap), for: UIControl.Event.valueChanged)
        
    }
    
    @objc func onSliderChange()
        
    {
       
        stepper.value=Double(slider.value)
        
        count=UILabel()
        count.backgroundColor=UIColor.red
        count.textColor=UIColor.white
        count.text = String(Int(slider.value))
        count.frame=CGRect(x: 300, y: 200, width: 50, height: 50)
        view.addSubview(count)
        
    }
    
    @objc func onButtonTap()
    {
        
        for val in labelArray{
            
            val.removeFromSuperview()
            
        }
        
        for val in buttonArray{
            
            val.removeFromSuperview()
            
        }
        
        for val in switchArray{
            
            val.removeFromSuperview()
            
        }
        
        var value1=Int(slider.value)
        
        if(labelSwitch.isOn==true && horizontalSwitch.isOn==true)
            
        {
            
            var labelx:UInt16=10
            
            var labely:UInt16=40
            
            for i in 1...value1
                
            {
               
                if(labelx >= 400)
                    
                {
                   
                    labelx=10
                    
                    labely=labely+30
                    
                }
                
                labeli=UILabel()
                
                labelArray.append(labeli)
                
                labeli.frame=CGRect(x: Int(labelx), y: Int(labely), width: 50, height: 20)
                
                labeli.text="\(i)"
                
                labeli.backgroundColor=UIColor.green
                
                labeli.textColor=UIColor.red
                
                components.addSubview(labeli)
                
                labelx=labelx+70
                
            }
            
        }
        
        if(buttonSwitch.isOn==true && horizontalSwitch.isOn==true)
            
        {
            
            var labelx:UInt16=10
            
            var labely:UInt16=40
            
            for i in 1...value1
                
            {
               
                if(labelx >= 400 )
                    
                {
                   labelx=10
                    
                    labely=labely+30
                    
                }
                
                buttoni=UIButton()
                
                buttonArray.append(buttoni)
                
                buttoni.frame=CGRect(x: Int(labelx), y: Int(labely), width: 50, height: 20)
                
                buttoni.setTitle("\(i)", for: UIControl.State.normal)
                
                buttoni.backgroundColor=UIColor.purple
                
                components.addSubview(buttoni)
                
                labelx=labelx+70
                
            }
        }
        
        if(switchSwitch.isOn==true && horizontalSwitch.isOn==true)
            
        {
           
            var labelx:UInt16=10
            
            var labely:UInt16=40
            
            for i in 1...value1
                
            {
              
                if(labelx >= 400)
                    
                {
                    
                    labelx=10
                    
                    labely=labely+30
                    
                }
                
                switchi=UISwitch()
                
                switchArray.append(switchi)
                
                switchi.frame=CGRect(x: Int(labelx), y: Int(labely), width: 30, height: 20)
                
                switchi.backgroundColor=UIColor.yellow
                
                switchi.setOn(true, animated: true)
                
                components.addSubview(switchi)
                
                labelx=labelx+70

            }
            
        }
        
        if(labelSwitch.isOn==true && verticalSwitch.isOn==true)
            
        {
           
            var labelx:UInt16=10
            
            var labely:UInt16=40
            
            for i in 1...value1
                
            {
               
                if(labely >= 750)
                    
                {
                  
                    labely=40
                    
                    labelx=labelx+70
                    
                }
                
                labeli=UILabel()
                
                labelArray.append(labeli)
                
                labeli.frame=CGRect(x: Int(labelx), y: Int(labely), width: 50, height: 30)
                
                labeli.text="\(i)"
                
                labeli.backgroundColor=UIColor.green
                
                labeli.textColor=UIColor.red
                
                components.addSubview(labeli)
                
                labely=labely+50
                
            }
            
        }
        
        if(buttonSwitch.isOn==true && verticalSwitch.isOn==true)
            
        {
            
            var labelx:UInt16=10
            
            var labely:UInt16=40
            
            for i in 1...value1
                
            {
                
                if(labely >= 750)
                    
                {
                    
                    labely=40
                    
                    labelx=labelx+70
                    
                }
                
                buttoni=UIButton()
                
                buttonArray.append(buttoni)
                
                buttoni.frame=CGRect(x: Int(labelx), y: Int(labely), width: 50, height: 30)
                
                buttoni.setTitle("\(i)", for: UIControl.State.normal)
                
                buttoni.backgroundColor=UIColor.blue
                
                components.addSubview(buttoni)
                
                labely=labely+50
                
            }
            
        }
        
        if(switchSwitch.isOn==true && verticalSwitch.isOn==true)
            
        {
            
            var labelx:UInt16=10
            
            var labely:UInt16=40
            
            for i in 1...value1
                
            {
                
                if(labely >= 750 )
                    
                {
                    
                    labely=40
                    
                    labelx=labelx+70
                    
                }
                
                switchi=UISwitch()
                
                switchArray.append(switchi)
                
                switchi.frame=CGRect(x: Int(labelx), y: Int(labely), width: 30, height: 30)
                
                switchi.backgroundColor=UIColor.yellow
                
                switchi.setOn(true, animated: true)
                
                components.addSubview(switchi)
                
                labely=labely+50
                
            }
            
        }
        
    }
     
}


