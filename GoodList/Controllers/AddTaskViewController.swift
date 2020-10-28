//
//  AddTaskViewController.swift
//  GoodList
//
//  Created by Kantemir Vologirov on 9/21/20.
//  Copyright © 2020 Kantemir Vologirov. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

class AddTaskViewController: UIViewController {
    
    private let taskSubject = PublishSubject<Task>()
    
    var taskSubjectObservable: Observable<Task> {
        return taskSubject.asObservable()
    }
    
    @IBOutlet weak var prioritySegmentedControl: UISegmentedControl!
    @IBOutlet weak var taskTitleTextField: UITextField!
    
    @IBAction func save() {
        guard let priority = Priority(rawValue: self.prioritySegmentedControl.selectedSegmentIndex),
              let title = self.taskTitleTextField.text else {
            return
        }
        
        let task = Task(title: title, priority: priority)
        taskSubject.onNext(task)
        
        self.dismiss(animated: true, completion: nil)
    }
}
