//
//  ViewController.swift
//  Psychologist
//
//  Created by Zoe Jin on 18/08/15.
//  Copyright (c) 2015 Zoe Jin. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {
    
    @IBAction func nothing(sender: UIButton) {
        performSegueWithIdentifier("nothing", sender: nil)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as? UIViewController
        
        if let navCon = destination as? UINavigationController {
            destination = navCon.visibleViewController
        }
        
        if let hvc = destination as? HappinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "sad": hvc.happiness = 0
                    case "happy": hvc.happiness = 100
                    case "nothing": hvc.happiness = 50
                    default: hvc.happiness = 25
                }
            }
        }
    }

}

