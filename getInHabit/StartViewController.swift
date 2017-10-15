//
//  StartViewController.swift
//  getInHabit
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class StartViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var TopImageView: UIImageView!
    @IBOutlet var pickDate: UIDatePicker!
    @IBOutlet var resolutionText: UITextField!
    
    @IBOutlet var viewHidden: UIView!
    @IBOutlet var startDateLabel: UILabel!
    @IBOutlet var endDateLabel: UILabel!
    @IBOutlet var resolutionLabel: UILabel!
    @IBOutlet var resolutioOutLabel: UILabel!
    
    var textInput: String!
    let challenge = UIImage (named: "challenge.png")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TopImageView.image = challenge
        pickDate.datePickerMode = .date
        viewHidden.isHidden = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getDates() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy MMMM dd"
        
        let addDays : TimeInterval = (60 * 60 * 24 * 30)
        
        startDateLabel.text = "시작 날짜 : \(dateFormatter.string(from: self.pickDate.date))"
        
        pickDate.maximumDate = Date(timeInterval: addDays, since: self.pickDate.date)
        
        endDateLabel.text = "종료 날짜 : \(dateFormatter.string(from: self.pickDate.maximumDate!))"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { //delegate method
        textField.resignFirstResponder()
        resolutioOutLabel.text = textField.text
        return true
    }
    
    @IBAction func getView() {
        viewHidden.isHidden = false
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
