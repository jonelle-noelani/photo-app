class EmailValidator < ActiveModel::EmailValidator

    def validate(record)
        #can get properties from record to determine if invalid
        unless record=~/^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$/
            record.errors[:email] << "Invalid Email"
        end
    end

end
    
    