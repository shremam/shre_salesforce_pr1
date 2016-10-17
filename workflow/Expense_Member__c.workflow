<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Welcome</fullName>
        <description>Welcome</description>
        <protected>false</protected>
        <recipients>
            <recipient>shreya@optimizeitsystems.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Invoice</template>
    </alerts>
    <fieldUpdates>
        <fullName>Email_update</fullName>
        <description>update the email field</description>
        <field>Email__c</field>
        <formula>EMember__r.Email__c</formula>
        <name>Email update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Email Alert</fullName>
        <actions>
            <name>Welcome</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expense_Member__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Send an email on creating a new member</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>On Creation</fullName>
        <actions>
            <name>Email_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>on creation of a new member</description>
        <formula>NOT ( ISBLANK( EMember__r.Email__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
