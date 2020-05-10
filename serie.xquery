xquery version "1.0"; 

for $serie in doc("collection.xml")//serie
return <serie titre ="{$serie/@nom}" editeur="{$serie/editeur/@nom}"/>

