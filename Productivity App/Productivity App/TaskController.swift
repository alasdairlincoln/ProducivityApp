import UIKit

class TaskController: UIViewController {

    public var taskID:Int?
    var masterView:UIViewController!
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var noteField: UITextView!
    @IBOutlet weak var timer: UIDatePicker!
    
    let tasker = Tasker.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let id:Int = self.taskID{
            print("View did load with note \(id)")
            let task:String = tasker.getTask(atIndex: id)
            self.title = task
            self.titleField.text = task
            //let taskDetail:String
            //self.noteField.text =
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tasker.update(task: titleField.text!, at: taskID!)
    }

}
