describe("Test formal functions of backend", () => {
  beforeEach(() => {
    // Navigate to the frontend's startpage
    cy.visit("/");

    // Get the first backend link and click it
    cy.get("a[href*='/contao']")
      .first()
      .invoke("removeAttr", "target") // Remove the target attribute to open in the same window
      .click();

    // Type the username and password into input fields
    cy.get("input[name=username]").type("k.jones");
    cy.get("input[name=password]").type("kevinjones");
    cy.get('button[type="submit"').click();
  });

  // reset the database once
  it("reset the database", () => {
    cy.exec("npm run db:reset");
  });

  it("dummy test", () => {
    // Dummy test to show how tests continue in the new window
    expect(true).to.equal(true);
  });
});
