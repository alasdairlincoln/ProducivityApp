import UIKit

class TaskController: UIViewController {

    public var taskID:Int?
    var masterView:UIViewController!
    var text:String = ""
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var noteField: UITextView!
    @IBOutlet weak var timer: UIDatePicker!
    
    let tasker = Tasker.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let id:Int = self.taskID{
            let task:String = tasker.getTask(atIndex: id)
            title = task
            titleField.text = task
            noteField.text = text
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tasker.update(task: titleField.text!, at: taskID!)
    }

    public func setNoteField(t: String) {
        text = t
        if isViewLoaded {
            noteField.text = t
        }
    }
}
