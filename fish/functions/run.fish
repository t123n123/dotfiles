function run --description "Run a code file" 
    set --local file
    for file in $argv
        set --local ext
        set ext (path extension $file) $ext
        set file (path change-extension '' $file)
        
        switch $ext
            case .hs
                runhaskell $file'.hs'
            case .kt
                kotlinc $file'.kt' -include-runtime -d $file'.jar'
                java -jar $file'.jar'
                rm $file'.jar'
            case .rkt
                racket $file'.rkt'
            case .py
                python3 $file'.py'
            case '*'
                echo Unknown file extension $ext for 'run' command 

        end
    end
end
