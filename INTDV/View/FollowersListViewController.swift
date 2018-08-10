//
//  FollowersListViewController.swift
//  INTDV
//
//  Created by MIS on 8/8/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class FollowersListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    let followersViewModel = FollowersListViewModel()
    var refreshControl: UIRefreshControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        followersViewModel.getFollowers()
        updateTableViewWithData()
        handleError()
    }
    
    func setupUI()  {
        self.refreshControl = UIRefreshControl()
        self.refreshControl.addTarget(self, action: #selector(refreshData), for: UIControlEvents.valueChanged)
        self.refreshControl.tintColor = UIColor.purple
        self.tableView.refreshControl = refreshControl
        activityIndicator.startAnimating()
    }
    
   @objc func refreshData() {
        followersViewModel.getFollowers()
    }
    
    func updateTableViewWithData() {
        followersViewModel.updateTable = {[weak self] in
            DispatchQueue.main.async {
                self?.refreshControl.endRefreshing()
                self?.activityIndicator.stopAnimating()
                self?.tableView.reloadData()
            }
        }
    }
    
    func handleError()  {
        followersViewModel.handleError = {[weak self]error in
            self?.activityIndicator.stopAnimating()
            if error == ErrorCode.NoInternet
            {
                showAlert(title: "", message: "Please check your internet connection", vc: self!, closure: nil)
            }else{
                showAlert(title: "", message: "Something went wrong", vc: self!, closure: nil)
            }
        }
    }
    
    //MARK: TableView DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return followersViewModel.followers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollowerCell", for: indexPath) as! FollowerTableViewCell
        let follower = followersViewModel.followers[indexPath.row]
        cell.fillData(user: follower)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "FollowerDetails", sender: indexPath.row)
    }
    
    //MARK: prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FollowerDetails" {
            let row = sender as! Int
            let user = followersViewModel.followers[row]
            let vc = segue.destination as! FollowerDetailsViewController
            vc.setUser(userObj: user)
        }
    }

}
