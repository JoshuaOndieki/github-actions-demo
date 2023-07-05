describe('template spec', () => {
  it('should have the correct title', () => {
    cy.visit('localhost:8181')
    cy.title().should('eq', 'GitHub Actions Demo')
  })
  
})