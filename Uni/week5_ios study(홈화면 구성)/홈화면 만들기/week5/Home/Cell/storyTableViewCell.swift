//
//  storyTableViewCell.swift
//  week3
//
//  Created by 예리 on 2022/04/12.
//

import UIKit

class storyTableViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    func setCollectionViewDateSourceDelegate(dataSoureDelegate: UICollectionViewDelegate & UICollectionViewDataSource, forRow row: Int)
        {
            collectionView.delegate = dataSoureDelegate
            collectionView.dataSource = dataSoureDelegate
            collectionView.tag = row
            let storyNib = UINib(nibName: "StoryCollectionViewCell", bundle: nil)
            collectionView.register(storyNib, forCellWithReuseIdentifier: "StoryCollectionViewCell")
            
            let flowLayout = UICollectionViewFlowLayout()
            flowLayout.scrollDirection = .horizontal
            flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
            flowLayout.minimumLineSpacing = 12
            
            collectionView.collectionViewLayout = flowLayout
            
            collectionView.reloadData()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
