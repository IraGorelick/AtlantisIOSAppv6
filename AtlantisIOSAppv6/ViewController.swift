//
//  ViewController.swift
//  AtlantisIOSAppv6
//
//  Created by Ira Gorelick on 11/24/20.
//


import UIKit

let DomainURL = "https://atlantisschoolofcommunication.org/wp-json/wp/v2/arguments"
let TestText = "helldddddddo"

class Arguments {
    static func fetch() {
    let urlString = DomainURL
        
        if let url = URL.init(string: urlString) {
            let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
                print("Learning Request - " + urlString)
                
                print(String.init(data: data!, encoding: .ascii) ?? "no data")
            })
            task.resume()
        }
    }
}



class ViewController: UIViewController {

    @IBOutlet weak var textWindow: UITextView!
    @IBOutlet weak var textLine1: UITextField!
    
    var tempInsert = "jdjdjdj"
    var testArray = ["Easy", "Moderate", "Veteran", "Nightmare"]
    var beliefTest = [
        "Trump": [
            "Belief1": "Trump Lost",
            "Belief2": "Trump Won"
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

    var jsonTest = [
        "date":"2020-10-16T14:09:56",
        "date_gmt":"2020-10-16T18:09:56",
        "modified":"2020-10-16T14:09:56",
        "modified_gmt":"2020-10-16T18:09:56",
        "slug":"racism-exists",
        "status":"publish",
        "type":"arguments",
        ]
    
    var testURL = "https://atlantisschoolofcommunication.org/wp-json/wp/v2/arguments"
    var newurl = URL.init(string: "https://atlantisschoolofcommunication.org/wp-json/wp/v2/arguments")

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Arguments.fetch()
        
      
        var testArray2 = beliefTest["Harris"]?["Belief2"]
        var testArray3 = jsonTest["slug"]
        
        // Print results
        textWindow.text = testArray2
        textLine1.text = "hello \(testArray3!)"
        print(testArray)
        print(beliefTest)
        print(testArray2)
        
      
        
        
    }

    @IBAction func ButtonTest1(_ sender: Any) {
        textLine1.text = "hello \(testURL)"
    }
    
    }
    


