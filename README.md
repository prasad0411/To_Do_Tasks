# To_Do_Tasks
This repository contains code for a "to-do checklist" application built using Flutter and Dart. The code is organized into multiple files, each serving a specific purpose.

The AddTaskScreen class represents a screen where users can add new tasks to their checklist. It consists of a container with a light blue background color and a child container that holds the actual content. The content includes a heading "Add task," a text field for inputting task details, and a button labeled "Add" to submit the task.

The TaskScreen class represents the main screen of the application. It includes a floating action button for adding new tasks, which opens a modal bottom sheet containing the AddTaskScreen. The body of the screen consists of a column with a container at the top, displaying the application name and the number of tasks. Below that, there's an expanded container that displays the list of tasks using the TasksList widget.

The TasksList class is a stateful widget that represents the list of tasks. Currently, it contains three instances of the TaskTile widget, but this can be expanded to include dynamically generated task tiles based on user input.

The TaskTile class represents an individual task in the list. Each task is displayed as a ListTile with a checkbox and a title. The state of the checkbox is managed by the _TaskTileState class, and when the checkbox state changes, it triggers a callback to update the UI and strike through the task title if it's marked as completed.

The TaskCheckbox class represents the checkbox widget used in the TaskTile. It takes the checkbox state and a callback function to toggle the checkbox state.

The main.dart file serves as the entry point of the application. It initializes the MyApp class, which is a stateless widget that sets the TaskScreen as the home screen of the application.

Overall, this code provides the foundation for a basic to-do checklist application. It allows users to add tasks, view them in a list, and mark tasks as completed using checkboxes.
