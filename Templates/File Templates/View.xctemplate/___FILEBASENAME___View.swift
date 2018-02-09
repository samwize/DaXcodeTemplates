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
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("nah")
    }
    
    private func setupViews() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(exampleLabel)
        
        // Create auto layout constraints for the views
    }
    
    // MARK: - UI Elements
    
    private lazy var exampleLabel: UILabel = {
        let label = UILabel()
        label.text = LS("An example of a lazily created UILabel")
        return label
    }()
    
}
