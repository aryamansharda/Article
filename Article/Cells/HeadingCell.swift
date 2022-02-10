//
//  HeadingCell.swift
//  Article
//
//  Created by Aryaman Sharda on 2/9/22.
//

import Foundation
import UIKit

final class HeadingCell: UITableViewCell {
    @IBOutlet private(set) var headingLabel: UILabel!

    func configure(model: Heading) {
        headingLabel.text = model.text
        headingLabel.font = UIFont.boldSystemFont(ofSize: CGFloat(model.size))
    }
}
