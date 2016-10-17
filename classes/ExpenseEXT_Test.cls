@isTest
public class ExpenseEXT_Test
{
    public static testMethod void myTest()
    {
     Expense__c exp = new Expense__c();
        exp.Event__c='abc';
        exp.Amount__c=1000;
        exp.Date__c=date.parse('12/27/2015');
        insert exp;
       
        
        ExtnExpense expExt = new ExtnExpense(new ApexPages.StandardController(exp));
       
        expExt.getExpenseMembers();
        
        
    }

    
}