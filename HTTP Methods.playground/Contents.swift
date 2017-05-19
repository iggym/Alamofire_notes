//: Playground - noun: a place where people can play

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true



var str = "Hello, playground"

Alamofire.request("https://httpbin.org/get") // method defaults to `.get`

Alamofire.request("https://httpbin.org/post", method: .post)
Alamofire.request("https://httpbin.org/put", method: .put)
Alamofire.request("https://httpbin.org/delete", method: .delete)