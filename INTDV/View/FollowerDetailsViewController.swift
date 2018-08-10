//
//  FollowerDetailsViewController.swift
//  INTDV
//
//  Created by MIS on 8/9/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class FollowerDetailsViewController: UIViewController , UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView!
    let followerDetailVM = FollowerDetailsViewModel()
    
    var user : User!
    let imageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsetsMake(200, 0, 0, 0) 
        activityIndicator.startAnimating()
    }

    func setUser(userObj: User) {
        user = userObj
        navigationItem.title = user.name
            setBackgroundImage()
        followerDetailVM.getTweets(userName: user.screenName)
        followerDetailVM.updateTable = {[weak self] in
            DispatchQueue.main.async {
                self?.activityIndicator.stopAnimating()
                self?.tableView.reloadData()
            }
        }
        followerDetailVM.handleError = {[weak self]error in
            self?.activityIndicator.stopAnimating()
            if error == ErrorCode.NoInternet
            {
                showAlert(title: "", message: "Please check your internet connection", vc: self!, closure: nil)
            }else{
                showAlert(title: "", message: "Something went wrong", vc: self!, closure: nil)
            }
        }
    }
    func setBackgroundImage() {
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 200)
        if let backgroundImg = user.profileBannerUrl
        {
        imageView.kf.setImage(with: URL(string:backgroundImg))
        }else{
            imageView.backgroundColor = UIColor.purple
        }
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        view.addSubview(imageView)
    }
    
    //MARK: TableView DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return followerDetailVM.tweetsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TweetCell", for: indexPath) as! TweetTableViewCell
        let tweet = followerDetailVM.tweetsArr[indexPath.row]
        cell.fillData(tweet: tweet)
        return cell
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = 200 - (scrollView.contentOffset.y + 200)
        let height = min(max(y, 170), 500)
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: height)
    }
}
