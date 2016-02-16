<contact-list>
	<h2>Hello from the contact-list.tag file</h2>
	<ul>
		<li each={p in opts.people}>{p.first} {p.last}</li>
	</ul>


	<script>
		this.on('mount', function(){
			console.log('riot mount even is fired')
			opts.callback(this)
		});

		this.on('data_loaded', function(peeps) {
			opts.people = peeps;
			this.update(); 
		});
	</script>
</contact-list>