//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    var viewModel: ___VARIABLE_productName:identifier___ViewModel!
    
    init(viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        bindViews()
    }
    
    private func setupViews() {
        addSubview(exampleLabel)
        
        // Create auto layout constraints for the views
    }
    
    private func bindViews() {
        exampleLabel.text = "Updated text"
    }
    
    // MARK: - UI Elements
    
    private lazy var exampleLabel: UILabel = {
        let label = UILabel()
        label.text = LS("An example of a lazily created UILabel")
        return label
    }()
    
}
