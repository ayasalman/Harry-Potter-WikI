//
//  ViewController.swift
//  HarryPotterWIKI
//
//  Created by Aya on 26/12/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var charctersTableView: UITableView!
    
    
    var charctersArry = [Characters]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        
        charctersTableView.delegate = self
        charctersTableView.dataSource = self
        charctersTableView.register(UINib(nibName: "CharactersTableViewCell", bundle: nil), forCellReuseIdentifier: "cellIdentifier")
        
        charctersArry.append(Characters.init(image: UIImage(named: "AlbusImage")!, name: "Abel Treetops", sort: "Human", dateOfBirth: "Before 1909"))
        charctersArry.append(Characters.init(image: UIImage(named: "AlbusImage")!, name: "Abel Treetops", sort: "Human", dateOfBirth: "Before 1909"))
        charctersArry.append(Characters.init(image: UIImage(named: "AlbusImage")!, name: "Abel Treetops", sort: "Human", dateOfBirth: "Before 1909"))
        charctersArry.append(Characters.init(image: UIImage(named: "AlbusImage")!, name: "Abel Treetops", sort: "Human", dateOfBirth: "Before 1909"))
        charctersArry.append(Characters.init(image: UIImage(named: "AlbusImage")!, name: "Abel Treetops", sort: "Human", dateOfBirth: "Before 1909"))
        charctersArry.append(Characters.init(image: UIImage(named: "AlbusImage")!, name: "Abel Treetops", sort: "Human", dateOfBirth: "Before 1909"))
        charctersArry.append(Characters.init(image: UIImage(named: "AlbusImage")!, name: "Abel Treetops", sort: "Human", dateOfBirth: "Before 1909"))
        charctersArry.append(Characters.init(image: UIImage(named: "AlbusImage")!, name: "Abel Treetops", sort: "Human", dateOfBirth: "Before 1909"))
        charctersArry.append(Characters.init(image: UIImage(named: "AlbusImage")!, name: "Abel Treetops", sort: "Human", dateOfBirth: "Before 1909"))
        charctersArry.append(Characters.init(image: UIImage(named: "AlbusImage")!, name: "Abel Treetops", sort: "Human", dateOfBirth: "Before 1909"))
        
    }


}

extension ViewController : UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            // Get the selected character
            let selectedCharacter = charctersArry[indexPath.row]
            
            // Initialize the destination view controller
            let detailVC = DetailsViewController(nibName: "DetailsViewController", bundle: nil)
            
            // Pass data to the destination view controller (if needed)
            // Example: detailVC.character = selectedCharacter
            
            // Navigate to the detail view controller
            self.navigationController?.pushViewController(detailVC, animated: true)
        }
    
}
extension ViewController : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charctersArry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = charctersTableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! CharactersTableViewCell
        
       // cell.characterImage
        let data = charctersArry[indexPath.row]
        cell.setUpCell(image: data.image, name: data.name, sort: data.sort, birthDate: data.dateOfBirth)
        return cell
        
        
    }
    
}

struct Characters
{
    let image : UIImage
    let name  : String
    let sort : String
    let dateOfBirth  : String
}
