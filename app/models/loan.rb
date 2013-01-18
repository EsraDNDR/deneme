class Loan < ActiveRecord::Base
	belongs_to :users
	
  attr_accessible :credit, :debt, :due_time, :friend_id, :from_time
end
#<p>
 # <b>Remaining Loan:</b>
  #<% if @remainLoan <= 0 or @remainLoan == nil %>
#  <% else %>
   # <%= @remainLoan %>
 # <% end %>
#</p>