//
//  AppTableViewCell.swift
//  Demo
//
//  Created by Peter Pan on 2023/1/11.
//

import UIKit

protocol AppTableViewCellDelegate: AnyObject {
    func buyAppButtonTap(sender: BuyButton)
}

class AppTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var buyButton: BuyButton!
    @IBOutlet weak var iconImageView: UIImageView!
    weak var delegate: AppTableViewCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func buyAppButtonTap(_ sender: BuyButton) {
        
        delegate?.buyAppButtonTap(sender: sender)
    }
}
