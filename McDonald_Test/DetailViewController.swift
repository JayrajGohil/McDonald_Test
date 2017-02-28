//
//  DetailViewController.swift
//  McDonald_Test
//
//  Created by Jayrajkumar Gohil on 2/27/17.
//  Copyright © 2017 Jayrajkumar Gohil. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblWebsite: UILabel!
    @IBOutlet weak var lblCompany: UILabel!
    @IBOutlet weak var lblAddress: UILabel!

    var user:UserResult = UserResult(fromDictionary: NSDictionary())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // set navigation title
        self.navigationItem.title = user.name
        
        // load data
        self.lblName.text = "Username: \(user.username!)"
        self.lblEmail.text = "Email: \(user.email!)"
        self.lblPhone.text = "Phone: \(user.phone!)"
        self.lblWebsite.text = "Website: \(user.website!)"
        self.lblCompany.text = "Company: \(user.company.name!)"
        self.lblAddress.text = "Address:\n\(user.address.street!), \(user.address.suite!) \n\(user.address.city!)-\(user.address.zipcode!)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Button Action Method
    
    @IBAction func pressShowPostBtn(_ sender: AnyObject) {
        let postVC = storyboard?.instantiateViewController(withIdentifier: "PostTableViewController") as! PostTableViewController
        postVC.user = self.user
        navigationController?.pushViewController(postVC, animated: true)
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
