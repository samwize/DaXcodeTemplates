//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("nah") }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(exampleLabel)
        
        // Create auto layout constraints for the views
    }
    
    // MARK: - UI Elements
    
    private lazy var exampleLabel: UILabel = {
        let label = UILabel()
        label.text = "An example of a lazily created UILabel"
        return label
    }()
    
}
