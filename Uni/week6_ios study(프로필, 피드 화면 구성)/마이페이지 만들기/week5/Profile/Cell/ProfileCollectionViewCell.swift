//
//  ProfileCollectionViewCell.swift
//  week5
//
//  Created by 예리 on 2022/04/15.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    static let identifier = "ProfileCollectionViewCell"
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var addProfileImageView: UIImageView!
    @IBOutlet weak var profileEditeButton: UIButton!
    @IBOutlet weak var addFriendButton: UIButton!
    
    @IBOutlet weak var postingCountLabel: UILabel!
    
    @IBOutlet weak var folloerCountLabel: UILabel!
    @IBOutlet weak var followingCountLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAttribute()
        // Initialization code
    }

    private func setupAttribute() {
        profileImageView.layer.cornerRadius = 44 // 88/2
        addProfileImageView.layer.cornerRadius = 12
        
        profileImageView.layer.borderColor = UIColor.darkGray.cgColor
        profileImageView.layer.borderWidth = 1
        
        profileEditeButton.layer.cornerRadius = 5
        profileEditeButton.layer.borderColor =
        UIColor.lightGray.cgColor
        profileEditeButton.layer.borderWidth = 1
        
        addFriendButton.layer.cornerRadius = 4
        addFriendButton.layer.borderColor =
        UIColor.lightGray.cgColor
        addFriendButton.layer.borderWidth = 1
        
        [postingCountLabel, folloerCountLabel, followingCountLabel]
            .forEach {$0?.text = "\(Int.random(in: 0...10))"}

    }
}
