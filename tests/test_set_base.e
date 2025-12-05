note
	description: "Base class for simple_smtp tests"
	author: "Larry Rix"

deferred class
	TEST_SET_BASE

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Setup

	on_prepare
			-- Setup test environment.
		do
			-- Override in descendants if needed
		end

feature -- Assertions

	assert_strings_equal (a_tag: STRING; a_expected, a_actual: STRING)
			-- Assert two strings are equal.
		do
			assert (a_tag + " (expected: %"" + a_expected + "%" actual: %"" + a_actual + "%")",
					a_expected.same_string (a_actual))
		end

	assert_integers_equal (a_tag: STRING; a_expected, a_actual: INTEGER)
			-- Assert two integers are equal.
		do
			assert (a_tag + " (expected: " + a_expected.out + " actual: " + a_actual.out + ")",
					a_expected = a_actual)
		end

	assert_true (a_tag: STRING; a_condition: BOOLEAN)
			-- Assert condition is True.
		do
			assert (a_tag, a_condition)
		end

	assert_false (a_tag: STRING; a_condition: BOOLEAN)
			-- Assert condition is False.
		do
			assert (a_tag, not a_condition)
		end

end
