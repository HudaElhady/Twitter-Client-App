//
//  TweetTableViewCell.swift
//  INTDV
//
//  Created by MIS on 8/9/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var tweetLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setStyle()
        
    }

    func fillData(tweet : TweetData){
        if let tweetText = tweet.text
        {
        tweetLabel.text = tweetText
        }else{
            tweetLabel.text = ""
        }
    }
    func setStyle() {
        containerView.layer.cornerRadius = 2.5
        containerView.clipsToBounds = true
       
    }
}
