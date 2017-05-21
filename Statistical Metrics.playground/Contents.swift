//: Playground - noun: a place where people can play

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var str = "Hello, playground"

Alamofire.request("https://httpbin.org/get").responseJSON { response in
    print(response.timeline)
}

Alamofire.request("https://httpbin.org/get").responseJSON { response in
    print(response.metrics)
}
