import UIKit


protocol CalendarViewProtocol {
    
}


class CalendarView: UIView {
    // MARK: - Views
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: self.frame, collectionViewLayout: layout)

        layout.scrollDirection = .horizontal

        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        collectionView.backgroundColor = .red
        collectionView.collectionViewLayout = layout
        return collectionView
    }()
    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupForView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupForView()
    }
    // MARK: - Methods
    
    private func setupForView() {
        addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            /// Collection View
            collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            self.trailingAnchor.constraint(equalTo: collectionView.trailingAnchor, constant: 0),
            self.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 0),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0)
        ])
    }
}


extension CalendarView: CalendarViewProtocol {
    
}


extension CalendarView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}
