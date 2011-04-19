class EditorController < ApplicationController
  def index
#    working_dir = 'C:\\Users\\jfoshee\\Documents\\My Dropbox\\Rails\\dummy'
#    @g = Git.open(working_dir) 

    # uri = 'https://jfoshee@github.com/jfoshee/dummy.git'
    uri = 'git://github.com/jfoshee/dummy.git'
    @g = Git.clone(uri, 'tmp/dummy')

    lines = File.open('tmp/dummy/app/views/dummy/index.html.erb').readlines
    @text = ""
    lines.each do |line|
      @text += line
    end
  end

end
