//
//  ViewController.swift
//  MRFriend
//
//  Created by Danny on 3/2/19.
//  Copyright © 2019 Danny Ceron. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseUI

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTxt: UITextField!

    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var actionButton: UIButton!
    
    @IBAction func action(_ sender: UIButton) {
        if emailTxt.text != "" && passwordTxt.text != ""
        {
            if segmentControl.selectedSegmentIndex == 0
            {
                Auth.auth().signIn(withEmail: emailTxt.text!, password: passwordTxt.text!, completion:{(user,Error)in
                    if user != nil
                    {
                        //sign in
                        self.performSegue(withIdentifier: "segue", sender: self)

                    }else
                    {
                        if let myError = Error?.localizedDescription
                        {
                            print(myError)
                            
                        }
                        else{print("Error")
                            
                        }
                        
                    }
                    
                })
            }
            else
            {//sign up
                Auth.auth().createUser(withEmail: emailTxt.text!, password: passwordTxt.text!, completion: {(user,Error)in
                    if user != nil{
                        //sign up
                        print("Signed up!")
                        self.performSegue(withIdentifier: "segue", sender: self)
                        
                    }
                    else
                    {
                        if let myError = Error?.localizedDescription
                        {
                            print(myError)
                            
                        }
                        else{print("Error")
                            
                        }
                    }
                    
                })
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    
}//end of viewController

