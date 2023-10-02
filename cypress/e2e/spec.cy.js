describe("Test the Homepage", () => {
  beforeEach(() => {
    // reset the database prior to every test
    // cy.exec("npm run db:reset");
  });

  it("visit homepage", () => {
    // Visit the home page
    cy.visit("/");
    // Assert that the breadcrumb navigation indicates "Home"
    cy.get(".active.last").should("contain", "Home");
  });

  // it logs in successfully
  it("logs in successfully", () => {
    // Visit a login page - we take the demos startpage here
    cy.visit("/");

    // // Login only working in prod env and with cookie allow list set (preventing other cookies not needed for contao to cause the CSRF protection to fail)
    const username = "j.smith";
    const password = "johnsmith";

    cy.login(username, password);

    // We should be redirected
    cy.url().should("include", "/my-order-history");

    // Extend test with Cypress Studio
    it("create new transaction", () => {});
  });

  // /* ==== Test Created with Cypress Studio ==== */
  // it("Buy sth. as a guest", function () {
  //   /* ==== Generated with Cypress Studio ==== */
  //   cy.visit("/");
  //   cy.get(".level_1 > :nth-child(2) > .submenu").click();
  //   cy.get("li.next > .next").click();
  //   cy.get("#fmd19_product_136 > .formbody > h3 > a").click();
  //   cy.get("#quantity_requested_136").clear("2");
  //   cy.get("#quantity_requested_136").type("2");
  //   cy.get(".add_to_cart").click();
  //   cy.get(".iso_confirm").click();
  //   cy.get(".button_checkout").click();
  //   cy.get("div.ce_text > :nth-child(3) > a").click();
  //   cy.get("#ctrl_billingaddress_firstname").clear("T");
  //   cy.get("#ctrl_billingaddress_firstname").type("Test");
  //   cy.get("#ctrl_billingaddress_lastname").clear();
  //   cy.get("#ctrl_billingaddress_lastname").type("Tester");
  //   cy.get("#ctrl_billingaddress_street_1").clear();
  //   cy.get("#ctrl_billingaddress_street_1").type("Testweg 1");
  //   cy.get("#ctrl_billingaddress_postal").clear();
  //   cy.get("#ctrl_billingaddress_postal").type("11111");
  //   cy.get("#ctrl_billingaddress_city").clear();
  //   cy.get("#ctrl_billingaddress_city").type("Testort");
  //   cy.get(
  //     "#ctrl_billingaddress_country_chzn > .chzn-single > div > b"
  //   ).click();
  //   cy.get("#ctrl_billingaddress_country_chzn_o_186").click();
  //   cy.get("#ctrl_billingaddress_phone").click();
  //   cy.get("#ctrl_billingaddress_email").clear("t");
  //   cy.get("#ctrl_billingaddress_email").type("test@test.de");
  //   cy.get(".submit_container > .submit").click();
  //   cy.get(".confirm").click();
  //   /* ==== End Cypress Studio ==== */
  // });

  // /* ==== Test Created with Cypress Studio ==== */
  // it("Buy sth. logged in ", function () {
  //   /* ==== Generated with Cypress Studio ==== */
  //   cy.visit("/");
  //   cy.get("#username").clear("j");
  //   cy.get("#username").type("j.smith");
  //   cy.get("#password").clear();
  //   cy.get("#password").type("johnsmith");
  //   cy.get("#tl_login_2 > .formbody > .widget-submit > .submit").click();
  //   cy.get(":nth-child(2) > .level_2 > :nth-child(3) > a").click();
  //   cy.get("li.next > .next").click();
  //   cy.get("#fmd68_product_202 > .formbody > h3 > a").click();
  //   cy.get("#ctrl_size_fmd21_product_202").select("L");
  //   cy.get("#quantity_requested_207").click();
  //   cy.get(".toggle_favorites").click();
  //   cy.get(".iso_confirm").click();
  //   cy.get(".add_to_cart").click();
  //   cy.get(".update").click();
  //   cy.get("h2.grid3").click();
  //   cy.get(".cart > .button").click();
  //   cy.get(".row_0 > .col_5 > .edit").click();
  //   cy.get(":nth-child(1) > .remove > a").click();
  //   cy.get("#fmd21_product_213 > .formbody").click();
  //   cy.get(".remove > a").click();
  //   cy.get(".empty").click();
  //   cy.get(".level_1 > :nth-child(3) > .sibling").click();
  //   cy.get("li.next > .next").click();
  //   cy.get("#fmd68_product_202 > .formbody > h3 > a").click();
  //   cy.get("#ctrl_size_fmd21_product_202").select("L");
  //   cy.get(".add_to_cart").click();
  //   cy.get(".iso_confirm").click();
  //   cy.get(".cart > .button").click();
  //   cy.get(".edit").click();
  //   cy.get("#ctrl_size_fmd21_product_202").select("XL");
  //   cy.get(".add_to_cart").click();
  //   cy.get(".iso_confirm").click();
  //   cy.get(".edit").click();
  //   cy.get(".back > a").click();
  //   cy.get(".edit").click();
  //   cy.get(".back > a").click();
  //   cy.get(".edit").click();
  //   cy.get(".remove > a").click();
  //   /* ==== End Cypress Studio ==== */
  // });

  // /* ==== Test Created with Cypress Studio ==== */
  // it("Buy a cd as a guest", function () {
  //   /* ==== Generated with Cypress Studio ==== */
  //   cy.visit("/");
  //   cy.get(".level_1 > :nth-child(2) > .submenu").click();
  //   cy.get("li.active > .level_2 > li.first > .first").click();
  //   cy.get("#fmd68_product_139 > .formbody > .details > a").click();
  //   cy.get(".add_to_cart").click();
  //   cy.get(".iso_confirm").click();
  //   /* ==== End Cypress Studio ==== */
  // });
});
