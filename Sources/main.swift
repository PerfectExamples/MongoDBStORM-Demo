//
//  main.swift
//  MongoDBStORM Demo
//
//  Created by Jonathan Guthrie on 2017-01-11.
//
//


import StORM
import MongoDBStORM

// Set the connection properties
// Change to suit your specific environment
MongoDBConnection.host = "localhost"
MongoDBConnection.database = "perfect_testing"



/*	===========================================================
	Create actions
===========================================================  */

// Standard Save
do {
	let _ = try saveNew()
} catch {
	print("1. \(error)")
}

// Direct Create
do {
	let _ = try saveCreate()
} catch {
	print("2. \(error)")
}





/*	===========================================================
	Update actions
===========================================================  */

// Standard Update
do {
	let _ = try saveUpdate()
} catch {
	print("3. \(error)")
}


/*	===========================================================
	Find / Select actions
===========================================================  */

// get by id
do {
	let _ = try getByID()
} catch {
	print("4. \(error)")
}

// perform a find
do {
	let _ = try findByStringAny()
} catch {
	print("5. \(error)")
}




/*	===========================================================
	Delete actions
===========================================================  */

// deleting an object
do {
	let _ = try deleteObject()
} catch {
	print("6. \(error)")
}

// deleting an object by id reference
do {
	let _ = try deleteObjectByID()
} catch {
	print("7. \(error)")
}

