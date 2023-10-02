describe("Test the main navigation", () => {
  beforeEach(() => {
    // Visit the home page
    cy.visit("/");
    // Assert that the breadcrumb navigation indicates "Home"
    cy.get(".active.last").should("contain", "Home");
  });

  it("visit shop page and afterwards the home page", () => {
    // Click the link to the the shop page
    cy.contains("Shop").click();
    // Assert that the breadcrumb navigation indicates the expected pagename
    cy.get(".active.last").should("contain", "Shop");

    // Click the link to the the home page
    cy.get('a[title="Home"]').click();
    // Assert that the breadcrumb navigation indicates the expected pagename
    cy.get(".active.last").should("contain", "Home");
  });
});
