//
//  ViewController.swift
//  setTracker
//
//  Created by  on 12/2/19.
//  Copyright © 2019 oeldoronki80. All rights reserved.

import UIKit
import Firebase
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var chartView: LineChartView!
    //    var chartView: LineChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        var lineChartEntry = [ChartDataEntry]()
        chartView.delegate = self as? ChartViewDelegate
        chartView.setScaleEnabled(true)
        chartView.dragEnabled = false
        chartView.pinchZoomEnabled = false
//        chartView.xAxis.axisMaximum = 5
//        chartView.xAxis.axisRange = 28
//        chartView.xAxis.axisMinimum = 28
        chartView.zoomOut()
        chartView.xAxis.labelPosition = .bottom
        chartView.backgroundColor = UIColor.black
        chartView.xAxis.labelTextColor = UIColor.white
        
        
        let value = ChartDataEntry(x: 0.0, y: 0.0)
        let anotherValue = ChartDataEntry(x: 3.0, y: 10.0)
//        let otherValue = ChartDataEntry(x: 50.0, y: 50.0)
        
        lineChartEntry.append(value)
        
        lineChartEntry.append(anotherValue)
//        lineChartEntry.append(otherValue)
        let progressionLine = LineChartDataSet(entries: lineChartEntry)
        progressionLine.colors = [NSUIColor.green]
        let data = LineChartData()
        data.addDataSet(progressionLine)
        chartView.data = data
        
    }


}
