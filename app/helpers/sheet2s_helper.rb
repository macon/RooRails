

module Sheet2sHelper
  # Change this to suitable folder when running in Windows
  HomeFolder = "/home/macon/Documents/"


  def self.files
    Dir.entries(HomeFolder)
  end
end
