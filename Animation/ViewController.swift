//
//  ViewController.swift
//  Animation
//
//  Created by mocha on 7/28/15.
//  Copyright (c) 2015 mocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var animation: UIImageView!
    
    var names = ["frame1.png", "frame2.png", "frame3.png", "frame4.png", "frame5.png", "frame6.png", "frame7.png", "frame8.png", "frame9.png", "frame10.png", "frame11.png", "frame12.png", "frame13.png", "frame14.png", "frame15.png"];
    
    var timer = NSTimer();
    
    @IBAction func update(sender: AnyObject) {
        if(timer.valid) {
            timer.invalidate();
        } else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true);
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doAnimation() {
        animation.image = UIImage(named: names[0]);
        var tmp = names[0];
        names.removeAtIndex(0);
        names.append(tmp);
    }

//    override func viewDidLayoutSubviews() {
//        //animation.center = CGPointMake(animation.center.x - 400, animation.center.y);
//        //animation.alpha = 0;
//        animation.frame = CGRectMake(100, 20, 0, 0);
//    }
//    
//    override func viewDidAppear(animated: Bool) {
//        UIView.animateWithDuration(1, animations: { () -> Void in
//            //self.animation.center = CGPointMake(self.animation.center.x + 400, self.animation.center.y);
//            //self.animation.alpha = 1;
//            self.animation.frame = CGRectMake(100, 20, 100, 200);
//        })
//    }
}

