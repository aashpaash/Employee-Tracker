// Dependencies
const mysql = require("mysql2");
const inquirer = require('inquirer');
const express = require('express');
const consoleTable = require("console.table");

// Localhost PORT
const PORT = process.env.PORT || 3001;
const app = express();

// Middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Link datatbase
const db = mysql.createConnection({
    host:'localhost',
    user: "root",
    password: "passwordd",
    database: 'eTracker_db',

    }
);

// Question and choices prompt array
function init () {
    inquirer.prompt([
        {
            type: "list",
            message: "Select a propmpt",
            name: "choices",
            choices: [
                "View All Departments",
					"View All Roles",
					"View All Employees",
					"Add A Departments",
					"Add A Role",
					"Add An Employee",
					"Update Employee Database",
					"Done",
            ],
        }
    ]).then(res => {
        if (answers.choice === "View All Departments") {
            viewAllDepartments();
        } else if (answers.choice === "View All Roles") {
            viewAllRoles();
        } else if (answers.choice === "View All Employee") {
            viewAllEmployees();
        } else if (answers.choice === "Add An Employee") {
            addEmployee();
        } else if (answers.choice === "Add A Role") {
            addRole();
        } else if(answer.choice === "Add A Departments"){
            addDepartment();
        } else if (answer.choice === "Done"){
            init();
        }
        if(err => {
            console.error(err);
            process.exit(1);
          });

    })
}

// View choices
function viewEmployee(){
    db.query("SELECT * FROM employee")
    if (err){}
}

