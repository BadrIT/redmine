# redMine - project management software
# Copyright (C) 2006-2010  Jean-Philippe Lang
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

require "test_helper"

class RoutingTest < ActionController::IntegrationTest
  context "issue reports" do
    should_route :get, "/projects/567/issues/report", :controller => 'reports', :action => 'issue_report', :id => '567'
    should_route :get, "/projects/567/issues/report/assigned_to", :controller => 'reports', :action => 'issue_report_details', :id => '567', :detail => 'assigned_to'
  end
  
end
