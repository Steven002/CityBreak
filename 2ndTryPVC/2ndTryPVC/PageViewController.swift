//
//  PageViewController.swift
//  2ndTryPVC
//
//  Created by Nathaniel Kristopher Blanquel on 7/8/17.
//  Copyright © 2017 Nathaniel Kristopher Blanquel. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate{
    
    //var timer = Timer()
    var index = 0
    
    lazy var VCA: [UIViewController] = {
        return[self.VCInstance(name: "VC1"),
               self.VCInstance(name: "VC2"),
               self.VCInstance(name: "VC3"),
               self.VCInstance(name: "VC4"),
               self.VCInstance(name: "VC5")
        ]
    }()
    
    private func VCInstance(name: String) -> UIViewController{
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        setViewControllers([VCA[0]], direction: .forward, animated: true, completion: nil)
        /*if index == 4 {
            nextPage()
        }
        else{
            timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(PageViewController.nextPageAuto), userInfo: nil, repeats: true)
        }*/
    }
    
    
    
    /*func nextPageAuto() {
        index = self.index + 1
        
        
        if index < self.VCA.count {
            setViewControllers([VCA[index]], direction: .forward, animated: true, completion: nil)
        }
    }*/

    
    public func nextPage(){
        
        if let firstVC = VCA.first{
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
        
    }
    
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = VCA.index(of: viewController) else {
            return nil
        }
        let pIdx = viewControllerIndex - 1
        
        guard pIdx >= 0 else {
            return VCA.last
        }
        
        guard VCA.count > pIdx else {
            return nil
        }
        return VCA[pIdx]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = VCA.index(of: viewController) else {
            return nil
        }
        let nIdx = viewControllerIndex + 1
        guard nIdx < VCA.count else {
            return VCA.first
        }
        
        guard VCA.count > nIdx else {
            return nil
        }
        return VCA[nIdx]
    }
    
    public func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return VCA.count
    }
    
    public func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstVC = viewControllers?.first,
            let firstVCI = VCA.index(of: firstVC) else {
                return 0
        }
        return firstVCI
    }
    
}
