//
//  eatViewController.swift
//  getInHabit
//
//  Created by SWUCOMPUTER on 2017. 10. 14..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class eatViewController: UIViewController {
    
    @IBOutlet var viewHidden: UIView!
    @IBOutlet var imageHidden: UIImageView!
    @IBOutlet var progressBar: UIProgressView!
    
    let backgroundImage = UIImage(named: "buttonBackground.png")
    let horray = UIImage(named: "hooray.png")
    
    let background = UIImageView(frame: UIScreen.main.bounds)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageHidden.image = horray
        background.image = backgroundImage
        background.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(background, at: 0)
        viewHidden.isHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getValue(_ sender: UIButton) {
        self.progressBar.progress += 0.034
        sender.isEnabled = false
        
        
        if self.progressBar.progress == 1.0 {
            viewHidden.isHidden = false
        }
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
