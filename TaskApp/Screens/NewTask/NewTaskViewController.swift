import UIKit


protocol NewTaskViewControllerProtocol {
    
}


class NewTaskViewController: UIViewController {
    // MARK: - View Model
    
    private let viewModel = NewTaskViewModel()
    // MARK: - Views
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}


extension NewTaskViewController: NewTaskViewControllerProtocol {
    
}
