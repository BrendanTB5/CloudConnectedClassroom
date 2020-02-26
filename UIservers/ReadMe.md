# User Interface Setup

To run the user interface on your local host, first install npm, angular CLI, and flask using your Linux terminal.
Here are a few links to instructions on how to do this:
 - https://www.geeksforgeeks.org/angular-cli-angular-project-setup/
 - https://www.twilio.com/docs/usage/tutorials/how-to-set-up-your-python-and-flask-development-environment

Please fill in the required database credentials in the backend server before trying to run the user interface.

Once these tools have been installed open two different terminals, navigate the first terminal to the UIdesign directory in the UIservers folder. Use the command "ng serve" to run the front end user interface server. Using the second terminal navigate to the backend directory in the UIservers folder and use the command "flask run" to start the backend server. If this throws an error, try command "EXPORT FLASK_APP=main.py" and then retry "flask run".