$fileList = get-childitem -recurse
foreach($file in $fileList) {
    if($file.Extension -eq '.html' -or $file.Extension -eq '.htm') {
        
        $in = '""' + $file.FullName + '""'
        $out = '""' + $file.FullName + '.bmp""';
        
        $command = "proccmd -w 30 -c ""CrenaHtml2jpg.exe -h0 -a -e -r -p -o$out -fbmp -w1xÅá -s1xÅá -u$in"""
        echo $in
        echo $out
        echo $command
        Invoke-Expression $command
    }
}