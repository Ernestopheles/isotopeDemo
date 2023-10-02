// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })

// import "@testing-library/cypress/add-commands";

// Fill in a login form
Cypress.Commands.add("login", (username, password) => {
  // Type the username and password into input fields using their name
  cy.get("input[name=username]").type(username);
  cy.get("input[name=password]").type(`${password}{enter}`, { log: false });
  // our auth cookie should be present
  cy.getCookie("PHPSESSID").should("exist");
});

// Select elements by data-test attribute
Cypress.Commands.add("getBySel", (selector, ...args) => {
  return cy.get(`[data-test=${selector}]`, ...args);
});

// Select elements by data-test attribute mit Wildcard
Cypress.Commands.add("getBySelLike", (selector, ...args) => {
  return cy.get(`[data-test*=${selector}]`, ...args);
});
