//
//  NewSchoolViewController.swift
//  Northwest-KC-App
//
//  Created by rayaan on 14/03/19.
//  Copyright © 2019 Northwest. All rights reserved.
//

import UIKit

class NewSchoolViewController: UIViewController {

    
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var coachTF: UITextField!
    
    
    @IBAction func cancelBTN(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }//end of cancelBTN method
    
    
    @IBAction func doneBTN(_ sender: Any) {
        
        if nameTF.text != "" , coachTF.text != ""{
        let school = School(name: nameTF.text!, coach: coachTF.text!, teams: [])
        Schools.shared.add(school: school)
        }
         self.dismiss(animated: true, completion: nil)
    }//end of doneBTN method
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
