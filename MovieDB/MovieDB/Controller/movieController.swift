//
//  movieController.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 07/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit

class movieController:UICollectionViewController,UICollectionViewDelegateFlowLayout{
    
    var pageData:page!
    var cellHeight:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor=UIColor.white
        collectionView.showsVerticalScrollIndicator=false
        collectionView.showsHorizontalScrollIndicator=false
        cellHeight=collectionView.safeAreaLayoutGuide.layoutFrame.height/2.5
        collectionView.register(movieCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView.register(movieHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerId")
        fetchData() // movieController extension
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header=collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerId", for: indexPath)as! movieHeader
        return header
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height/20)
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(pageData==nil){return 0}
        return pageData.results.count
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailedMovie = detailedMovieView()
        detailedMovie.Movie=pageData.results[indexPath.item]
        navigationController?.pushViewController(detailedMovie, animated: true)
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)as! movieCell
        cell.Movie=pageData.results[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.safeAreaLayoutGuide.layoutFrame.width-20, height: cellHeight)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return view.frame.height/60
    }
    //changing orientation
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        cellHeight=collectionView.safeAreaLayoutGuide.layoutFrame.height
        collectionView.collectionViewLayout.invalidateLayout()
    }
}
