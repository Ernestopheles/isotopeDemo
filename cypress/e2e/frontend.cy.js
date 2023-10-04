describe("Test formal functions of website", () => {
  beforeEach(() => {
    // Navigate to the startpage
    cy.visit("/");
  });

  // Check all links on baseUrl except email
  // Throws a 404 error if a link is not working
  it("checks all links to sites", () => {
    cy.get("a:not([href*='mailto:'])").each((page) => {
      cy.request(page.prop("href"));
    });
  });

  // Login to frontend
  // Login is only working in prod env and with cookie allow list set (preventing other cookies not needed for contao to cause the CSRF protection to fail)
  it("logs in", () => {
    const username = "j.smith";
    const password = "johnsmith";

    cy.login(username, password);

    // Assert that we are on the expected page
    cy.location("pathname").should("eq", "/en/my-order-history.html");
  });

  // Login to frontend - missing username
  it("displays form validation", () => {
    // Fill out the login form and submit
    cy.get("input[name=username]").clear();
    cy.get("input[name=password]").type(`${"johnsmith"}`, { log: false });
    cy.get('button[type="submit"').click();

    // Verify that the PHPSESSID cookie does not exist
    cy.getCookie("PHPSESSID").should("not.exist");
    // Assert that we are on the expected page
    cy.location("pathname").should("eq", "/en/");
  });

  // Login to frontend - missing password
  it("displays form validation", () => {
    // Fill out the login form and submit
    cy.get("input[name=username]").type("j.smith");
    cy.get("input[name=password]").clear();
    cy.get('button[type="submit"').click();

    // Verify that the PHPSESSID cookie does not exist
    cy.getCookie("PHPSESSID").should("not.exist");
    // Assert that we are on the expected page
    cy.location("pathname").should("eq", "/en/");
  });
});
