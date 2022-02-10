//
//  QuoteCell.swift
//  Article
//
//  Created by Aryaman Sharda on 2/9/22.
//

import Foundation
import UIKit

final class QuoteCell: UITableViewCell {
    @IBOutlet private(set) var quoteTextLabel: UILabel!
    @IBOutlet private(set) var quoteAuthorLabel: UILabel!

    func configure(model: Quote) {
        quoteTextLabel.text = model.text
        quoteAuthorLabel.text = model.author
    }
}
