//
//  Powerpoint Code Snippets.playground
//  Code snippets for Day 2, Lesson 3 slide presentation
//  Packt Progressional Swift Courseware
//
//  Created by robkerr@mobiletoolworks.com on 8/17/17.
//
import UIKit


//---------  Slide 5  -------------
func someFunction<T>(parm1: T) -> T {
    return parm1
}

//---------  Slide 6  -------------
func someFunc<T>(parm1: T) {
    // function body
}
func someFunc<T,U>(parm1:T, parm2: U) {
    // function body
}

func addValues<Num1,Num2>(parm1: Num1, parm2: Num2) {
    // function body
}

//---------  Slide 9  -------------
struct Queue<Member> {
    var members : [Member] = []
    
    mutating func add(member: Member) {
        members.append(member)
    }
    mutating func remove() -> Member? {
        if let topItem = members.first {
            members.remove(at: 0)
            return topItem
        }
        return nil
    }
}
extension Queue where Member: Equatable {
    func isLastMember(member: Member?) -> Bool {
        guard let member = member else {
            return false
        }
        
        if let lastMember = members.last, lastMember == member {
            return true
        }
        return false
    }
}


//---------  Slide 10  -------------
protocol SomeProtocol {
    associatedtype SomeType
}
