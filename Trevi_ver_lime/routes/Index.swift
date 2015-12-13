//
//  Index.swift
//  Trevi
//
//  Created by LeeYoseob on 2015. 12. 2..
//  Copyright © 2015년 LeeYoseob. All rights reserved.
//

import Foundation
import Trevi

public class Index: RouteAble {

    public override init () {
        super.init ()


    }

    public override func prepare () {
        let index = trevi.store ( self )

        index.get ( "/" ) {
            ( req, res ) -> Bool in
            res.bodyString = "im " + req.path
            res.send ()
            return false
        }

        index.get("/lee") { req ,res in
            res.bodyString = "im " + req.path
            res.send()

            return false
        }
        index.get ( "/hi" ) {
            req, res in
            res.bodyString = "im " + req.path
            res.send ()
            return false
        }

        index.use ( "/end", End () )
    }
}