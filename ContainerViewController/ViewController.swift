//
//  ViewController.swift
//  ContainerViewController
//
//  Created by Shubam Vijay Yeme on 14/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    let secondVC = secondViewController()
    let thirdVC = thirdViewController()

    @IBOutlet weak var segmentCntrl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    
    private func setup(){
        addChild(secondVC)
        addChild(thirdVC)
        
        self.view.addSubview(secondVC.view)
        self.view.addSubview(thirdVC.view)
        
        secondVC.didMove(toParent: self)
        thirdVC.didMove(toParent: self)
        
        secondVC.view.frame = self.view.frame
        thirdVC.view.frame = self.view.frame
        
        thirdVC.view.isHidden = true
    }

    @IBAction func segmentCntrlTap(segment : UISegmentedControl) {
        secondVC.view.isHidden = true
        thirdVC.view.isHidden = true
        
        if(segment.selectedSegmentIndex == 0){
            secondVC.view.isHidden = false
        }else{
            thirdVC.view.isHidden = false
        }
    }
    
}

