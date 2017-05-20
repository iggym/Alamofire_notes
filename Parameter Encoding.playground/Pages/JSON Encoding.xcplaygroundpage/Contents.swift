//: [Previous](@previous)

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true




/*:
 JSON Encoding
 
 The JSONEncoding type creates a JSON representation of the parameters object, which is set as the HTTP body of the request. The Content-Type HTTP header field of an encoded request is set to application/json.
 
 POST Request with JSON-Encoded Parameters
 
 */

let parameters: Parameters = [
    "foo": [1,2,3],
    "bar": [
        "baz": "qux"
    ]
]

// Both calls are equivalent
Alamofire.request("https://httpbin.org/post", method: .post, parameters: parameters, encoding: JSONEncoding.default)
Alamofire.request("https://httpbin.org/post", method: .post, parameters: parameters, encoding: JSONEncoding(options: []))

// HTTP body: {"foo": [1, 2, 3], "bar": {"baz": "qux"}}
//: [Next](@next)
