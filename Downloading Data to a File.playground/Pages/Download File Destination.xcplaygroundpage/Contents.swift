//: Playground - noun: a place where people can play

import UIKit
import Alamofire
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var str = "Hello, playground"
var imageTmp: UIImage?
var imageView: UIImageView?

Alamofire.download("https://httpbin.org/image/png").responseData { response in
    if let data = response.result.value {
        let image = UIImage(data: data)
        imageTmp = image
        
        print(data)
        var imageView: UIImageView = UIImageView(image: imageTmp)
    }
}




