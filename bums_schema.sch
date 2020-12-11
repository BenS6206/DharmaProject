<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    
    <pattern>
        <rule context="mark[@location]">
            <assert test="not('inline')"> Marks should only be listed as aboveline, belowline, or inline. </assert>
        </rule>
    </pattern>
    

</schema>