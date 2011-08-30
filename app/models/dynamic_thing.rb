class DynamicThing
  # To change this template use File | Settings | File Templates.
  def initialize(thing)
    @ss_name = "#{thing}.xlsx"
    #"Hello World"
    #s = Openoffice.new("myspreadsheet.ods")      # creates an Openoffice Spreadsheet instance
    #s = Excel.new("myspreadsheet.xls")           # creates an Excel Spreadsheet instance
    #s = Google.new("myspreadsheetkey_at_google") # creates an Google Spreadsheet instance
    @ss_sheet = Excelx.new("/home/macon/Documents/#{@ss_name}")         # creates an Excel Spreadsheet instance for Excel .xlsx files

    @ss_sheet.default_sheet = @ss_sheet.sheets.first  # first sheet in the spreadsheet file will be used

    # s.sheet is an array which holds the names of the sheets within
    # a spreadsheet.
    # you can also write
    # s.default_sheet = s.sheets[3] or
    # s.default_sheet = 'Sheet 3'
  end
  attr_reader :ss_name

  def get_values
    @ss_sheet.column(1)                                 # returns the content of the first row/first cell in the sheet
  end
end