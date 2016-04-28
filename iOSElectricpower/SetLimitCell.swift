//
//  SettingLimitCell.swift
//  iOSDataChart
//
//  Created by Chotipat on 4/25/2559 BE.
//  Copyright © 2559 Chotipat. All rights reserved.
//

import UIKit
import RealmSwift

class SetLimitCell: UITableViewCell {
    @IBOutlet var ImageView: UIImageView!
    @IBOutlet var OutletName: UILabel!
    @IBOutlet var Power: UILabel!
    @IBOutlet var Limit: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}