require "duvall_palindrome/version"

  module DuvallPalindrome

    # Returns true for a palindrome, false otherwise.
    def palindrome?
      processed_content == processed_content.reverse
    end

    private

      # Returns content for palindrome testing.
      def processed_content
        self.to_s.scan(/[a-z0-9]/i).join.downcase
      end
  end

  class String
    include DuvallPalindrome
  end
  class Integer
    include DuvallPalindrome
  end
