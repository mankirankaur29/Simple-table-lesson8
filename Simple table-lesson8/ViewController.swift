

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,
UITableViewDataSource{

    private let movies = ["Batman vs Superman", "Blade runner 2049","Thor:Ragnorok","Justice League",
                          "Wonder woman","Dark Tower","Star Wars"]
    
    let simpleTableIdentifier = "SimpleTableIdentifier"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        if(cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: simpleTableIdentifier)
        }
        
        cell?.textLabel?.text = movies[indexPath.row]
        
        return cell!
    }

    

}

