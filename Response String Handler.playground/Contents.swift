//: Playground - noun: a place where people can play

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var str = "Hello, playground"


Alamofire.request("https://httpbin.org/get").responseString { response in
    print("Success: \(response.result.isSuccess)")
    print("Response String: \(response.result.value)")
}