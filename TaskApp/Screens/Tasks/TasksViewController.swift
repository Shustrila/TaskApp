import UIKit


protocol TasksViewControllerProtocol {
    
}


class TasksViewController: UIViewController {
    // MARK: - View Model
    
    private let viewModel = TasksViewModel()
    // MARK: - Views
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .appBackground
        return tableView
    }()
    
    lazy var editButomItem: UIBarButtonItem = {
        let editButomItem = UIBarButtonItem()
        editButomItem.image = UIImage(named: "square.and.pencil")
        return editButomItem
    }()
    
    lazy var calendarView: CalendarView = {
        let calendarView  = CalendarView()
        return calendarView
    }()
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupForScreen()
    }
    // MARK: - Actions
    
    // MARK: - Methods

    private func setupForScreen() {
        navigationController?.navigationItem.leftBarButtonItem = editButomItem
        
        tableView.register(TaskCell.self, forCellReuseIdentifier: "TaskCell")
        
        view.addSubview(tableView)
                
        NSLayoutConstraint.activate([
            /// Table View
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            view.rightAnchor.constraint(equalTo: tableView.rightAnchor, constant: 0),
            view.bottomAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0)
        ])
    }
}


extension TasksViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        return cell
    }
}


extension TasksViewController: TasksViewControllerProtocol {
    
}
