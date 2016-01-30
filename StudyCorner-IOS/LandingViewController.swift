//
//  LandingViewController.swift
//  StudyCorner-IOS
//
//  Created by Aidan Gadberry on 1/29/16.
//  Copyright © 2016 Brad Bernard. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
        
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBarHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func loginPressed(sender: AnyObject) {
        print("test")
        let loginVC = self.storyboard!.instantiateViewControllerWithIdentifier("LoginVC") as! LoginViewController
        self.navigationController?.pushViewController(loginVC, animated: true);
    }
    
    @IBAction func registerPressed(sender: AnyObject) {
        print("reg")
        let registerVC = self.storyboard!.instantiateViewControllerWithIdentifier("RegistrationVC") as! RegisterViewController
        print(registerVC)
        print(self.navigationController)
        self.navigationController?.pushViewController(registerVC, animated: true);
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
