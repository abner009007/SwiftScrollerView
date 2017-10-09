//
//  ViewController.swift
//  SwiftScrollerView
//
//  Created by 乐天 on 2017/10/8.
//  Copyright © 2017年 乐天. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow;
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let img = ["findCar_topBanner01", "findCar_topBanner02", "findCar_topBanner03", "findCar_topBanner04"]
        let nextViewController = ScrollerViewController();
        nextViewController.imagesArray = img as NSArray;
        self.present(nextViewController, animated: true, completion: nil);
        
        
    }


}

