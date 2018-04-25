class BankAccount
    attr_accessor :account_number, :checking_account, :saving_account, :total, :interest
    @@total_accounts = 0

    def initialize 
        @account_number = generate_account 
        @checking_account = 0.0
        @saving_account = 0.0
        @interest = 0.01
        @@total_accounts = @@total_accounts + 1
        return self
    end

    def account_information
        puts "Account number: #{@account_number}, Account total: #{@checking_account + @saving_account}, Checking account balance: #{checking_account}, Saving account balance: #{saving_account}, Interest rate: #{@interest}"
        return self
    end

    def balance account
        if account == "checking"
            puts @checking_account
            return self
        end
        if account == "saving"
            puts @saving_account
            return self
        end
    end

    def account_total
        puts @checking_account + @saving_account
        return @checking_account + @saving_account
    end

    def deposit value, account
        if account == "checking"
            self.deposit_checking value
            return self
        end
        if account == "saving"
            self.deposit_saving value
            return self
        end
    end

    def withdraw value, account
        if account == "checking"
            self.withdraw_checking value
            return self
        end
        if account == "saving"
            self.withdraw_saving value
            return self
        end
    end

    def total_accounts
        puts @@total_accounts
        return self
    end

    protected
    def deposit_checking value
        @checking_account = @checking_account + value
    end
        
    def deposit_saving value
        @saving_account = @saving_account + value
    end
    
    def withdraw_checking value
        if checking_account - value < 0
            puts "Insufficient Funds"
            return self
        end
        @checking_account = @checking_account - value
    end
            
    def withdraw_saving value
        if saving_account - value < 0
            puts "Insufficient Funds"
            return self
        end
        @saving_account = @saving_account - value
    end

    private
        def generate_account
            (0..9).reduce("") {|memo, num|
                    memo += random_num.to_s
            }
        end

        def random_num
            rand(9)
        end
end
user = BankAccount.new.total_accounts.deposit(125, "checking").deposit(500, "saving").withdraw(50, "checking").withdraw(50, "saving").withdraw(100, "checking").account_information