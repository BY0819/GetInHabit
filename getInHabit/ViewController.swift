//
//  ViewController.swift
//  getInHabit
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var rootStackView: UIStackView!
    @IBOutlet var imageStackView: UIStackView!
    
    @IBOutlet var titleImageView: UIImageView!

    @IBOutlet var sleepImageView: UIImageView!
    @IBOutlet var drinkImageView: UIImageView!
    @IBOutlet var excerciseImageView: UIImageView!
    @IBOutlet var eatImageView: UIImageView!
    

    @IBOutlet var sleepButton: UIButton!
    @IBOutlet var drinkButton: UIButton!
    @IBOutlet var excerciseButton: UIButton!
    @IBOutlet var eatButton: UIButton!
    
    let titleImage =  UIImage(named: "title.png")
    let wakeupImage = UIImage(named: "wakeup.png")
    let drinkImage = UIImage(named: "drink.png")
    let excerciseImage = UIImage(named: "excercise.png")
    let eatImage = UIImage(named: "eating.png")
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pinBackground(backgroundView, to: rootStackView)
        titleImageView.image = titleImage
        sleepImageView.image = wakeupImage
        drinkImageView.image = drinkImage
        excerciseImageView.image = excerciseImage
        eatImageView.image = eatImage

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private lazy var backgroundView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor (
            red:255/255.0,
            green:255/255.0,
            blue:235/255.0,
            alpha:1.0
        )
        view.layer.cornerRadius = 10.0
        return view
    }()
    
    private func pinBackground(_ view: UIView, to StackView : UIStackView)
    {
        view.translatesAutoresizingMaskIntoConstraints = false
        StackView.insertSubview(view, at: 0)
        view.pin(to: StackView)
    }
    
}


public extension UIView{
    public func pin(to view: UIView){
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }

}


