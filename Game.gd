tool

extends Spatial

func _ready():
	#test
	var navigationMesh = NavigationMesh.new()
	navigationMesh.set("agent/height",1.75)
	navigationMesh.set("agent/radius",0.3)
	navigationMesh.set("cell/height",0.1)
	navigationMesh.set("cell/size",0.1)
	navigationMesh.set("geometry/parsed_geometry_type",NavigationMesh.PARSED_GEOMETRY_BOTH)
	navigationMesh.set("geometry/source_geometry_mode",1)
	navigationMesh.set("geometry/source_group_name","navmesh")

	# bake navmesh
	NavigationMeshGenerator.bake(navigationMesh,$".")
	
	# assign navigationMesh in Navigation
	$Navigation/NavigationMeshInstance.navmesh = navigationMesh

