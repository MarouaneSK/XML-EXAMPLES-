xquery version "1.0"; 

for $file in doc("database.xml")//file
return <a href="{$file/@url}" >{string($file/@name)}</a>