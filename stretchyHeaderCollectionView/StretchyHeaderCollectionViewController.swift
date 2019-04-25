//
//  stretchyHeaderCollectionViewController.swift
//  stretchyHeaderCollectionView
//
//  Created by Serhat Yılmaz on 17.04.2019.
//  Copyright © 2019 Serhat Yılmaz. All rights reserved.
//

import UIKit


class StretchyHeaderCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var people:[UserModel]? = []
 
    var headerView : HeaderCollectionViewCell? = nil
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUsers()
        collectionView.backgroundColor = UIColor.rgb(red: 21, green: 22, blue: 33)
        setupCollectionViewLayout()
        registerCollectionView()
    }
    fileprivate func setUsers(){
        
        let p6 = UserModel(gender: "female", name: "Filiz SERT")
        let p1 = UserModel(gender: "male", name: "Serhat YILMAZ")
        let p10 = UserModel(gender: "female", name: "Rümeysa EFE")
        let p12 = UserModel(gender: "male", name: "Berker CAN")
        let p7 = UserModel(gender: "female", name: "Zehra GERİM")
        let p2 = UserModel(gender: "male", name: "Burak BERBER")
        let p8 = UserModel(gender: "female", name: "Azra GERİM")
        let p3 = UserModel(gender: "male", name: "Emre AKBUDAK")
        let p4 = UserModel(gender: "male", name: "Harzemşah AKTÜRK")
        let p9 = UserModel(gender: "female", name: "Leyla EFE")
        let p5 = UserModel(gender: "male", name: "Yusuf ÇINAR")
        let p11 = UserModel(gender: "male", name: "Batuhan AYDOĞAN")
        
        people?.append(contentsOf: [p6,p1,p10,p12,p7,p2,p8,p3,p4,p9,p5,p11])

    }
    fileprivate func setupCollectionViewLayout() {
        collectionView.contentInsetAdjustmentBehavior = .never
    }
    fileprivate func registerCollectionView() {
        collectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: MainCollectionViewCell.cellId)
        collectionView.register(HeaderCollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionViewCell.cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.cellId, for: indexPath) as! MainCollectionViewCell
        cell.user = people![indexPath.row]
        return cell
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let contentOffsetY =  scrollView.contentOffset.y
        
        if contentOffsetY > 0 {
            headerView?.animator.fractionComplete = 0
            return
        }
        headerView?.animator.fractionComplete = abs(contentOffsetY) / 100
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionViewCell.cellId, for: indexPath) as! HeaderCollectionViewCell
        
        return headerView!
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 250)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 30.0, left: 1.0, bottom: 1.0, right: 1.0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }

    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 30, height: 80)
    }
    
  

}
