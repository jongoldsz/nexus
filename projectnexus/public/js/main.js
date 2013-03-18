jQuery(document).ready(function(){
	load_local_projects();
	load_nearby_projects();
});

function load_local_projects()
{
	// set source to function that will only return 4 local projects
	jQuery.getJSON('projects.json',function(data){
		local = data;
		for(var i = 0; i < 4; i++)
		{
			jQuery("#local_projects").append(project_tile(local[i]));
		}
	});
}

function load_nearby_projects()
{
	// set source to function that will only return 4 nearby projects
	jQuery.getJSON('projects.json',function(data){
		local = data;
		for(var i = 4; i < 8; i++)
		{
			jQuery("#nearby_projects").append(project_tile(local[i]));
		}
	});
}

function project_tile(project)
{
	var tile = '<div class="project_tile"><img src="uploads/'+project.miniimage+'" /><div class="project_details"><div class="project_tile_title">'+project.name+'</div><div class="project_tile_pitch">'+project.pitch+'</div></div><div class="project_tile_view_more_link">view more</div><div class="project_tile_status"><div class="project_tile_status_completed" style="width: '+245*(project.status/100)+'px"></div></div></div>';
	project.miniimage;
	project.name;
	project.pitch;
	project.status;
	return tile;
}