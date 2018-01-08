//
//  Activity 3-Generic Enum.playground
//  Packt Progressional Swift Courseware
//
//  Created by robkerr@mobiletoolworks.com on 8/17/17.
//
import UIKit

enum Result {
    case success(String)
    case warning(Int)
    case failure(NSError)
}

func processResult(_ result: Result) {
    switch result {
    case .success(let obj):
        print(obj)  // log to debug window
        // No output to user on success--just pop view controller
        // self.dismiss(animated: true, completion: nil)
    case .warning(let obj):
        print("Integer warning code returned is: \(obj)")  // log to debug window
        // updated successfully, but log this warning
    case .failure(let obj):
        print(obj.localizedDescription) // log to debug window
        // Display an AlertViewController when a hard error occurs
        // let alertController = UIAlertController(title: "Error", message: obj.localizedDescription, preferredStyle: .alert)
        // ...
        // self.present(alertController, animated: true, completion: nil)
    }
}

func updateEmployeeName(_ name: String?) -> Result {
    guard let name = name else {
        return Result.failure(NSError(domain: "Data Validation", code: 701, userInfo: ["Error Message":"Name is nil"]))
    }

    // complete the update to DB/network, etc.

    if name.trimmingCharacters(in: .whitespaces).count == 0 {
        return Result.warning(9)
    }
    
    return Result.success("Updated name successfully")
}

processResult(updateEmployeeName(nil))
processResult(updateEmployeeName(""))
processResult(updateEmployeeName("John Smith"))
