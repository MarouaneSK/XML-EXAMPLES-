<bib>    
{    
for $b in doc("biblio.xml")//book     
where count($b/author) > 0     
return        
<book> 
{$b/title} 
<auteur>       
{ 
for $a in $b/author[1]       
return concat($a/last," ",$a/first) }        
{ if (count($b/author) > 2)          
then data(" et al ") 
else () 
}  
</auteur>   
</book> 
}  
</bib> 