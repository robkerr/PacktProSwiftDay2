//
//  6-Optional Enum.playground
//  Packt Progressional Swift Courseware
//
//  Created by robkerr@mobiletoolworks.com on 8/17/17.
//
import UIKit

let a: Optional<Int> = .none
let b: Optional<Int> = .some(42)

if let a1 = a {
    print("a is \(a1)")
} else {
    print("a is nil")
}

if let b1 = b {
    print("b is \(b1)")
}
