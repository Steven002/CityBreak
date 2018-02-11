//
//  LoginVC.swift
//  2ndTryPVC
//
//  Created by Nathaniel Kristopher Blanquel on 7/25/17.
//  Copyright © 2017 Nathaniel Kristopher Blanquel. All rights reserved.
//

import UIKit

class LoginGateVC: UIViewController {

    @IBAction func nextViewButtonPressed(sender: AnyObject){
        DispatchQueue.main.async(){
            
            self.performSegue(withIdentifier: "TheSegue", sender: self)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
