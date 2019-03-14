//
//  NewTeamViewController.swift
//  Northwest-KC-App
//
//  Created by rayaan on 14/03/19.
//  Copyright © 2019 Northwest. All rights reserved.
//

import UIKit

class NewTeamViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var teamNameTF: UITextField!
    
    @IBOutlet weak var student0TF: UITextField!
    
    @IBOutlet weak var student1TF: UITextField!
    
    @IBOutlet weak var student2TF: UITextField!
    
    var school:School!
    
    @IBAction func cancelBTN(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }//end of cancelBTN method
    
    @IBAction func doneBTN(_ sender: Any) {
        let team = Team(name: teamNameTF.text!, students:[student0TF.text!,student1TF.text!,student2TF.text!])
        
        if teamNameTF.text != "" && (student0TF.text != "" || student1TF.text != "" || student2TF.text != "")  {
         school.addTeam(name: team.name, students: team.students)
            self.dismiss(animated: true, completion: nil)
        }
    }//end of doneBTN method
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
