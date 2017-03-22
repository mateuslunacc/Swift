//
//  ViewController.swift
//  MapExample
//
//  Created by Student on 3/22/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    
    var userLocation = CLLocation()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapView.showsUserLocation = true
        self.setupLocationManager()
        self.addGesture()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupLocationManager() {
        
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
        
//        var region = MKCoordinateRegion()
//        region.span.latitudeDelta = 1
//        region.span.longitudeDelta = 1
//        region.center.latitude = userLocation.coordinate.latitude
//        region.center.longitude = userLocation.coordinate.longitude
//        
//        mapView.region = region
        
        mapView.setUserTrackingMode(MKUserTrackingMode.follow, animated: true)
        
        
    }
    
    func addGesture() {
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotationToMap(gesturedRecognizer:)))
        
        longPress.minimumPressDuration = 1.0
        
        mapView.addGestureRecognizer(longPress)
        
    }
    
    func addAnnotationToMap(gesturedRecognizer: UIGestureRecognizer) {
        
        let touchPoint = gesturedRecognizer.location(in: mapView)
        
        let newCoordinate: CLLocationCoordinate2D = mapView.convert(touchPoint, toCoordinateFrom: mapView)
        
        
        let newAnnotation = MKPointAnnotation()
        
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "Chosen Location"
        newAnnotation.subtitle = String(describing: "Latitude: \(newCoordinate.latitude) Longitude: \(newCoordinate.longitude)")
        
        mapView.addAnnotation(newAnnotation)
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if locations.count > 0 {
            
            if let location = locations.last {
                userLocation = location
                
                //print("Localizacao atual do usuario = ", userLocation.speed)
                
            }
        }
    }
}

