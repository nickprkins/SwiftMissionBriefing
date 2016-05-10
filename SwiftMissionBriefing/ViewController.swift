//
//  ViewController.swift
//  SwiftMissionBriefing
//
//  Created by Nick Perkins on 5/10/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var agentNameTextField: UITextField!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var missionBriefingLabel: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        agentNameTextField.text = ""
        greetingLabel.text = ""
        passwordTextField.text = ""
        missionBriefingLabel.text = ""
    }
    
    @IBAction func authenticateButton(sender: UIButton) {
        
        if agentNameTextField.isFirstResponder() {
            agentNameTextField.resignFirstResponder()
        }
        
        if (!agentNameTextField.text!.isEmpty) {
            var firstName = agentNameTextField.text?.componentsSeparatedByString(" ").first
            var lastName =  agentNameTextField.text?.componentsSeparatedByString(" ").last
            var string1 = "GOOD EVENING, AGENT "
            var string2 = "!"
            var specialGreeting = string1 + lastName! + string2
            greetingLabel.text = specialGreeting
        
        var fullMissionText = "This mission will be an arduous one, fraught with peril. You will cover much strange and unfamiliar territory. Should you choose to accept this mission, Agent \(lastName!), you will certainly be disavowed, but you will be doing your country a great service. This message will self destruct in 5 seconds."
            
      missionBriefingLabel.text = fullMissionText
            
        view.backgroundColor = .greenColor()
        missionBriefingLabel.backgroundColor = .greenColor()
            
        }else{
            
        view.backgroundColor = .redColor()
        missionBriefingLabel.backgroundColor = .redColor()
        
    }

    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

}