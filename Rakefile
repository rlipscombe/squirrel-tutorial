require 'open3'

files = FileList.new("**/*.md")

task :default do
    # [//]: # (stuff)
    SNIPPET_START = /^\[\/\/\]: # \((?<embed_type>.*?)\s+(?<embed_file>.*)\)/
    SNIPPET_END = /^\[\/\/\]: # \(END\)/

    files.each do |file|
        input_lines = File.readlines(file)
        output_lines = []

        state = :outside_snippet
        input_lines.each do |line|
            case state
                when :outside_snippet
                    if m = line.match(SNIPPET_START)
                        embed_type, embed_file = m.captures

                        # Found start marker; write it back out
                        output_lines.push line
                        output_lines.push("")

                        # Write the file contents
                        embed_lines = File.read(embed_file)
                        output_lines.push("```")
                        output_lines.push(embed_lines)
                        output_lines.push("```")
                        output_lines.push("")

                        embed_command = case embed_type
                            when 'sq' then 'sq'
                            else 'cat'
                        end

                        # Run the command, get the output
                        puts embed_command + " " + embed_file
                        stdin, stdout, stderr, wait = Open3.popen3(embed_command, embed_file)
                        command_output = stdout.gets(nil)
                        stdout.close
                        stderr.gets(nil)
                        stderr.close
                        exit_code = wait.value

                        # Write the command results
                        output_lines.push("```")
                        output_lines.push("$ #{embed_command} #{embed_file}")
                        output_lines.push(command_output)
                        output_lines.push("```")
                        output_lines.push("")

                        state = :inside_snippet
                    else
                        # Outside snippet, looking for start marker
                        output_lines.push line
                    end

                when :inside_snippet
                    if line =~ SNIPPET_END
                        # Inside snippet, found end marker.
                        output_lines.push line
                        state = :outside_snippet
                    end
            end
        end

        File.open(file, "w") do |f|
            f.puts(output_lines)
        end
    end
end
