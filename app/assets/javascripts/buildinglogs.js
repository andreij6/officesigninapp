
/*
 * 
function loadAJAX() {
	var request;
	
	if(window.XMLHttpRequest){
		request = new XMLHttpRequest();
	} else {
		request = new ActiveXObject('Microsoft.XMLHTTP');
	}
	
	//request.open('GET','articles.xml');
	request.open('GET','articles.json');
	request.onreadystatechange = function(){
		if ((request.readyState === 4) && (request.status === 200)){
			var items = JSON.parse(request.responseText);
			var output = "<ul>";
			for (var key in items) {
				output += '<li>' + items[key].title + "</li>";
			} 
			output += "</ul>";
			document.getElementById('update').innerHTML = output;
		}
	};
	request.send();
}// LOAD AJAX
*/

$.getJSON('buildinglogs.json', function(data) {
	console.log(data);
});