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
        self.insertSubview(self.sparkView, at: 0)
    }
    
    //    MARK: -Setup Methods
    func setup(){
        self.clipsToBounds = false;
        
        self.sparkView = SparkView()
//        self.sparkView.backgroundColor = UIColor.redColor()
        self.insertSubview(self.sparkView, at: 0)
    }
    
    func animate () {
        let delay = DispatchTime.now() + Double(Int64(0.1 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delay) {
            self.sparkView.animate()
        };
    }

//    MARK: Bouncing Animations
    func likeBounce (_ duration: TimeInterval) {
        self.transform = CGAffineTransform.identity
        UIView.animateKeyframes(withDuration: duration, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransform(scaleX: 1.6, y: 1.6);
            })
            
            UIView.addKeyframe(withRelativeStartTime: 1/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransform(scaleX: 0.6, y: 0.6);
            })
            
            UIView.addKeyframe(withRelativeStartTime: 2/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransform(scaleX: 1.3, y: 1.3);
            })
            
            UIView.addKeyframe(withRelativeStartTime: 3/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8);
            })
            
            UIView.addKeyframe(withRelativeStartTime: 4/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0);
            })
            
            }, completion: {finished in
                
        })
        
    }
    
    func unLikeBounce (_ duration: TimeInterval) {
        self.transform = CGAffineTransform.identity
        UIView.animateKeyframes(withDuration: duration, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 1/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransform(scaleX: 0.6, y: 0.6);
            })
                        
            UIView.addKeyframe(withRelativeStartTime: 3/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8);
            })
            
            UIView.addKeyframe(withRelativeStartTime: 4/5, relativeDuration: 1/5, animations: {
                self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0);
            })
            
            }, completion: {finished in
                
        })
        
    }

}
