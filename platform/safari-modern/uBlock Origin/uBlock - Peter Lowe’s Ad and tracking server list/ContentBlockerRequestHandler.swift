//
//  ContentBlockerRequestHandler.swift
//  uBlock - Peter Lowe’s Ad and tracking server list
//
//  Created by Andrew Mattie on 8/1/19.
//  Copyright © 2019 Mattie Apps. All rights reserved.
//

import Foundation

class ContentBlockerRequestHandler: NSObject, NSExtensionRequestHandling {

    func beginRequest(with context: NSExtensionContext) {
        let attachment = NSItemProvider(contentsOf: Bundle.main.url(forResource: "blockerList", withExtension: "json"))!
        
        let item = NSExtensionItem()
        item.attachments = [attachment]
        
        context.completeRequest(returningItems: [item], completionHandler: nil)
    }
    
}
