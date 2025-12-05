note
	description: "Test application for simple_smtp"
	author: "Larry Rix"

class
	SMTP_TEST_APP

create
	make

feature {NONE} -- Initialization

	make
			-- Run tests.
		do
			print ("simple_smtp test runner%N")
			print ("Run tests via EiffelStudio AutoTest%N")
		end

end
