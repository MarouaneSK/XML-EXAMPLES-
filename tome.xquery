xquery version "1.0"; 
for $tome in doc("collection.xml")//tome
let $serie := doc("collection.xml")//serie[tome=$tome]
order by $tome/titre
return <tome numero = "{$tome/@numero}"  nom="{$serie/@nom}" titre="{$tome/titre}"



/>