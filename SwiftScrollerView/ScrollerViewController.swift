//
//  ScrollerViewController.swift
//  SwiftScrollerView
//
//  Created by 乐天 on 2017/10/8.
//  Copyright © 2017年 乐天. All rights reserved.
//

import UIKit

class ScrollerViewController: UIViewController ,UIScrollViewDelegate{
    
    var imagesArray = NSArray();
    let scrollerView = UIScrollView();
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
//        self.navigationController?.isNavigationBarHidden = true;
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated);
//        self.navigationController?.isNavigationBarHidden = false;
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red;
        
        
        self.creatScrollerViewControllerUI();
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.dismiss(animated: true, completion: nil);
//        self.navigationController?.popViewController(animated: true);
    }
    
    func creatScrollerViewControllerUI() {
        
        print(self.imagesArray);
        
        scrollerView.frame = CGRect(x:0,y:100,width:self.view.bounds.size.width,height:self.view.bounds.size.height-200);
        scrollerView.contentSize = CGSize(width:self.view.bounds.size.width*CGFloat(self.imagesArray.count),height:scrollerView.bounds.size.height);
        scrollerView.isPagingEnabled = true;
        scrollerView.bounces = true;
        scrollerView.delegate = self;
        self.view.addSubview(scrollerView);
        
        for imageIndex in 0..<self.imagesArray.count
        {
            let imageView = UIImageView(frame:CGRect(x:scrollerView.bounds.size.width*CGFloat(imageIndex),y:0,width:scrollerView.frame.size.width,height:scrollerView.bounds.size.height));
            imageView.image = UIImage(named:self.imagesArray[imageIndex] as! String);
            imageView.isUserInteractionEnabled = true;
            imageView.backgroundColor = UIColor.white;
            scrollerView.addSubview(imageView);
        }
    }
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        print("abner")
        self.dismiss(animated: true, completion: nil);
//        self.navigationController?.popViewController(animated: true);
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x < -100 {
            print("abner")
            self.dismiss(animated: true, completion: nil);
        }
    }

}
