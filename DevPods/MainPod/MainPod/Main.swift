//
//  Main.swift
//  MainPod
//
//  Created by Dan Khramov on 20.05.2020.
//  Copyright © 2020 Dan Khramov. All rights reserved.
//

import ChildPod

public final class Main {
    public init() { }

    public func say() {
        print("I'm from MainPod")
    }

    public func sayAll() {
        print("And here's what child say:")
        Child().say()
    }
}
