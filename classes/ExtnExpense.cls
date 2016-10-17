public with sharing class ExtnExpense
{
    public list<Expense_Member__c> l {get;set;}
    public Expense__c expObj{get;set;}
    public ExtnExpense(ApexPages.StandardController controller) 
    {
        expObj = (Expense__c)controller.getRecord();
        l = new list<Expense_Member__c>();
    }
    
    public void getExpenseMembers()
    {
        l =  [Select Name, Expense__c, EMember__r.First_Name__c,EMember__r.Last_Name__c, Contributed_Amount__c from Expense_Member__c where Expense__c =: expObj.Id];
        
    }
}