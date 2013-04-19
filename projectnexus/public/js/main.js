jQuery(document).ready(function(){
    enable_project_buttons();
    enable_objective_buttons();
    enable_nav_project_buttons();
});

function enable_objective_buttons()
{
    jQuery('.add_task').click(function() {
        jQuery('form#new_task').toggle();
    });
    jQuery('.add_objective').click(function() {
        jQuery('form#new_objective').toggle();
    });
    jQuery('.expand_task').click(function(){
	var task = jQuery(this).data("task");
	jQuery(task).toggle();
    });
}

function enable_project_buttons()
{
    jQuery(".project_button").unbind("click").click(function(){
	var buttonAction = jQuery(this).val().toLowerCase();
	var project_id = get_project_id();
	if(buttonAction == "join")
	{
	    jQuery.post('/memberships.json',{"membership" :{ "name" : "default", "project_id" : project_id} },function(data){
		jQuery(".join").before('<input class="project_button leave" type="button" value="Leave" membership_id="'+data.membership.id+'" />').remove();
		enable_project_buttons();
	    });
	}
	else if(buttonAction == "leave")
	{
	    var membership_id = jQuery(this).attr("membership_id");
	    jQuery.post('/memberships/'+membership_id+'.json',{"_method": "delete"},function(data){
		jQuery(".leave").before('<input class="project_button join" type="button" value="Join" />').remove();
		enable_project_buttons();
            });
	}
	else if(buttonAction == "support")
        {
            jQuery.post('/supporters.json',{"supporter" :{ "project_id" : project_id} },function(data){
                jQuery(".support").before('<input class="project_button unsupport" type="button" value="Unsupport" supporter_id="'+data.supporter.id+'" />').remove();
                enable_project_buttons();
            });
        }
	else if(buttonAction == "unsupport")
        {
            var supporter_id = jQuery(this).attr("supporter_id");
            jQuery.post('/supporters/'+supporter_id+'.json',{"_method": "delete"},function(data){
                jQuery(".unsupport").before('<input class="project_button support" type="button" value="Support" />').remove();
                enable_project_buttons();
            });
        }
	else if(buttonAction == "edit")
	{
	    window.location.pathname += "/edit";
	}

    });
}

function get_project_id()
{
    var path = window.location.pathname;
    path = path.split("/");
    return path[2];
}

function enable_nav_project_buttons()
{
    jQuery('#image_and_icon').click(function() {
	var pageToLoad = "home";
	var project_id = get_project_id();
	jQuery.getScript('/projects/'+project_id+'.js?page='+pageToLoad, function(data, textStatus, jqxhr) {
	    run();
	});
    });

    jQuery('.project_nav_button').click(function() {
	var pageToLoad = jQuery(this).val();
	pageToLoad = pageToLoad.toLowerCase();
	var project_id = get_project_id();
	jQuery.getScript('/projects/'+project_id+'.js?page='+pageToLoad, function(data, textStatus, jqxhr) {
	    run();
	});
   });
}

function create_objective()
{
    jQuery('.create_objective').click(function(){
        var objective_name = jQuery('.objective_name').val();
        var objective_description = jQuery('.objective_description').val();
        var project_id = jQuery(".project_id").val();
        jQuery.post('/objectives.json',{"objective" :{ "name" : objective_name, "description": objective_description, "project_id" : project_id} },function(data){
	    jQuery(".project_objectives").append('<tr class="objective_header" id="objective_'+data.objective.id+'"><td>'+data.objective.name+'</td><td>'+data.objective.description+'</td></tr>');
	    jQuery(".project_objectives").append('<tr class="objective_body" id="objective_'+data.objective.id+'_tasks"><td colspan=2><table id="objective_'+data.objective.id+'_tasks_table"></table></td></tr>');
        });
    });
}

function enable_tagging()
{
    jQuery('.add_tag').click(function(){
	var tag_id = jQuery('select.projecttags').val();
	var project_id = jQuery('input.project_id').val();
	var tag_name = jQuery(".projecttags option[value='"+tag_id+"']").text();
	jQuery.post('/projecttags.json',{"projecttag" :{ "tag_id" : tag_id, "project_id" : project_id} },function(data){
	    jQuery('.current_tags').append('<div id="project_row_id_'+data.projecttag.id+'">'+tag_name+'<a href="#" class="remove_tag" id="'+data.projectag.id+'">Remove Tag</a><br/></div>');
	    enable_remove_tagging();
        });
    });
}

function enable_remove_tagging()
{
    jQuery('.remove_tag').unbind('click').click(function(){
        var id = jQuery(this).attr("id");
        jQuery.post('/projecttags/'+id+'.json',{"_method": "delete"},function(data){
            jQuery('#project_row_id_'+id).remove();
        });
    });

}

function load_local_projects()
{
	// set source to function that will only return 4 local projects
	/*jQuery.getJSON('projects.json',function(data){
		local = data;
		for(var i = 0; i < 4; i++)
		{
			jQuery("#featured-projects").append(project_tile(local[i],i));
		}
	});*/
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
