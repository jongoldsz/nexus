jQuery(document).ready(function(){
	load_local_projects();
	//load_nearby_projects();
});

function load_local_projects()
{
	// set source to function that will only return 4 local projects
	jQuery.getJSON('projects.json',function(data){
		local = data;
		for(var i = 0; i < 4; i++)
		{
			jQuery("#featured-projects").append(project_tile(local[i],i));
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
			jQuery("#local-projects").append(project_tile(local[i],i));
		}
	});
}

function project_tile(project,number)
{
	if(number==0 || number== 4) {
		var tile = '<div class="project_tile first"><img src="uploads/'+project.miniimage+'" /><div class="project_details"><div class="project_tile_title"><a href="/projects/'+project.id+'">'+project.name+'</a></div><div class="project_tile_pitch">'+project.pitch+'</div></div><div class="project_tile_view_more_link"><a href="/projects/'+project.id+'">view more</a></div><div class="project_tile_status"><div class="project_tile_status_completed" style="width: '+(project.status)+'%"></div></div></div>';
	}
	else if( number==4 || number==8) {
		var tile = '<div class="project_tile last"><img src="uploads/'+project.miniimage+'" /><div class="project_details"><div class="project_tile_title"><a href="/projects/'+project.id+'">'+project.name+'</a></div><div class="project_tile_pitch">'+project.pitch+'</div></div><div class="project_tile_view_more_link"><a href="/projects/'+project.id+'">view more</a></div><div class="project_tile_status"><div class="project_tile_status_completed" style="width: '+(project.status)+'%"></div></div></div>';
	}
	else {
		var tile = '<div class="project_tile"><img src="uploads/'+project.miniimage+'" /><div class="project_details"><div class="project_tile_title"><a href="/projects/'+project.id+'">'+project.name+'</a></div><div class="project_tile_pitch">'+project.pitch+'</div></div><div class="project_tile_view_more_link"><a href="/projects/'+project.id+'">view more</a></div><div class="project_tile_status"><div class="project_tile_status_completed" style="width: '+(project.status)+'%"></div></div></div>';
	}

	project.miniimage;
	project.name;
	project.pitch;
	project.status;
	return tile;
}