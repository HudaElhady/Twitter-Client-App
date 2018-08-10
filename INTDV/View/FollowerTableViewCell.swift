//
//  FollowerTableViewCell.swift
//  INTDV
//
//  Created by MIS on 8/8/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit
import Kingfisher

class FollowerTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var UserNameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setStyle()
        
    }
    
    func fillData(user : User){
        if let image = user.profileImageUrl {
            let url = URL(string: image)
            userImage.kf.setImage(with: url)
        }else{
            userImage.image = nil
        }
        UserNameLabel.text = user.name
        if let bio = user.descriptionField {
            bioLabel.text = bio
        }else{
            bioLabel.text = ""
        }
    }
    
    func setStyle() {
        containerView.layer.cornerRadius = 3
        containerView.clipsToBounds = true
        userImage.layer.cornerRadius = userImage.frame.width / 2
        userImage.layer.borderWidth = 1.5
        userImage.layer.borderColor = UIColor.purple.cgColor
    }

}
