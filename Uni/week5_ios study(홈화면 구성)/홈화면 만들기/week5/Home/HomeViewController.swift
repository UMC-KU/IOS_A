//
//  HomeViewController.swift
//  week3
//
//  Created by 예리 on 2022/04/08.
//

import UIKit

class HomeViewController: UIViewController{
                            //UITableViewDelegate, UITableViewDataSource {
    //func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //한 섹션에 몇개의 셀을 넣을 건지 numberOfRowsInSection으로 정의}
    
    //func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //어떤 셀을 보여줄 것인지}
    //이렇게 하면 코드가 길어지니깐 extention을 사용한다

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        let feeddNib = UINib(nibName: "FeedTableViewCell", bundle: nil)
        tableView.register(feeddNib, forCellReuseIdentifier: "FeedTableViewCell")
        let storyNib = UINib(nibName: "storyTableViewCell", bundle: nil)
        tableView.register(storyNib, forCellReuseIdentifier: "storyTableViewCell")
    }
    

}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.row == 0 {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "storyTableViewCell", for: indexPath) as? storyTableViewCell
            else {
            return UITableViewCell()
        }
        return cell
    } else {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as? FeedTableViewCell
            else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none
        return cell
    }
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 80
        }else {
            return 600
        }
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let tableVeiwCell = cell as? storyTableViewCell else {
            return
        }
        tableVeiwCell.setCollectionViewDateSourceDelegate(dataSoureDelegate: self, forRow: indexPath.row)
    }
}

extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as?
                StoryCollectionViewCell else{
                    return UICollectionViewCell()
                }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 60)
    }
}


