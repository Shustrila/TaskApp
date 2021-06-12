import UIKit


class TaskCell: UITableViewCell {
    // MARK: - Views

    lazy var avatarTackImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "pencil.circle.fill")
        image.tintColor = .appIcon
        image.contentMode = .center
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return label
    }()
    // MARK: -
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupForCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    // MARK: -
    
    private func setupForCell() {
        backgroundColor = .appBackground
        
        addSubview(avatarTackImage)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(dateLabel)
        
        titleLabel.text = "title title title title title title title"
        descriptionLabel.text = "description description description description description description description description description description description"
        dateLabel.text = "21.32.1234"
        
        NSLayoutConstraint.activate([
            /// Avatar Tack Image
            avatarTackImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            self.bottomAnchor.constraint(equalTo: avatarTackImage.bottomAnchor, constant: 20),
            avatarTackImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            avatarTackImage.heightAnchor.constraint(equalToConstant: 70),
            avatarTackImage.widthAnchor.constraint(equalToConstant: 70),
            /// Title Label
            titleLabel.topAnchor.constraint(equalTo: avatarTackImage.topAnchor, constant: 0),
            dateLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: avatarTackImage.trailingAnchor, constant: 10),
            /// Description Label
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            dateLabel.leadingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: avatarTackImage.trailingAnchor, constant: 10),
            self.bottomAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            /// Date Label
            dateLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            self.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor, constant: 16),
        ])
    }
}
