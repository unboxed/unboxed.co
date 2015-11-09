---
date: "2010-08-18 11:09:00 UTC"
published: true
title: "IRB completion from the debugger"
author: "Tom ten Thij"
tags:
  - Rails
---

<p>The default IRB completion code that ships with Ruby does not work well when being invoked from the debugger prompt: <script src="http://gist.github.com/534983.js?file=debugger_blowup" type="text/javascript"></script><noscript>
<pre><code>
>: ruby /test_script.rb
[-2, 7] in /test_script.rb
   1  require 'ruby-debug'
   2  debugger
=> 3  :foo
/test_script.rb:3
:foo
(rdb:1) INTERNAL ERROR!!! undefined method `workspace' for nil:NilClass
        /System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/1.8/irb/completion.rb:38
        /Users/tomtt/.gem/ruby/1.8/gems/ruby-debug-0.10.3/cli/ruby-debug/interface.rb:112:in `call'
        /Users/tomtt/.gem/ruby/1.8/gems/ruby-debug-0.10.3/cli/ruby-debug/interface.rb:112:in `readline'
        /Users/tomtt/.gem/ruby/1.8/gems/ruby-debug-0.10.3/cli/ruby-debug/interface.rb:112:in `readline'
        /Users/tomtt/.gem/ruby/1.8/gems/ruby-debug-0.10.3/cli/ruby-debug/interface.rb:62:in `read_command'
        /Users/tomtt/.gem/ruby/1.8/gems/ruby-debug-0.10.3/cli/ruby-debug/processor.rb:246:in `process_commands'
        /Users/tomtt/.gem/ruby/1.8/gems/ruby-debug-0.10.3/cli/ruby-debug/processor.rb:171:in `__at_line'
        (eval):5:in `at_line'
        (eval):3:in `synchronize'
        (eval):3:in `at_line'
        /Users/tomtt/.gem/ruby/1.8/gems/ruby-debug-base-0.10.3/lib/ruby-debug-base.rb:54:in `at_line'
        /test_script.rb:3
</code></pre>
</noscript></p>
<p>The reason why this happens is that the completion code assumes that IRB.conf[:MAIN_CONTEXT] is defined, but this is not the case when debugger is used. All we are really after is a valid binding, so to patch we can just use self.binding when the irb context is not available. An example patch can be found on my <a href="http://github.com/tomtt/ruby/commit/03a0a6d905cc610349b3e7fdf0cf157abd475edb">fork of an unofficial ruby repository</a>.</p>
<p>In these days where rvm allows multiple ruby versions to be used, patching is not a patch-once-and-forget issue any longer. Therefore I felt the need to write a utility for this. It checks if your current version of ruby is patched and if not, shows the filename that needs to be updated and the suggest code change. It is bundled as the <a href="">patch_irb_completion</a> gem: simply &quot;gem install patch_irb_completion;patch_irb_completion&quot;. But that gives the overhead of having to install a gem for every ruby version. So maybe an executable script is a better solution. Here is one: <script src="http://gist.github.com/535032.js?file=patch_irb_completion" type="text/javascript"></script><noscript>
<pre><code>
#!/usr/bin/env ruby

require 'find'

module PatchIRBCompletion
  class Suggest
    def self.find_ruby_lib_path
      ruby_bin_path = `which ruby`
      ruby_path = File.expand_path(File.join(ruby_bin_path, "..", "..", "lib"))
      unless File.exist?(ruby_path)
        ruby_path = `ruby -e "puts $:[0]"`
      end
    end

    def self.find_completion_source_in_dir(dir)
      Find.find(dir) do |filename|
        # puts filename
        next unless File.basename(filename) == "completion.rb"
        return filename
      end
      nil
    end

    def self.find_completion_source_in_current_ruby_version
      $:.each do |lib_dir|
        completion_file = find_completion_source_in_dir(lib_dir)
        next unless completion_file
        return completion_file
      end
    end

    def self.check_if_completion_source_file_has_offending_code(filename)
      unpatched_code = "IRB.conf[:MAIN_CONTEXT].workspace"
      File.read(filename).include?(unpatched_code)
    end

    def self.call
      filename = find_completion_source_in_current_ruby_version
      if check_if_completion_source_file_has_offending_code(filename)
        puts <<EOT
The file \"#{filename}\" has not been patched... I would suggest you replace:
    bind = IRB.conf[:MAIN_CONTEXT].workspace.binding (line 38)
with:
    context = IRB.conf[:MAIN_CONTEXT]
    bind = context ? context.workspace.binding : binding
EOT
      else
        puts "The file \"#{filename}\" is patched."
      end
    end
  end
end

PatchIRBCompletion::Suggest.call
</code></pre>
</noscript></p>
<p>Here is some example output: <script src="http://gist.github.com/535081.js?file=patch_irb_completion" type="text/javascript"></script><noscript>
<pre><code>
>: patch_irb_completion
The file "/Users/tomtt/.rvm/rubies/ruby-1.9.2-rc2/lib/ruby/1.9.1/irb/completion.rb" has not been patched... I would suggest you replace:
    bind = IRB.conf[:MAIN_CONTEXT].workspace.binding (line 38)
with:
    context = IRB.conf[:MAIN_CONTEXT]
    bind = context ? context.workspace.binding : binding
</code></pre>
</noscript></p>

