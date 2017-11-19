<mail-editor>
	<p>EDITOR</p>
	<div>
		<span>TO</span> <input type="text" ref="emailTo" value="">
	</div>
	<div>
		<span>SUBJECT</span> <input type="text" ref="emailSubject" value="">
	</div>
	<div>
		<textarea name="name" ref="emailBody" rows="4" cols="40"></textarea>
	</div>
	<div>
		<!-- Call the sendMail function that adds a new list item-->
		<button type="button" onclick={ sendMail }>SEND</button>
		<!-- Call the closeEditor function that hides the editor-->
		<button type="button" onclick={ parent.closeEditor }>CANCEL</button>
	</div>

	<script>
	//a function that stores the values of the editor text fields in a new variable, adds it to the list items in the parent mail-app.tag, and hides the editor, called in Line 14
	this.sendMail = function(event) {
		var newMail = {
			toEmail: this.refs.emailTo.value,
			subject: this.refs.emailSubject.value,
			body: this.refs.emailBody.value
		};
		this.parent.emailList.push(newMail);
		this.parent.closeEditor();
	};
	</script>

	<style>
		:scope {
			display: block;
			background-color: #333;
			color: white;
			border: 1px solid maroon;
			padding: 10px;
			position: fixed;
			right: 0;
			bottom: 0;
			width: 300px;
			height: 200px;
		}
		textarea {
			margin-top: 5px;
		}
	</style>
</mail-editor>
