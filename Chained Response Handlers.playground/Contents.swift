//: Playground - noun: a place where people can play

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


var str = "Hello, playground"
//Chained Response Handlers

//Response handlers can even be chained:

Alamofire.request("https://httpbin.org/get")
.responseString { response in
    print("Response String: \(response.result.value)")
    }
    .responseJSON { response in
        print("Response JSON: \(response.result.value)")
}