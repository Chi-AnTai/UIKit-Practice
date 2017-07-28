//
//  ViewController.swift
//  UIKit Practice
//
//  Created by 戴其安 on 2017/7/28.
//  Copyright © 2017年 戴其安. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    func getRandomColor() -> UIColor {
        let red: CGFloat = CGFloat(drand48())
        let green: CGFloat = CGFloat(drand48())
        let blue: CGFloat = CGFloat(drand48())
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    func segment1Function(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 1:
            print(self.view.subviews.count)
            if self.view.subviews.count == 4 {
            let segment2 = UISegmentedControl.init(items: ["Insert Segment", "Change Color"])
            segment2.frame = CGRect(x: 12, y: 90, width: 350, height: 50)
            segment2.addTarget(self, action: #selector(segment2Function), for: .valueChanged)
            self.view.addSubview(segment2)
            }
        default: print("hi")
        }
    }
    func segment2Function(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sender.insertSegment(withTitle: "Change Color", at: 1, animated: true)
        default:
            sender.backgroundColor = getRandomColor()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let segment1 = UISegmentedControl.init(items: ["Print HI", "Generate new segment"])
        segment1.frame = CGRect(x: 12, y: 20, width: 350, height: 50)
        segment1.addTarget(self, action: #selector(segment1Function), for: .valueChanged)
        self.view.addSubview(segment1)

        let mapView = MKMapView.init(frame: CGRect(x: 0, y: 180, width: 375, height: 375))
        mapView.showsUserLocation = true
        mapView.isPitchEnabled = true
        mapView.isScrollEnabled = true
        mapView.isZoomEnabled = true
        self.view.addSubview(mapView)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
