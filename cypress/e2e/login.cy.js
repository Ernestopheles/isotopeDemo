describe("Test the login form", () => {
  beforeEach(() => {
    // Navigate to the startpage
    cy.visit("/");
    // Assert that the breadcrumb navigation indicates "Home"
    cy.get(".active.last").should("contain", "Home");

    // Fill out the login form
    cy.get("input[name=username]").type("j.smith");
    cy.get("input[name=password]").type(`${"johnsmith"}`, { log: false });
  });

  it("displays form validation", () => {
    // clear out first name
    cy.get("input[name=username]").clear();
    cy.get('button[type="submit"').click();
    // Assert that the breadcrumb navigation indicates "Home"
    cy.get(".active.last").should("contain", "Home");
  });

  it("displays form validation", () => {
    // clear out first name
    cy.get("input[name=password]").clear();
    cy.get('button[type="submit"').click();
    // Assert that the breadcrumb navigation indicates "Home"
    cy.get(".active.last").should("contain", "Home");
    // Verify that the PHPSESSID cookie does not exist
    cy.getCookie("PHPSESSID").should("not.exist");
  });

  it("can submit a valid form", () => {
    cy.get('button[type="submit"').click();
    // We should be redirected
    cy.url().should("include", "/my-order-history");
    // Assert that the breadcrumb navigation indicates the expected pagename
    cy.get(".active.last").should("contain", "My order history");
    // our auth cookie should be present
    cy.getCookie("PHPSESSID").should("exist");
  });
});
