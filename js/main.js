// Load Typekit fonts
try{Typekit.load();}catch(e){}

$(document).ready(function(){
	var cycle_time = 10000;
	function cycle() {
		$('h1#name')
			.animate({'color':'#E39D9D'}, cycle_time)
			.animate({'color':'#BEEBBC'}, cycle_time)
			.animate({'color':'#9DA5E3'}, cycle_time, function(){
        cycle()
      });
	};
	cycle();
});
