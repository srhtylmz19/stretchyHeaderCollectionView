//
//  HeaderCollectionViewCell.swift
//  stretchyHeaderCollectionView
//
//  Created by Serhat Yılmaz on 17.04.2019.
//  Copyright © 2019 Serhat Yılmaz. All rights reserved.
//

import UIKit

class HeaderCollectionViewCell: UICollectionReusableView {
    static let cellId = "headerCellId"
    
    var animator : UIViewPropertyAnimator!
    
    let headerContainerView : UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .purple
        return view
    }()
    
    let imageView : UIImageView = {
        let image = UIImageView(frame: .zero)
        image.image = UIImage(named: "header")
        image.contentMode = .scaleAspectFill
        return image
    }()

    let blufEffect : UIBlurEffect = {
        let blurEffect = UIBlurEffect(style: .regular)
        return blurEffect
    }()
    
    var visualEffect : UIVisualEffectView = {
        let visualEffect = UIVisualEffectView()
        return visualEffect
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupVisualEffect()

    }
    fileprivate func setupVisualEffect(){
        animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear, animations: { [weak self] in
            self!.visualEffect = UIVisualEffectView(effect: self?.blufEffect)
          
            self?.headerContainerView.addSubview(self!.visualEffect)
            self!.visualEffect.anchor(top: self?.headerContainerView.topAnchor, leading: self?.headerContainerView.leadingAnchor, bottom: self?.headerContainerView.bottomAnchor, trailing: self?.headerContainerView.trailingAnchor, paddingTop: 0, paddingleft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, centerX: nil, centerY: nil)

        })
        
       // animator.fractionComplete will be affected by collection view controller..
    }
    
   
    fileprivate func setupView(){
        setupAddView()
        setupAddAnchor()
    }
    fileprivate func setupAddView(){
        addSubview(headerContainerView)
        headerContainerView.addSubview(imageView)

    }
    fileprivate func setupAddAnchor(){
        headerContainerView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, paddingTop: 0, paddingleft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, centerX: nil, centerY: nil)
        imageView.anchor(top: headerContainerView.topAnchor, leading: headerContainerView.leadingAnchor, bottom: headerContainerView.bottomAnchor, trailing: headerContainerView.trailingAnchor, paddingTop: 0, paddingleft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, centerX: nil, centerY: nil)

    }
  
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
