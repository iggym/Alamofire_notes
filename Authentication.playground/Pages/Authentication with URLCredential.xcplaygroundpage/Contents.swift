//: [Previous](@previous)

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


//Authentication with URLCredential

let user = "user"
let password = "password"

let credential = URLCredential(user: user, password: password, persistence: .forSession)

Alamofire.request("https://httpbin.org/basic-auth/\(user)/\(password)")
    .authenticate(usingCredential: credential)
    .responseJSON { response in
        debugPrint(response)
}

//: [Next](@next)
