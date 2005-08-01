#--
# =============================================================================== 
# Copyright (c) 2005, Christopher Kleckner
# All rights reserved
#
# This file is part of the Rio library for ruby.
#
# Rio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# Rio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Rio; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
# =============================================================================== 
#++
#
# To create the documentation for Rio run the command
#  rake rdoc
# from the distribution directory. Then point your browser at the 'doc/rdoc' directory.
#
# Suggested Reading
# * RIO::Doc::SYNOPSIS
# * RIO::Doc::INTRO
# * RIO::Doc::HOWTO
# * RIO::Rio
#
# <b>Rio is pre-alpha software. 
# The documented interface and behavior is subject to change without notice.</b>


:title: Rio

module RIO
# Copyright (c) 2005, Christopher Kleckner.
# All rights reserved
#
# This file is part of the Rio library for ruby.
# Rio is free software; you can redistribute it and/or modify it under the terms of 
# the {GNU General Public License}[http://www.gnu.org/licenses/gpl.html] as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
module Doc #:doc:
=begin rdoc

= Rio - Ruby I/O Comfort Class

Rio is a convenience class wrapping much of the functionality of 
IO, File, Dir, Pathname, FileUtils, Tempfile, StringIO, OpenURI, Zlib, and CSV.

== SYNOPSIS
For the following assume:
 astring = ""
 anarray = []

Copy a file into a string
 rio('afile') > astring 

Copy the chomped lines of a file into an array
 rio('afile').chomp > anarray
 
Copy a file into another file
 rio('afile') > rio('another_file')

Copy a file into a directory
 rio('afile') > rio('adir')

Copy an entire directory structure into another directory
 rio('adir') > rio('another_directory')

Copy a web page into a file
 rio('http://rubydoc.org/') > rio('afile')

Copy a file from a ftp server into a file
 rio('ftp://host/afile.gz') > rio('afile.gz')

Copy a gzipped file un-gzipping it
 rio('afile.gz').gzip > rio('afile')

Copy a file from a ftp server into a local file un-gzipping it
 rio('ftp://host/afile.gz').gzip > rio('afile')

Copy a plain file, gzipping it
 rio('afile.gz').gzip < rio('afile')

Iterate over the entries in a directory
 rio('adir').entries { |entrio| ... }

Iterate over only the files in a directory
 rio('adir').files { |entrio| ... }

Iterate over only the .rb files in a directory
 rio('adir').files('*.rb') { |entrio| ... }

Create an array of the .rb entries in a directory
 anarray = rio('adir')['*.rb']

Iterate over the .rb files in a directory and its subdirectories
 rio('adir').all.files('*.rb') { |entrio| ... }

Create an array of the .rb entries in a directory and its subdirectories
 anarray = rio('adir').all['*.rb']

Create an array of the .rb files in a directory and its subdirectories
 anarray = rio('adir').all.files['*.rb']

Copy an entire directory structure but only the .rb files from a directory and its subdirectories 
into another directory
 rio('adir').dirs.files('*.rb') > rio('another_directory')

Iterate over the chomped lines of a file
 rio('afile').chomp.lines { |line| ... }

Put the chomped lines of a file into an array
 anarray = rio('afile').chomp.lines[]

Iterate over the first 10 chomped lines of a file
 rio('afile').chomp.lines(0..9) { |line| ... }

Put the first 10 chomped lines of a file into an array
 anarray = rio('afile').chomp.lines[0..9]

Copy the first 10 lines of a file into another file
 rio('afile').lines(0..9) > rio('another_file')

Copy the first 10 lines of a file to stdout
 rio('afile').lines(0..9) > rio(?-)

Copy the first 10 lines of a gzipped file to stdout
 rio('afile.gz').gzip.lines(0..9) > rio(?-)

Copy the first 10 lines of a gzipped file on an ftp server to stdout
 rio('ftp://host/afile.gz').gzip.lines(0..9) > rio(?-)

Put the first 100 chomped lines of a gzipped file into an array
 anarray =  rio('afile.gz').gzip[0...100] 

Copy the output of th ps command into an array, skipping the header line and the ps command entry
 rio(?-,'ps -a').nolines(0,/ps$/) > anarray 

Prompt for input and return what was typed
 ans = rio(?-).print("Type Something: ").chomp.gets 

Change the extension of all files with the extension '.htm' in a directory and its
subdirectories to have the extension '.html'
 rio('adir').rename.all.files('*.htm') do |htmfile|
   htmfile.extname = '.html'
 end

Create a symbolic link 'asymlink' in 'adir' which refers to 'adir/afile'
 rio('adir/afile').symlinke('adir/asymlink')

=== SUGGESTED READING

* RIO::Doc::INTRO
* RIO::Doc::HOWTO
* RIO::Rio

=end
module SYNOPSIS #:doc:
end
end
end