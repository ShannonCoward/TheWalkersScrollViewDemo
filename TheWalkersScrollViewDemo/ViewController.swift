//
//  ViewController.swift
//  TheWalkersScrollViewDemo
//
//  Created by Shannon Coward on 6/9/16.
//  Copyright © 2016 Shannon Coward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollview: UIScrollView!
    
    let WIDTH: CGFloat = 240
    let HEIGHT: CGFloat = 397

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for x in 0...5 {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollview.addSubview(imgView)
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 345, WIDTH, HEIGHT)
        }
        
        scrollview.contentSize = CGSizeMake(WIDTH * 5, scrollview.frame.size.height)
    }
}
 