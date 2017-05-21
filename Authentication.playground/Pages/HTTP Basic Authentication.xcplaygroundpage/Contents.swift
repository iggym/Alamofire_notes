//: [Previous](@previous)
import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


let user = "user"
let password = "password"

Alamofire.request("https://httpbin.org/basic-auth/\(user)/\(password)")
    .authenticate(user: user, password: password)
    .responseJSON { response in
        debugPrint(response)
}

//: [Next](@next)
