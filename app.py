from json import *
from bson.objectid import ObjectId
import bottle
import pymongo
import simplejson
from gridfs import GridFS
from bottle import static_file,run, route, template, request, abort, template
from pymongo import MongoClient, Connection

 
connection = Connection('localhost', 27017)
db = connection.ualmanac

@route('/fonts/<filename>')
def fonts(filename):
	return static_file(filename, root='./fonts')

@route('/js/<filename>')
def js_static(filename):
	return static_file(filename, root='./js')

@route('/uploads/<filename>')
def js_static(filename):
	return static_file(filename, root='./uploads')

@route('/css/<filename>')
def css_static(filename):
	return static_file(filename, root='./css')

@route('/img/<filename>')
def img_static(filename):
	return static_file(filename, root='./img')

@route('/')
def index():
	return template('landing')

@route('/addplant')
def addplant():
	return	template('addPlant',title="Add Plant")
	
@route('/addplant',method="POST")
def do_addplant():
	from pymongo import MongoClient , Connection	
	conn = MongoClient('localhost',27017)
	db = conn.ualmanac
	collection = db.plants

	plantName = request.forms.get('plantName')
	plantType = request.forms.get('plantType')
	plantFamily = request.forms.get('plantFamily')
	plantSeason = request.forms.get('plantSeason')
	plantZone = request.forms.get('plantZone')
	plantYeild = request.forms.get('plantYeild')
	plantPH = request.forms.get('plantPH')

	if plantName == "":
		return("Please Fill in Plant Name")
	if plantType == "":
		return("Please Fill in Plant Type")
	if plantFamily == "":
		return("Please Fill in Plant Family")
	if plantSeason == "":
		return("Please Fill in Plant Season")
	if plantZone == "":
		return("Please Fill in Plant Zone")
	if plantYeild == "":
		return("Please Fill in Plant Yeild")
	if plantPH == "":
		return("Please Fill in Plant PH")
	plant_doc = [{
					"plantName" : plantName ,
					"plantType" : plantType,
					"plantFamily" : plantFamily,
					"plantSeason" : plantSeason, 
					"plantZone" : plantZone, 
					"plantYeild" : plantYeild ,
					"plantPH" : plantPH
				}]
	print plant_doc
	collection.insert(plant_doc)
	print "Inserted Doc"
	return template('insertedPlant',
					plantName=plantName,plantType=plantType,
					plantFamily=plantFamily,plantSeason=plantSeason,
					plantZone=plantZone,plantYeild=plantYeild,
					plantPH=plantPH, title="Inserted Plant")



@route('/viewplants')
def viewplants():
	data_docs_raw = db['plants'].find({})
	data_docs = data_docs_raw
	output = template('viewPlants',data_docs=data_docs, title="View Plants")
	return output 


@route('/editplant/<_id>')
def editPlant(_id):
	data_docs_raw = db['plants'].find({"_id": ObjectId(_id) })
	data_docs = data_docs_raw
	output = template("editPlant",data_docs=data_docs, title="Edit Plant") 
	return output

 #pymongo.objectid('4d1a0cecd518230437000000') 

@route('/editplant/<_id>',method="POST")
def do_editPlant(_id):
	from pymongo import MongoClient , Connection	
	conn = MongoClient('localhost',27017)
	db = conn.ualmanac
	collection = db.plants

	plantName = request.forms.get('plantName')
	plantType = request.forms.get('plantType')
	plantFamily = request.forms.get('plantFamily')
	plantSeason = request.forms.get('plantSeason')
	plantZone = request.forms.get('plantZone')
	plantYeild = request.forms.get('plantYeild')
	plantPH = request.forms.get('plantPH')

	if plantName == "":
		return("Please Fill in Plant Name")
	if plantType == "":
		return("Please Fill in Plant Type")
	if plantFamily == "":
		return("Please Fill in Plant Family")
	if plantSeason == "":
		return("Please Fill in Plant Season")
	if plantZone == "":
		return("Please Fill in Plant Zone")
	if plantYeild == "":
		return("Please Fill in Plant Yeild")
	if plantPH == "":
		return("Please Fill in Plant PH")
	plant_doc = [{
					"plantName" : plantName ,
					"plantType" : plantType,
					"plantFamily" : plantFamily,
					"plantSeason" : plantSeason, 
					"plantZone" : plantZone, 
					"plantYeild" : plantYeild ,
					"plantPH" : plantPH
				}]
	
	print plant_doc
	print json.dumps(plant_doc, indent=4)
	collection.update({ "_id" : ObjectId(_id) }, {"$set":{
														"plantName" : plantName ,
														"plantType" : plantType,
														"plantFamily" : plantFamily,
														"plantSeason" : plantSeason, 
														"plantZone" : plantZone, 
														"plantYeild" : plantYeild ,
														"plantPH" : plantPH
														}}, upsert=False)
	print "Updated Doc"
	return template('updatedPlant',
					plantName=plantName,plantType=plantType,
					plantFamily=plantFamily,plantSeason=plantSeason,
					plantZone=plantZone,plantYeild=plantYeild,
					plantPH=plantPH, title="updated Plant")

@route('/deleteplant/<_id>', method='GET')
def deleteplant(_id):
	from pymongo import MongoClient , Connection	
	conn = MongoClient('localhost',27017)
	db = conn.ualmanac
	collection = db.plants
	doc = collection.find_one({"_id": ObjectId(_id)})
	return template("deletePlant",doc=doc, title="Delete Plant")

@route('/deleteplant/<_id>', method='POST')
def do_deleteplant(_id):
	from pymongo import MongoClient , Connection	
	conn = MongoClient('localhost',27017)
	db = conn.ualmanac
	collection = db.plants
	doc = collection.find_one({"_id" : ObjectId(_id)})
	collection.remove(doc)
	data_docs_raw = collection.find({})
	data_docs = data_docs_raw
	return template("viewPlants", data_docs=data_docs,title="Veiw Plants")

@route('/landing')
def landing():
	return template("landing")

@route('/json')
def json():
	data_docs_raw = db['plants'].find({})
	data = json.loads(data_docs_raw)
	#output = template('json',data_docs=data_docs, title="json")
	print data
	return template("json", data=data)
'''
@route('/upload/<_id>', method="GET")
def upload(_id):
	from pymongo import MongoClient , Connection	
	conn = MongoClient('localhost',27017)
	db = conn.ualmanac
	collection = db.plants
	doc = collection.find_one({"_id": ObjectId(_id)})
	fs = GridFS(db)
	plantDocId = _id
	description = request.forms.get('description')
	uploadImage = request.files.get('uploadImage')
	with open(uploadImage) as imageFile:
		fs.put(imageFile, content_type:"image/jpeg", filename="imageFile")
	doc[]


@route('/upload/<_id>', method="POST")
def do_upload(_id):
	from pymongo import MongoClient , Connection	
	conn = MongoClient('localhost',27017)
	db = conn.ualmanac
	fs = GridFS(db)
	plantDocId = _id
	description = request.forms.get('description')
	uploadImage = request.files.get('uploadImage')
	with open(uploadImage) as imageFile:
		fs.put(imageFile, content_type:"image/jpeg", filename="imageFile")


	if ext == ('.png','.jpg','.jpeg'):
		return('File extension not allowed') 
	if description == "":
		return('Please fill in a description for the image.')
	if uploadImage == "":
		return('Please select a image to upload.')
'''


if __name__ == '__main__':
	run(hostname='localhost',port=8081, reloader=True)
