module Payments
    class Invoice
      def initialize(amount, customer_name)
        @amount = amount
        @customer_name = customer_name
      end
      def print_invoice
        puts "Invoice for #{@customer_name}:"
        puts "Amount due: $#{@amount}"
      end
    end
    class Receipt
      def initialize(amount, payment_method)
        @amount = amount
        @payment_method = payment_method
      end
      def print_receipt
        puts "Receipt for #{@amount} paid using #{@payment_method}:"
        puts "Thank you for your purchase!"
      end
    end
  end
  
  invoice = Payments::Invoice.new(100, "John Doe")
  invoice.print_invoice
  receipt = Payments::Receipt.new(50, "credit card")
  receipt.print_receipt
  