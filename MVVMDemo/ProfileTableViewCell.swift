//
//  ProfileTableViewCell.swift
//  MVVMDemo
//
//  Created by Chun-Li Cheng on 2021/12/12.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var trailingLabel: UILabel!
    
    func setupCell(with viewModel: Person) {
        titleLabel.text = viewModel.name
        trailingLabel.text = viewModel.birthMonth
    }

}
