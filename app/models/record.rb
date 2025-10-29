class Record < ApplicationRecord

    paginates_per 5

    validates :company_name, presence: true
    validates :email_id, presence: true, uniqueness: true
    validates :company_code, uniqueness: true
    validates :company_name, length: { minimum: 5}
    validates :company_code, length: { minimum: 5} 
    #  , format: { with: /\A[A-Za-z]{2}[0-9]{2}[EN]\z/, message: 'Length should be 5 characters, 1st & 2nd characters should be alphabets, 3rd & 4th characters should be numbers, 5th character should be E or N'}

end
