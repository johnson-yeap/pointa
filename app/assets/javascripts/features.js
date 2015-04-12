// get the academic session id from the selected session and 
// put it into the registered courses.
function getSelectedSessionId() {

  var e = document.getElementById('enrollments_academic_year_semester_id');
  var eValue = e.options[e.selectedIndex].value;

  var sessions = document.getElementsByClassName("featureP");
  for(var i = 0; i < sessions.length; i++)
  	sessions[i].value = eValue;
}