<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
<!--2020-12-08 ebb: This was a little experiment.to see if we could check text nodes for potenitally problematic space issues, or a missing quotation mark in dialogue.
        I set both to role="info" because it may not be an error if these rules are broken. It may just be the way the marks were written. 
  -->
    <pattern><title>Checking for spaces around mark elements</title>
        <rule context="original/text()[following-sibling::*[1] ! name() = 'mark']">
            <assert test="matches(., '\s$') and not(following-sibling::text()[1][matches(., '^\s')])" role="info">
               Check the spacing around the mark elements. Does this look right?</assert> 
        </rule>
    </pattern>
    <pattern><title>Checking for a pair of quotation marks inside dialogue elements</title>
        <rule context="dialogue">
            <assert test="matches(., '^&quot;') and matches(., '&quot;$')" role="info">I don't see a matching pair of quotation marks in this dialogue. Is this correct?</assert>  
        </rule>
    </pattern>
   
    
</schema>