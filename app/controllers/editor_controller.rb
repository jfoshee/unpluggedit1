class EditorController < ApplicationController
  def index
#    working_dir = 'C:\\Users\\jfoshee\\Documents\\My Dropbox\\Rails\\dummy'
#    @g = Git.open(working_dir) 

    working_dir = 'tmp/dummy'
    FileUtils::rm_rf(working_dir)
    
    # uri = 'https://jfoshee@github.com/jfoshee/dummy.git'
    uri = 'git://github.com/jfoshee/dummy.git'
    @g = Git.clone(uri, working_dir)

    @file_path = '/app/views/dummy/index.html.erb'
    lines = File.open(working_dir + @file_path).readlines
    @text = ""
    lines.each do |line|
      @text += line
    end
  end

end
