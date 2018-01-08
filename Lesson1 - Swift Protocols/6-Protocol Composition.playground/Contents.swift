//
//  6-Protocol Composition.playground
//  Packt Progressional Swift Courseware
//
//  Created by robkerr@mobiletoolworks.com on 8/17/17.
//
//
import UIKit

struct HealthPlan {
    var healthPlanName: String
}

protocol Employee {
    var employeeName: String {get set}
}

protocol SalariedEmployee {
    var hireDate: Date {get set}
    var healthPlanSelected: HealthPlan {get set}
}

protocol ManagerEmployee: Employee, SalariedEmployee {
    var directReports: [Employee]? {get set}
}

struct Manager: ManagerEmployee {
    var employeeName: String
    var hireDate: Date
    var healthPlanSelected: HealthPlan
    var directReports: [Employee]?
}

func printHealthPlan(employee: Employee & SalariedEmployee) {
    print("\(employee.employeeName) is enrolled in \(employee.healthPlanSelected.healthPlanName)")
}

let blueCross = HealthPlan(healthPlanName: "Blue Cross")
let sarah = Manager(employeeName: "Sarah Jones", hireDate: Date(), healthPlanSelected: blueCross, directReports: nil)

printHealthPlan(employee: sarah)

