//
//  ParagraphCell.swift
//  Article
//
//  Created by Aryaman Sharda on 2/9/22.
//

import Foundation
import UIKit

final class ParagraphCell: UITableViewCell {
    @IBOutlet private(set) var paragraphLabel: UILabel!

    func configure(model: Paragraph) {
        paragraphLabel.text = model.text
    }
}
