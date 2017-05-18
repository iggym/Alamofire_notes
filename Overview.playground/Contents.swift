//: Playground - noun: a place where people can play
/*:
 Alamofire is an HTTP networking library written in Swift
 
 Features:
 Chainable Request / Response Methods
 URL / JSON / plist Parameter Encoding
 Upload File / Data / Stream / MultipartFormData
 Download File using Request or Resume Data
 Authentication with URLCredential
 HTTP Response Validation
 Upload and Download Progress Closures with Progress
 cURL Command Output
 Dynamically Adapt and Retry Requests
 TLS Certificate and Public Key Pinning
 Network Reachability
 Comprehensive Unit and Integration Test Coverage
 */
import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true
var str = "Hello, playground"

Alamofire.request("https://httpbin.org/get").responseJSON { response in
    print(response.request)  // original URL request
    print(response.response) // HTTP URL response
    print(response.data)     // server data
    print(response.result)   // result of response serialization
    
    if let JSON = response.result.value {
        print("JSON: \(JSON)")
    }
}
