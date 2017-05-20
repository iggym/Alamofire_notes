//: [Previous](@previous)

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true



var str = "Hello, playground"
//GET Request With URL-Encoded Parameters

let parametersGet: Parameters = ["foo": "bar"]

// All three of these calls are equivalent
Alamofire.request("https://httpbin.org/get", parameters: parametersGet) // encoding defaults to `URLEncoding.default`
Alamofire.request("https://httpbin.org/get", parameters: parametersGet, encoding: URLEncoding.default)
Alamofire.request("https://httpbin.org/get", parameters: parametersGet, encoding: URLEncoding(destination: .methodDependent))

// https://httpbin.org/get?foo=bar

//POST Request With URL-Encoded Parameters

let parameters: Parameters = [
    "foo": "bar",
    "baz": ["a", 1],
    "qux": [
        "x": 1,
        "y": 2,
        "z": 3
    ]
]

// All three of these calls are equivalent
Alamofire.request("https://httpbin.org/post", method: .post, parameters: parameters)
Alamofire.request("https://httpbin.org/post", method: .post, parameters: parameters, encoding: URLEncoding.default)
Alamofire.request("https://httpbin.org/post", method: .post, parameters: parameters, encoding: URLEncoding.httpBody)

// HTTP body: foo=bar&baz[]=a&baz[]=1&qux[x]=1&qux[y]=2&qux[z]=3

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
