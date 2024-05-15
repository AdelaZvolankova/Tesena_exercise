*** Settings ***

Variables        test_data.py

*** Variables ***

${header}                   id:header
${footer}                   //*[@class="footer-bottom"]
${subscription}             //*[@class="footer-widget"]//h2
${products}                 //a[@href='/products']
${cart}                     //a[@href='/view_cart']
${login}                    //a[@href='/login']
${delete_account}           //a[@href='/delete_account']
${cart_header}              //li[contains(text(),'Shopping Cart')]
${products_header}          //h2[contains(text(),'All Products')]
${category_headline}        //h2[contains(text(),'Category')]
${brands_headline}          //h2[contains(text(),'Brands')]
${search_field}             id:search_product
${password}                 id:password
${input_first_name}         id:first_name
${input_last_name}          id:last_name
${input_address1}           id:address1
${input_country}            id:country
${input_state}              id:state
${country_option}           //option[contains(text(),'${country}')]
${input_city}               id:city
${input_zipcode}            id:zipcode
${input_mobile_number}      id:mobile_number
${create_button}                //button[contains(text(),'Create Account')]
${signup_name}                  //*[@data-qa="signup-name"]
${signup_email}                 //*[@data-qa="signup-email"]
${signup_button}                //button[contains(text(),'Signup')]
${account_created_success_msg}  //b[contains(text(),'Account Created!')]
${continue_button}              //a[contains(text(),'Continue')]
${account_deleted_success_msg}  //b[contains(text(),'Account Deleted!')]
${consent}                      //button[@class="fc-button fc-cta-consent fc-primary-button"]/p

