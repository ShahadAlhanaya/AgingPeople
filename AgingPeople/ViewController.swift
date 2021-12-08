//
//  ViewController.swift
//  AgingPeople
//
//  Created by Shahad Nasser on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var peopleList = People.data
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

  
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        cell.textLabel?.text = peopleList[indexPath.row].name
        cell.detailTextLabel?.text = "\(peopleList[indexPath.row].age) years old"
        return cell
    }
    
    
}


struct People{
    static var data = [
        Person(name: "Shahad", age: Int.random(in: 5...95)),
        Person(name: "Naif", age: Int.random(in: 5...95)),
        Person(name: "Kate", age: Int.random(in: 5...95)),
        Person(name: "Adam", age: Int.random(in: 5...95)),
        Person(name: "Vlad", age: Int.random(in: 5...95)),
        Person(name: "Tessa", age: Int.random(in: 5...95)),
        Person(name: "Lottie", age: Int.random(in: 5...95)),
        Person(name: "Frida", age: Int.random(in: 5...95)),
        Person(name: "Hessa", age: Int.random(in: 5...95)),
        Person(name: "Reyna", age: Int.random(in: 5...95)),
        Person(name: "Majd", age: Int.random(in: 5...95)),
        Person(name: "Maha", age: Int.random(in: 5...95)),
    ]
}

struct Person{
    var name: String
    var age: Int
}

