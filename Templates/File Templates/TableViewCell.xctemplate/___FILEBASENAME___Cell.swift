//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import Cartography

final class ___FILEBASENAMEASIDENTIFIER___: UITableViewCell {

    struct Data {
        var foo: String
    }

    // MARK: - Setup

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) { fatalError("") }

    private func setupView() {
        contentView.addSubview(fooLabel)
        constrain(contentView, fooLabel) { view, subview in
            subview.left == view.left
            subview.right == view.right
            subview.top == view.top
            subview.bottom == view.bottom ~ UILayoutPriority.defaultHigh // Workaround might be needed for autolayout
        }
    }

    // MARK: -

    func render(_ data: ___FILEBASENAMEASIDENTIFIER___.Data) {
        fooLabel.text = data.foo
    }

    // MARK: - UI Elements

    private lazy var fooLabel: UILabel = {
        let x = UILabel()
        return x
    }()

}
