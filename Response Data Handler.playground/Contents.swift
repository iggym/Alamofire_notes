//: Playground - noun: a place where people can play

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


var str = "Hello, playground"

Alamofire.request("https://httpbin.org/get").responseData { response in
    debugPrint("All Response Info: \(response)")
    
    if let data = response.result.value, let utf8Text = String(data: data, encoding: .utf8) {
        print("Data: \(utf8Text)")
    }
}
