import Foundation
import UIKit


protocol MainCoordinatorProtocol {
    
}


class MainCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init() {
        self.navigationController = UINavigationController()
        self.navigationController.navigationBar.backgroundColor = .appNavvigationBar
        self.navigationController.navigationBar.shadowImage = UIImage(named: "")
    }
    
    func start() {
        let tasks = TasksViewController()
        navigationController.pushViewController(tasks, animated: false)
    }
}


extension MainCoordinator: MainCoordinatorProtocol {
    
}
