//
//  ViewController.swift
//  MVVMDemo
//
//  Created by Chun-Li Cheng on 2021/12/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var profileTbvCellVM = ProfileTbvCellViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        profileTbvCellVM.people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(ProfileTableViewCell.self)", for: indexPath) as? ProfileTableViewCell else {
            return UITableViewCell()
        }
        cell.setupCell(with: profileTbvCellVM.people[indexPath.row])
        
        return cell
    }
    
    
}

