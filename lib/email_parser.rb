# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
   

    def initialize(email_string)
        @email_string = email_string
    end

    def parse
        # p @email_string.split(%r{\s+|,})
        p @email_string.split(/\s*,\s*|\s+/).uniq

    end
end

email_addresses = "avi@test.com,  arel@test.com arel@test.com"
parser = EmailAddressParser.new(email_addresses)

parser.parse


