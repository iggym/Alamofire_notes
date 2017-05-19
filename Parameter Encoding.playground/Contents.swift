//: Playground - noun: a place where people can play

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true



var str = "Hello, playground"
//GET Request With URL-Encoded Parameters

let parameters: Parameters = ["foo": "bar"]

// All three of these calls are equivalent
Alamofire.request("https://httpbin.org/get", parameters: parameters) // encoding defaults to `URLEncoding.default`
Alamofire.request("https://httpbin.org/get", parameters: parameters, encoding: URLEncoding.default)
Alamofire.request("https://httpbin.org/get", parameters: parameters, encoding: URLEncoding(destination: .methodDependent))

// https://httpbin.org/get?foo=bar

//POST Request With URL-Encoded Parameters