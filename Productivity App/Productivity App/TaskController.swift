import UIKit

class TaskController: UIViewController {

    public var taskID:Int?
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var noteField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let id:Int = self.taskID{
            print("View did load with note \(id)")
            //if let task:Task = try? Tasker.sharedInstance.getTask(atIndex: id){}
            let task:Task = Tasker.sharedInstance.getTask(atIndex: id)
            self.title = task.title
            self.titleField.text = task.title
            self.noteField.text = task.text
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
