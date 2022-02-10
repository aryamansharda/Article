//
//  ViewController.swift
//  Article
//
//  Created by Aryaman Sharda on 12/8/21.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet fileprivate(set) var tableView: UITableView!

    var dataSource = [Result.Response]() {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self

        do {
            if let url = Bundle.main.url(forResource: "Article", withExtension: "json"),
               let data = try? Data(contentsOf: url),
               let result = try? JSONDecoder().decode(Result.self, from: data) {
                   dataSource = result.response
           }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch dataSource[indexPath.row] {
        case .heading(let heading):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: HeadingCell.reuseIdentifier, for: indexPath) as? HeadingCell else {
                return UITableViewCell()
            }

            cell.configure(model: heading)
            return cell

        case .paragraph(let paragraph):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ParagraphCell.reuseIdentifier, for: indexPath) as? ParagraphCell else {
                return UITableViewCell()
            }

            cell.configure(model: paragraph)
            return cell

        case .image(let image):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ImageCell.reuseIdentifier, for: indexPath) as? ImageCell else {
                return UITableViewCell()
            }

            cell.configure(model: image)
            return cell

        case .quote(let quote):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: QuoteCell.reuseIdentifier, for: indexPath) as? QuoteCell else {
                return UITableViewCell()
            }

            cell.configure(model: quote)
            return cell
        }
    }
}
