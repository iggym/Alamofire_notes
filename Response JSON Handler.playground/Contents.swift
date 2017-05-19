//: Playground - noun: a place where people can play

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true
/*:
 The responseJSON handler uses the responseJSONSerializer to convert the Data returned by the server into an Any type using the specified JSONSerialization.ReadingOptions. If no errors occur and the server data is successfully serialized into a JSON object, the response Result will be a .success and the value will be of type Any.
 */


Alamofire.request("https://httpbin.org/get").responseJSON { response in
    debugPrint(response)
    
    if let json = response.result.value {
        print("JSON: \(json)")
    }
}
