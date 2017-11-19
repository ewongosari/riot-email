# Part 1
Take some time to look through the code and talk about it with your partner.
- What are the different components of this app? *Compose button, editor panel, and mail item list.*
- What tags do we have? *Mail-app, mail-editor and mail-item tags.*
- Which tags house the child tags? *Mail-app tag.*
- How are the components wired up for this email app? *Ideally, clicking on the Compose button will display the editor. Filling in the text fields in the editor and clicking the Send button will display the new content in the item list. Clicking on the Cancel button hides the editor.*
- What are the next steps you would think about to make this email app work? How would you go about it in the riot way? *Add a toggleEditor function to make the Compose button's toggling works. Add onclick attribute and sendMail functions to the editor's Send button to create and display a new item list. Add a closeEditor function that hides the editor and call it when the Cancel button is clicked.*

# Part 2

Take some time to think through the code.
- What’s new here? What do you understand is happening functionally? *The Compose button can toggle between showing and hiding the editor; in the editor, the Send button can create a new list item with the content the user inputs and the Cancel button can hide the editor.*
- How is component based thinking working? *Each component either controls other components or is controlled by other components.*
- How is Compose represented in a data state? *The button reads 2 Boolean values to determine whether to show the editor or not.*
- How might you build out the functionality or change in state? *Use a toggle attribute that listens to an event to show the editor by changing its Boolean values.*
- What is the state of the button initially? Why do you think that is? *The button's state is initially false because we don't want to show the editor until we want to compose an email.*
- Why are we using the parent property here? *Because the function is written in the parent tag, not in the child tag.*
- Why is the closeEditor function in a different tag file? *Because the if creatingEmail attribute is determined in the parent tag.*
- Where is the function called from? How are we wiring different components together? *The function is called in the child tag. Clicking on the Cancel button in the editor will trigger the closeEditor function written in the main app.*
- How are we sending data from the smaller component (editor) to the larger mail app? *Content inputted in the editor text fields is stored in a newMail variable and added to the list items in the main app via push.*
- How is riot’s way of getting specific references to elements different from regular JS? *Using the refs attributes. Example: this.refs.emailTo.value*
- How is the mail app component updating when the email is sent? Talk about it in terms of changes in state. *The editor gets hidden and a new list item is added below the original ones.*
