
import UIKit

class ToDoListCell: UITableViewCell {
    
    public static let identifier: String = "ToDoListCell"
    public static func nib() -> UINib {
        return UINib(nibName: "ToDoListCell", bundle: nil)
    }
    
    @IBOutlet weak var circleButton: UIButton!
    @IBOutlet weak var toDoLabel: UILabel!
    
    @IBAction func checkDone(_ sender: Any) {
        
        if circleButton.currentImage == UIImage(systemName: "circle") {
            circleButton.setImage(UIImage(systemName: "circle.fill"), for: .normal)
            let attributeString = NSMutableAttributedString(string: toDoLabel.text ?? "")
            attributeString.addAttribute(.strikethroughStyle,
                value: NSUnderlineStyle.single.rawValue,
                range: NSRange(location: 0, length: attributeString.length))
            toDoLabel.attributedText = attributeString
        } else {
            circleButton.setImage(UIImage(systemName: "circle"), for: .normal)
        }
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
