//
//  ViewController.swift
//  AtlantisIOSAppv6
//
//  Created by Ira Gorelick on 11/24/20.
//


import UIKit

let DomainURL = "https://atlantisschoolofcommunication.org/wp-json/wp/v2/arguments/55769"
let DomainURL2 = "https://atlantisschoolofcommunication.org/wp-json/wp/v2/users/21"
let TestText = "helldddddddo"

class Arguments {
    static func fetch() {
    let urlString = DomainURL
        
        if let url = URL.init(string: urlString) {
            let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
                print("")
                print("Argument - " + urlString)
                print("")
                
                print(String.init(data: data!, encoding: .ascii) ?? "no data")
                
            })
            task.resume()
        }
    }
}

class Users {
    static func fetch() {
    let urlString = DomainURL2
        
        if let url = URL.init(string: urlString) {
            let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
                print("")
                print("User - " + urlString)
                print("")
                print(String.init(data: data!, encoding: .ascii) ?? "no data")
                
            })
            task.resume()
        }
    }
}


class ViewController: UIViewController {

    @IBOutlet weak var textWindow: UITextView!
    @IBOutlet weak var textLine1: UITextField!
    
    var testArray = ["Easy", "Moderate", "Veteran", "Nightmare"]
    var beliefTest = [
        "Trump": [
            "Belief1": "Trump Lost",
            "Belief2": "Trump Won",
        ],
        "Biden": [
            "Belief1": "Biden Won",
            "Belief2": "Biden Lost"
        ],
        "Harris": [
            "Belief1": "Biden Won",
            "Belief2": "Biden Lost"
        ],
        
    ]
    
    var rawData = [
        "Fact1": [
            "date":"today",

            "slug":"racism-exists",
            "status":"publish",
            "type":"arguments"
        ],
        "Fact2": [
            "date":"2020-10-16T14:09:56",
            "date_gmt":"2020-10-16T18:09:56",
            "modified":"2020-10-16T14:09:56",
            "modified_gmt":"2020-10-16T18:09:56",
            "slug":"racism-doesnt-exist",
            "status":"publish",
            "type":"arguments"
        ],
        "Fact3": [
            "date":"2020-10-16T14:09:56",
            "date_gmt":"2020-10-16T18:09:56",
            "modified":"2020-10-16T14:09:56",
            "modified_gmt":"2020-10-16T18:09:56",
            "slug":"racism-always-exists",
            "status":"publish",
            "type":"arguments"
        ],
        
    ]


        
    var testURL = "https://atlantisschoolofcommunication.org/wp-json/wp/v2/arguments"
    var newurl = URL.init(string: "https://atlantisschoolofcommunication.org/wp-json/wp/v2/arguments")

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Arguments.fetch()
        // Users.fetch()
        
      
        let testArray2 = beliefTest["Harris"]?["Belief2"]
        let testArray4 = rawData["Fact1"]?["date"]
        let allKeys1 = [String](rawData.keys)
        let allKeys = [String](beliefTest.keys)
        // let allValues = [String](rawData.values)
        
        // Print results
        textWindow.text = "\(Arguments.fetch())"
        textLine1.text = "hello \(allKeys1)"
        
        // *****
        print(testArray)
        print(beliefTest)
        print(rawData)
        print(testArray2!)
        print("Slug \(testArray4!)")
        
        for armor in testArray {
            print(armor)
        }
        // print("new Arguments \(Arguments.fetch())")
        
      
        
        
    }

    @IBAction func ButtonTest1(_ sender: Any) {
        
    }
    
    }
    


