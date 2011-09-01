#require 'rubygems'
#require 'roo'

class Sheet2 < ActiveRecord::Base

  def Sheet2.get_ss_value
    #"Hello World"
    #s = Openoffice.new("myspreadsheet.ods")      # creates an Openoffice Spreadsheet instance
    #s = Excel.new("myspreadsheet.xls")           # creates an Excel Spreadsheet instance
    #s = Google.new("myspreadsheetkey_at_google") # creates an Google Spreadsheet instance
    s = Excelx.new("/home/macon/Documents/test2.xlsx")         # creates an Excel Spreadsheet instance for Excel .xlsx files

    s.default_sheet = s.sheets.first  # first sheet in the spreadsheet file will be used

    # s.sheet is an array which holds the names of the sheets within
    # a spreadsheet.
    # you can also write
    # s.default_sheet = s.sheets[3] or
    # s.default_sheet = 'Sheet 3'

    s.column(1)                                 # returns the content of the first row/first cell in the sheet
  end

end
