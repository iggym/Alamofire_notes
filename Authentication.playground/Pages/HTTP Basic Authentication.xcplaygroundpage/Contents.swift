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


let username = "user"
let passwordForUser = "password"

var headers: HTTPHeaders = [:]

if let authorizationHeader = Request.authorizationHeader(user: username, password: passwordForUser) {
    headers[authorizationHeader.key] = authorizationHeader.value
}

Alamofire.request("https://httpbin.org/basic-auth/user/password", headers: headers)
    .responseJSON { response in
        debugPrint(response)
}

//: [Next](@next)
