//
//  TabmanBarStyle.swift
//  Tabman
//
//  Created by Merrick Sapsford on 22/02/2017.
//  Copyright © 2017 Merrick Sapsford. All rights reserved.
//

import UIKit

public extension TabmanBar {
    
    public class AppearanceConfig: Any {
        
        //
        // MARK: Properties
        //
        
        
        //
        // Indicator
        
        /// The color of the tab indicator.
        public var indicatorColor: UIColor?
        /// The weight (thickness) of the tab indicator.
        public var indicatorWeight: TabmanLineIndicator.Weight?
        
        
        //
        // Text
        
        /// The font to use for text labels in the tab bar.
        public var textFont: UIFont?
        /// The text color to use for selected tabs in the tab bar.
        public var selectedTextColor: UIColor?
        /// The text color to use for tabs in the tab bar.
        public var textColor: UIColor?
        
        
        //
        // Bar
        
        /// The background style for the tab bar.
        public var backgroundStyle: TabmanBarBackgroundView.BackgroundStyle?
        /// Whether to show a fade on the items at the bounds edge of the tab bar.
        public var showEdgeFade: Bool?
        /// Whether scroll is enabled on the scroll view in the tab bar.
        public var isScrollEnabled: Bool?
        
        //
        // MARK: Init
        //
        
        public init(_ configurer: (AppearanceConfig) -> ()) {
            configurer(self)
        }
        
        static var defaultAppearance: AppearanceConfig {
            return AppearanceConfig({ (config) in
                // default config
            })
        }
    }
}
