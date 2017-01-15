//
//  Select.swift
//  MongoDBStORM-Demo
//
//  Created by Jonathan Guthrie on 2017-01-11.
//
//

import StORM
import MongoDBStORM
import SwiftRandom


/* =============================================================================================
Get by ID
First, we create a new record, then we fetch it into a new object.
============================================================================================= */
func getByID() throws -> User {

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
	print("'getByID' - Object created with id of \(obj.id), and firstname is \(obj.firstname)")
	// Row is now created.


	// Now we fetch it into anew instance
	let getObj = User()

	// note that the following also works:
	// getObj.id = obj.id
	// then in the do/catch block, 
	// try getObj.get()

	do {
		try getObj.get(obj.id)
	} catch {
		throw error
	}
	print("'getByID' - Object fetched with id of \(getObj.id), and firstname is \(getObj.firstname)")

	return getObj
}


/* =============================================================================================
Find by [String:Any]
First, we create a new record, then we fetch it into a new object.
============================================================================================= */
func findByStringAny() throws -> User {
	let rand = Randoms.randomAlphaNumericString(length: 8)
	// Create new row.
	let obj = User()
	obj.id = obj.newUUID()
	obj.firstname = "FindMe\(rand)"
	obj.lastname = "Y"

	do {
		try obj.save()
	} catch {
		throw error
	}
	print("'findByStringAny' - Object created with id of \(obj.id), and firstname is \(obj.firstname)")
	// Row is now created.


	// Now we fetch it into anew instance
	let getObj = User()

	var findObj = [String:Any]()
	findObj["firstname"] = "FindMe\(rand)"

	do {
		try getObj.find(findObj)
	} catch {
		throw error
	}
	print("'findByStringAny' - Object fetched with id of \(getObj.id), and firstname is \(getObj.firstname)")

	return getObj
}




