const mysql = require("mysql");
const fs = require("fs");

// Create a MySQL database connection
const connection = mysql.createConnection({
  multipleStatements: true,
  host: "localhost",
  user: "root",
  password: "",
});

// Connect to the database server
connection.connect((err) => {
  if (err) {
    console.error("Error connecting to the database server:", err);
    return;
  }

  console.log("Connected to the database server.");

  // Define the path to your fixture SQL file
  const fixtureFilePath = "cypress/fixtures/isotope-demo.sql";

  // Execute SQL command to drop the database
  const dropDBSQL = "DROP DATABASE IF EXISTS db_isotopeDemo;";
  connection.query(dropDBSQL, (dropErr) => {
    if (dropErr) {
      console.error("Error dropping the database:", dropErr);
      connection.end();
      return;
    }
    console.log("Database dropped successfully.");

    // Execute SQL command to create a new database
    const createDBSQL = "CREATE DATABASE db_isotopeDemo;";
    connection.query(createDBSQL, (createErr) => {
      if (createErr) {
        console.error("Error creating the database:", createErr);
        connection.end();
        return;
      }

      // Use the newly created database
      const useDBSQL = "USE db_isotopeDemo;";
      connection.query(useDBSQL, (useErr) => {
        if (useErr) {
          console.error("Error using the database:", useErr);
          connection.end();
          return;
        }

        // Read the fixture SQL file
        fs.readFile(fixtureFilePath, "utf-8", (readErr, sqlContent) => {
          if (readErr) {
            console.error("Error reading fixture file:", readErr);
            connection.end();
            return;
          }

          // Execute the SQL commands to reset the database
          connection.query(sqlContent, (queryErr) => {
            if (queryErr) {
              console.error("Error resetting the database:", queryErr);
            } else {
              console.log("Database reset successful.");
            }

            // Close the database connection
            connection.end();
          });
        });
      });
    });
  });
});
