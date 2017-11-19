<mail-app>
	<button type="button" name="button" onclick={ toggleEditor }>COMPOSE</button>

	<div class="mail-list">
		<mail-item each={ emailList }></mail-item>
	</div>

	<mail-editor if={ creatingEmail }></mail-editor>

	<script>
		//console.log(this);

		this.creatingEmail = false; //by default, the editor is hidden
		//a function that toggles the value of creatingEmail to either show or hide the editor, called in Line 2
		this.toggleEditor = function(event){
			this.creatingEmail = true;
		};
		//a function that sets the value of creatingEmail to false and hides the editor, called in Line 14 of the mail-editor.tag
		this.closeEditor = function(event) {
			this.creatingEmail = false;
		};

		this.emailList = [{
			toEmail: "alpha@alpha.com",
			subject: "some subject",
			body: "I like turtles."
		},{
			toEmail: "alpha@alpha.com",
			subject: "some subject",
			body: "I like turtles."
		},{
			toEmail: "alpha@alpha.com",
			subject: "some subject",
			body: "I like turtles."
		}];
	</script>

	<style>
		:scope {
			display: block;
			border: 1px solid orange;
			padding: 10px;
			position: fixed;
			height: 100%;
			width: 100%;
		}
		.mail-list {
			margin-top: 15px;
		}
	</style>

</mail-app>
