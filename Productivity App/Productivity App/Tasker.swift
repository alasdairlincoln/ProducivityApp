import Foundation

/**
 Class to control list of tasks
*/
public class Tasker {

    var tasks:[String]
    var taskDetail:[String]
    public var taskID:Int?
    
    public static let sharedInstance = Tasker()
    
    private init() {
        self.tasks = []
        self.taskDetail = []
    }
    
    /**
     Adds a task to list of tasks
     ```
     let tasker = Tasker()
     tasker.add(task: TaskName)
     ```
     - Parameter task: The task to be added to the list
     - Returns: Nothing
     - Throws: Nothing
    */
    func add(task: String) {
        tasks.append(task)
        taskDetail.append("")
    }
    
    /**
     Retrieves the task at a given index
     ```
     let tasker = Tasker()
     let task = tasker.getTask(atIndex: 2)
     ```
     - Paramater index: The index of the item to be retrieved
     - Returns: The task at the specified index
     - Throws: Nothing
    */
    func getTask(atIndex index: Int) -> String {
        return tasks[index]
    }
    
    /**
     Retrieves the task detail at a given index
     ```
     let tasker = Tasker()
     let task = tasker.getDetail(atIndex: 2)
     ```
     - Paramater index: The index of the item to be retrieved
     - Returns: The detail at the specified index
     - Throws: Nothing
     */
    func getDetail(at: Int) -> String {
        return taskDetail[at]
    }
    
    /**
     Retrieves the number of tasks in tasks array
     ```
     let tasker = Tasker()
     let tasksCount = tasker.count
     ```
     - Parameters: None
     - Returns: The number of tasks in the array
     - Throws: Nothing
    */
    public var count: Int {
        get {
            return tasks.count
        }
    }
    
    /**
     Removes all items from the array
     ```
     let tasker = Tasker()
     tasker.clearList()
     ```
     - Paramaters: None
     - Returns: Nothing
     - Throws: Nothing
    */
    public func clearList() {
        tasks.removeAll()
        taskDetail.removeAll()
    }
    
    /**
     Inserts a task into array at given index
     ```
     let tasker = Tasker()
     tasker.insert(task: TaskName, at: 2)
     ```
     - Paramaters task: Name of the task to be inserted,
     at: Index of where task is to be inserted
     - Returns: Nothing
     - Throws: Nothing
    */
    func insert(task: String, at index: Int) {
        tasks.insert(task, at: index)
    }
    
    
    /**
     Inserts a task into array at given index
     ```
     let tasker = Tasker()
     tasker.insertDetail(detail: detailString, at: 2)
     ```
     - Paramaters task: Detail of the task to be inserted,
     at: Index of where task detail is to be inserted
     - Returns: Nothing
     - Throws: Nothing
     */
    func insertDetail(detail: String, at index: Int){
        taskDetail.insert(detail, at: index)
    }
    
    /**
     Updates the task at the given index with the given task
     ```
     let tasker = Tasker()
     tasker.update(task: TaskName, at: 2)
     ```
     - Paramaters task: Name of the task to be updated with,
     at: Index of where task is to be updated
     - Returns: Nothing
     - Throws: Nothing
     */
    func update(task: String, at index: Int) {
        remove(at: index)
        insert(task: task, at: index)
    }
    
    /**
     Updates the task at the given index with the given task
     ```
     let tasker = Tasker()
     tasker.updateDetail(detail: detailString, at: 2)
     ```
     - Paramaters task: Detail of the task to be updated with,
     at: Index of where task detail is to be updated
     - Returns: Nothing
     - Throws: Nothing
     */
    func updateDetail(detail: String, at index: Int) {
        removeDetails(at: index)
        insertDetail(detail: detail, at: index)
    }
    
    /**
     Removes a task from the array at given index
     ```
     let tasker = Tasker()
     tasker.remove(at: 2)
     ```
     - Paramaters at: Index of where task is to be removed
     - Returns: Nothing
     - Throws: Nothing
     */
    public func remove(at index: Int) {
        tasks.remove(at: index)
    }
    
    /**
     Removes a task from the array at given index
     ```
     let tasker = Tasker()
     tasker.removeDetails(at: 2)
     ```
     - Paramaters at: Index of where task details is to be removed
     - Returns: Nothing
     - Throws: Nothing
     */
    public func removeDetails(at index: Int) {
        taskDetail.remove(at: index)
    }
    
}

