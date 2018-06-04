/**
 * 
 */

var expanded = false;

function showCheckboxes(){
	var checkboxes = document.getElementById("checkboxes");
	
	if(expanded == false){
		checkboxes.style.display ="block";
		expanded = true;
	}else{
		checkboxes.style.display="none";
		expanded = false;
	}
}