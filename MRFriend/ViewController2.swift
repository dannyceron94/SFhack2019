//
//  ViewController2.swift
//  MRFriend
//
//  Created by Danny on 3/2/19.
//  Copyright © 2019 Danny Ceron. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let name = Auth.auth().currentUser?.email as! String
    }
    

    @IBAction func logOut(_ sender: UIButton) {
        try! Auth.auth().signOut()
        performSegue(withIdentifier: "segue2", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
