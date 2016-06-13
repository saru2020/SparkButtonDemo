//
//  SparkButton.swift
//  SparkButtonDemo
//
//  Created by Saravanan on 04/06/16.
//  Copyright © 2016 Saravanan. All rights reserved.
//

import Foundation
import UIKit

class SparkButton: UIButton{

    var sparkView:SparkView!
    
    //    MARK: -Initializers
    override init (frame : CGRect) {
        super.init(frame : frame)
        setup()
    }
    
    convenience init () {
        self.init(frame:CGRect.zero)
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.sparkView.frame = self.bounds
        self.insertSubview(self.sparkView, atIndex: 0)
    }
    
    //    MARK: -Setup Methods
    func setup(){
        self.clipsToBounds = false;
        
        self.sparkView = SparkView()
//        self.sparkView.backgroundColor = UIColor.redColor()
        self.insertSubview(self.sparkView, atIndex: 0)
    }
    
    func animate () {
        let delay = dispatch_time(DISPATCH_TIME_NOW, Int64(0.1 * Double(NSEC_PER_SEC)))
        dispatch_after(delay, dispatch_get_main_queue()) {
            self.sparkView.animate()
        };
    }

//    MARK: Bouncing Animations
    func likeBounce (duration: NSTimeInterval) {
        self.transform = CGAffineTransformIdentity
        UIView.animateKeyframesWithDuration(duration, delay: 0, options: UIViewKeyframeAnimationOptions.CalculationModeLinear, animations: {
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransformMakeScale(1.6, 1.6);
            })
            
            UIView.addKeyframeWithRelativeStartTime(1/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransformMakeScale(0.6, 0.6);
            })
            
            UIView.addKeyframeWithRelativeStartTime(2/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransformMakeScale(1.3, 1.3);
            })
            
            UIView.addKeyframeWithRelativeStartTime(3/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransformMakeScale(0.8, 0.8);
            })
            
            UIView.addKeyframeWithRelativeStartTime(4/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransformMakeScale(1.0, 1.0);
            })
            
            }, completion: {finished in
                
        })
        
    }
    
    func unLikeBounce (duration: NSTimeInterval) {
        self.transform = CGAffineTransformIdentity
        UIView.animateKeyframesWithDuration(duration, delay: 0, options: UIViewKeyframeAnimationOptions.CalculationModeLinear, animations: {
            
            UIView.addKeyframeWithRelativeStartTime(1/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransformMakeScale(0.6, 0.6);
            })
                        
            UIView.addKeyframeWithRelativeStartTime(3/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransformMakeScale(0.8, 0.8);
            })
            
            UIView.addKeyframeWithRelativeStartTime(4/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransformMakeScale(1.0, 1.0);
            })
            
            }, completion: {finished in
                
        })
        
    }

}