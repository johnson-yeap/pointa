// get the academic session id from the selected session and 
// put it into the registered courses.
function getSelectedSessionId() {

  var session_menu = document.getElementById('enrollments_academic_year_semester_id');
  var session_id = session_menu.options[session_menu.selectedIndex].value;

  var sessions = document.getElementsByClassName("featureP");
  for(var i = 0; i < sessions.length; i++)
  	sessions[i].value = session_id;
}

function checkCompleted(current_element_id) {
	var grade_menu = document.getElementById(current_element_id);
	var checkbox_id = current_element_id.replace("grade_id", "completed");

	var grade_id = grade_menu.options[grade_menu.selectedIndex].value;
	if (grade_id == 0) {
		document.getElementById(checkbox_id).checked = false;
	} else {
		document.getElementById(checkbox_id).checked = true;
	}
}