module Paperclip
  class Whiteboardify < Processor

    def make
      converted_file_path = File.join Dir.mktmpdir, 'converted.jpg'

      convert "#{esc @file.path} -resize #{esc @options[:geometry]} -morphology Convolve DoG:15,100,0 -negate -normalize -blur 0x1 -channel RBG -level 30%,90%,0.1 #{esc converted_file_path}"
      File.new(converted_file_path)
    end

  private
    def esc(command)
      Shellwords.escape command
    end
  end
end
