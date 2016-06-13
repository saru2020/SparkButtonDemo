//
//  ViewController.swift
//  SparkButtonDemo
//
//  Created by Saravanan on 04/06/16.
//  Copyright © 2016 Saravanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var likeButton: SparkButton!
    var isLiked:Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isLiked = false
    }

    @IBAction func likeButtonTapped(sender: AnyObject) {
        isLiked = !isLiked
        if isLiked == true {
            likeButton.setImage(UIImage(named: "liked"), forState: UIControlState.Normal)
            likeButton.likeBounce(0.6)
            likeButton.animate()
        }
        else{
            likeButton.setImage(UIImage(named: "like"), forState: UIControlState.Normal)
            likeButton.unLikeBounce(0.4)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

