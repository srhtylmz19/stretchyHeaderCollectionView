//
//  MainCollectionViewCell.swift
//  stretchyHeaderCollectionView
//
//  Created by Serhat Yılmaz on 17.04.2019.
//  Copyright © 2019 Serhat Yılmaz. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    static let cellId = "cellId"
    

    var user : UserModel? {
        didSet {
            guard let user = user else {return}
            nameLabelText.text = user.name
            if user.gender ==  "female" {
                userProfileImageView.image = UIImage(named: "woman_user")
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    let containerView : UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor.rgb(red: 234, green: 46, blue: 111)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let userProfileImageView : UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "usr")
        imageView.layer.cornerRadius = 30
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let profileEditImageView : UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "edit")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameLabelText : UILabel = {
        let label = UILabel(frame: .zero)
        label.textAlignment = .center
        label.textColor = .white
        label.font =  UIFont(name: "Chalkduster", size: 14.0)
        label.text = "DEFAULT USER NAME"
        return label
    }()
    
    fileprivate func setupView(){
        setupAddView()
        setupAddAnchor()
    }
    fileprivate func setupAddView(){
        addSubview(containerView)
        containerView.addSubview(nameLabelText)
        containerView.addSubview(userProfileImageView)
        containerView.addSubview(profileEditImageView)
    }
    fileprivate func setupAddAnchor(){
        containerView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, paddingTop: 10, paddingleft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, centerX: nil, centerY: nil)
        
        nameLabelText.anchor(top: nil, leading: userProfileImageView.trailingAnchor, bottom: nil, trailing: nil, paddingTop: 0, paddingleft: 20, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, centerX: nil , centerY: containerView.centerYAnchor)
      
        userProfileImageView.anchor(top: nil, leading: leadingAnchor, bottom: nil, trailing: nil, paddingTop: 0, paddingleft: 15, paddingBottom: 0, paddingRight: 0, width: 60, height: 60, centerX: nil, centerY: containerView.centerYAnchor)
        
        profileEditImageView.anchor(top: nil, leading: nil, bottom: nil, trailing: trailingAnchor, paddingTop: 0, paddingleft: 0, paddingBottom: 0, paddingRight: 15, width: 25, height: 25, centerX: nil, centerY: containerView.centerYAnchor)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
