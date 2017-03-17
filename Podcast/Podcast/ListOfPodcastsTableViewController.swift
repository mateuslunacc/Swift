//
//  ListOfPodcastsTableViewController.swift
//  Podcast
//
//  Created by Student on 3/16/17.
//  Copyright © 2017 Mateus Luna. All rights reserved.
//

import UIKit

class ListOfPodcastsTableViewController: UITableViewController {

    var podcasts = [Podcast]()
    var filteredPodcasts = [Podcast]()
    let searchController = UISearchController(searchResultsController: nil)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.podcasts = PodcastDAO.getPodcasts()
        
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if searchController.isActive && searchController.searchBar.text != "" {
            return self.filteredPodcasts.count
        }
        
        return self.podcasts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "podcastIdentifier", for: indexPath)

        // Configure the cell...

        if let podcastCell = cell as? PodcastTableViewCell {
            let podcast: Podcast
            
            if searchController.isActive && searchController.searchBar.text != "" {
                podcast = self.filteredPodcasts[indexPath.row]
            } else {
                podcast = self.podcasts[indexPath.row]
                
            }
            
            podcastCell.podcastImage.image = UIImage(named: podcast.picture)
            podcastCell.podcastTitle.text = podcast.title
            podcastCell.podcastDetails.text = podcast.details
            
        }
        
        
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // Delete the row from the data source
            self.podcasts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    //Search function.
    func filterContentForSearchText(searchText: String, scope: String = "All") {
        filteredPodcasts = podcasts.filter { podcast in
            return podcast.title.lowercased().contains(searchText.lowercased())
        }
        
        tableView.reloadData()
    }
    

    
    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ListOfPodcastsTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchText: searchController.searchBar.text!)
    }
}
