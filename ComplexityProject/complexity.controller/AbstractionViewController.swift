//
//  ViewController.swift
//  ComplexityProject
//
//  Created by Billings, Spencer on 12/4/18.
//  Copyright © 2018 Billings, Spencer. All rights reserved.
//

import UIKit

public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource
{

    // MARK: - Lifecycle methods
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        dataSource = self
        if let firstViewController = orderedAbstractionViews.first
        {
            setViewControllers([firstViewController],
                              direction: .forward,
                              animated: true,
                              completion: nil)
        }
    }

    // MARK: - Data Members
    private lazy var orderedAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel: "Swift"),
            self.newAbstractionViewController(abstractionLevel: "Block"),
            self.newAbstractionViewController(abstractionLevel: "Bytecode"),
            self.newAbstractionViewController(abstractionLevel: "Binary"),
            self.newAbstractionViewController(abstractionLevel: "LogicalGate"),
        ]
    }()
    
    // MARK: Helper method to retrieve the correct ViewController bassed on the data member
    private func newAbstractViewController(abstractionLevel : String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController(withIdentifier: "\(abstractionLevel)ViewController")
    }
    
    // MARK: - Datasource required methods
    // Swipe Left
    public func viewControllerIndex(_ pageViewController: UIPageViewController, viewControllerBefore: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
            else
        {
                return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
            else
        {
            return orderedAbstractionViews.last
        }
        
        guard orderedAbstractionViews.count > previousIndex
            else
        {
                return nil
        }
        
        return orderedAbstractionViews[previousIndex]
    }
    
    // Swipe right
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
            else
        {
                return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex >= 0
            else
        {
            return nil
        }
        
        guard nextIndex < orderedAbstractionViews.count
            else
        {
            return orderedAbstractionViews.first
        }
        
        return orderedAbstractionViews[nextIndex]
    }
}

