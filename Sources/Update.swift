//
//  Update.swift
//  MongoDBStORM-Demo
//
//  Created by Jonathan Guthrie on 2017-01-11.
//
//

import StORM
import MongoDBStORM


/* =============================================================================================
Save - Update
First, we create a new record, then we update it.

Note that the only change between the two is that the first time we invoke there is no id property
This tells the ORM to create a new row, and the closure assigns the id on response.
============================================================================================= */
func saveUpdate() throws -> User {

	// Create new row.
	let obj = User()
	obj.id = obj.newUUID()
	obj.firstname = "X"
	obj.lastname = "Y"

	do {
		try obj.save()
	} catch {
		throw error
	}
	print("'saveUpdate' - Object created with id of \(obj.id), and firstname is \(obj.firstname)")
	// Row is now created.


	// Now we change it
	obj.firstname = "A"
	obj.lastname = "B"
	do {
		try obj.save()
	} catch {
		throw error
	}
	print("'saveUpdate' - Object created with id of \(obj.id), and firstname is now \(obj.firstname)")
	// ow is now saved, and changed

	return obj
}


