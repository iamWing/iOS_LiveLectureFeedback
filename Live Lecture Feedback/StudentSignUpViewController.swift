//
//  StudentSignUpViewController.swift
//  Live Lecture Feedback
//
//  Created by (s) Mark Thompson on 31/03/2017.
//  Copyright © 2017 Devtography. All rights reserved.
//

import UIKit

class StudentSignUpViewController: UIViewController {
    
    var sSessionId : String?

    @IBOutlet weak var studentSessionIdOutlet: UITextField!
    @IBOutlet weak var studentSessionSubmitOutlet: UIButton!
    @IBOutlet weak var studentSessionExitOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func studentSessionSubmitAction(_ sender: Any) {
    }
    
    @IBAction func studentSessionExitAction(_ sender: Any) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
