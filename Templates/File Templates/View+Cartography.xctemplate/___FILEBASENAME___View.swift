//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import Cartography

public class ___FILEBASENAMEASIDENTIFIER___: UIView {

    public struct Data {
        var foo: String
        public init(_ foo: String) {
            self.foo = foo
        }
    }

    // MARK: - Setup

    public init(_ data: ___FILEBASENAMEASIDENTIFIER___.Data) {
        self.init()
        render(data)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    public required init?(coder aDecoder: NSCoder) { fatalError("nah") }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(exampleLabel)
        constrain(self, exampleLabel) { view, subview in
            subview.edges == view.edges
        }
    }

    // MARK: -

    public func render(_ data: ___FILEBASENAMEASIDENTIFIER___.Data) {
        exampleLabel.text = data.foo
    }

    // MARK: - UI Elements
    
    private lazy var exampleLabel: UILabel = {
        let label = UILabel()
        label.text = "An example of a lazily created UILabel"
        return label
    }()
    
}
