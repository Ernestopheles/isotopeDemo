describe("The Login Page", () => {
  beforeEach(() => {
    // reset the database prior to every test
    cy.exec("npm run db:reset");
  });

  it("logs in successfully", () => {
    // Visit a login page - we take the demos startpage here
    cy.visit("/");

    // // Login only working in prod env and with cookie allow list set (preventing other cookies not needed for contao to cause the CSRF protection to fail)
    const username = "j.smith";
    const password = "johnsmith";

    cy.login(username, password);

    // We should be redirected to /meine-bestellungen
    cy.url().should("include", "/meine-bestellungen");
  });
});
