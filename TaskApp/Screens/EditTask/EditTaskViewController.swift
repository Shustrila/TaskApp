import UIKit


protocol EditTaskViewControllerProtocol {
    
}


class EditTaskViewController: UIViewController {
    // MARK: - View Model
    
    private let viewModel = EditTaskViewModel()
    // MARK: - Views
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension EditTaskViewController: EditTaskViewControllerProtocol {
    
}
