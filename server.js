const inquirer = require("inquirer");
const express = require("express");
const fs = require("fs");
const cTable = require("console.table");

// Define a function to handle menu questions
const menuQuestions = () => {
  inquirer
    .prompt([
      {
        name: "menu",
        type: "list",
        message: "MAIN MENU",
        choices: [
          "View All Departments",
          "View All Roles",
          "View All Employees",
          "Add Department",
          "Add Role",
          "Add Employee",
          "Update Employee Role",
        ],
      },
    ])
    .then((answer) => {
      // Switch case depending on user option
      switch (answer.menu) {
        case "View All Departments":
          viewAllDeps(); 
          // Call the function to view all departments
          break;

        case "View All Roles":
          viewAllRoles(); 
          // Call the function to view all roles
          break;

        case "View All Employees":
          viewAllEmps(); 
          // Call the function to view all employees
          break;

        case "Add Department":
          addDep(); 
          // Call the function to add a department
          break;

        case "Add Role":
          addRole(); 
          // Call the function to add a role
          break;

        case "Add Employee":
          addEmp(); 
          // Call the function to add an employee
          break;

        case "Update Employee Role":
          updateEmpRole(); 
          // Call the function to update an employee's role
          break;
      }
    });
};

// Define a function to view all departments
const viewAllDeps = () => {
  console.log("Viewing all departments..."); 
  // Display a message for all departments
};

// Define a function to view all roles
const viewAllRoles = () => {
  console.log("Viewing all roles..."); 
  // Display a message for all roles
};

// Define a function to view all employees
const viewAllEmps = () => {
  console.log("Viewing all employees..."); 
  // Display a message for all employees
};

// Define a function to add a department
const addDep = () => {
  inquirer
    .prompt([
      {
        name: "name",
        type: "input",
        message: "What department would you like to add?",
      },
    ])
    .then((answer) => {
      console.log(`Adding department ${answer.name}...`); 
      // Display a message with the department name
    });
};

// Define a function to add a role
const addRole = () => {
  inquirer
    .prompt([
      {
        name: "title",
        type: "input",
        message: "What role would you like to add?",
      },
      {
        name: "salary",
        type: "input",
        message: "What is the salary for this role?",
      },
    ])
    .then((answer) => {
      console.log(
        `Adding role ${answer.title} with salary ${answer.salary}...`
      ); // Display a message with the role title and salary
    });
};

// Define a function to add an employee
const addEmp = () => {
  inquirer
    .prompt([
      {
        name: "first",
        type: "input",
        message: "What is the employee's first name?",
      },
      {
        name: "last",
        type: "input",
        message: "What is the employee's last name?",
      },
      {
        name: "role",
        type: "input",
        message: "What is the employee's role?",
      },
      {
        name: "manager",
        type: "input",
        message: "Who is the employee's manager?",
      },
    ])
    .then((answer) => {
      console.log(
        `Adding employee ${answer.first} ${answer.last} with role ${answer.role} and manager ${answer.manager}...`
      ); // Display a message with employee details
    });
};

// Call the menuQuestions function to start the application
menuQuestions();