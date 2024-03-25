
import UIKit

class ToDoListCell: UITableViewCell {
    
    public static let identifier: String = "ToDoListCell"
    public static func nib() -> UINib {
        return UINib(nibName: "ToDoListCell", bundle: nil)
    }
    
    @IBOutlet weak var circleButton: UIButton!
    @IBOutlet weak var toDoLabel: UILabel!
    
    @IBAction func checkDone(_ sender: UIButton) {
        
        if !sender.isSelected {
            sender.isSelected = true
            sender.backgroundColor = .clear // 예시로 투명 색상을 설정했습니다.
            circleButton.setImage(UIImage(systemName: "circle.fill"), for: .normal)
            
            let attributeString = NSMutableAttributedString(string: toDoLabel.text ?? "")
            attributeString.addAttribute(.strikethroughStyle,
                value: NSUnderlineStyle.single.rawValue,
                range: NSRange(location: 0, length: attributeString.length))
            toDoLabel.textColor = .gray // 글씨색
            toDoLabel.attributedText = attributeString
        } else {
            sender.isSelected = false
            sender.backgroundColor = .clear // 예시로 투명 색상을 설정했습니다.
            circleButton.setImage(UIImage(systemName: "circle"), for: .normal)
            
            let attributeString = NSMutableAttributedString(string: toDoLabel.text ?? "")
            toDoLabel.textColor = .black // 글씨색
            toDoLabel.attributedText = attributeString
        }
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
