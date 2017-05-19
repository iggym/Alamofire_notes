//: Playground - noun: a place where people can play

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true



var str = "Hello, playground"
/*:
 Response Handler Queue
 
 Response handlers by default are executed on the main dispatch queue. However, a custom dispatch queue can be provided instead.
 */


let utilityQueue = DispatchQueue.global(qos: .utility)

Alamofire.request("https://httpbin.org/get").responseJSON(queue: utilityQueue) { response in
print("Executing response handler on utility queue")
}