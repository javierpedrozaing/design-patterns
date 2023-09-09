module Gateway
  def payment_transaction_response
    {
      transaction: {
        state: 'success',
        payment_method: 'credit_card',
        amount: '10000',
        user: {
          name: 'Javier',
          last_name: 'Pedroza',
          email: 'javierpedrozaing@gmail.com'
        }
      }
    }
  end
end