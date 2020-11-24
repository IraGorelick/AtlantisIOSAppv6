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

    
    
    var extraSyntax1: Array<String> = Array<String>()
    var testURL = "https://atlantisschoolofcommunication.org/wp-json/wp/v2/arguments"
    var newurl = URL.init(string: "https://atlantisschoolofcommunication.org/wp-json/wp/v2/arguments")

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Arguments.fetch()
        
        print(tempInsert + "  - hslslsl")
        print(tempInsert.count)
        print(testArray.count)
        print(testArray.isEmpty)
        testArray[3] = "new"
        print(testArray[1] + "hello")
        
        testArray.append("First W")
        testArray.insert("new Insert", at: 2)
        title = "actionable"
        
        
      
        var testArray2 = beliefTest["Harris"]?["Belief2"]
        
        
        // Print results
        textWindow.text = testArray2
        print(testArray)
        print(beliefTest)
        print(testArray2)
        
      
        
        
    }

    @IBAction func ButtonTest1(_ sender: Any) {
        textLine1.text = "hello \(beliefTest)"
    }
    
    }
    


