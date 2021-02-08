<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="AbstractAccount">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the abstract AbstractAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.AbstractAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the DebitAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.DebitAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the DebitAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.DebitAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the CreditAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CreditAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the CreditAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.CreditAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the SavingsAccount2 class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.SavingsAccount2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the SavingsAccount2 class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.SavingsAccount2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the DebitAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.DebitAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CreditAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.CreditAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the SavingsAccount2Test JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.SavingsAccount2Test"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.*Account*" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585500627513" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="5" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public abstract class AbstractAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585501636930" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="27" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;double balance = 0;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;if (amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;balance += amount;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;if (amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;internalWithdraw(amount);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public abstract void internalWithdraw(double amount);&#xA;&#x9;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="62" end="-4"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585500963952" resourcePath="/ovinger/src/inheritance/DebitAccount.java" sizeMeasure="5" className="inheritance.DebitAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class DebitAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585501634728" resourcePath="/ovinger/src/inheritance/DebitAccount.java" sizeMeasure="12" errorCount="2" className="inheritance.DebitAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends AbstractAccount{&#xA;&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if (balance &lt; amount) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;balance -= amount;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="48" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="199" charEnd="206" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585501150098" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="11" errorCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class CreditAccount extends AbstractAccount {&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="105" charEnd="136" severity="2" problemCategory="50" problemType="67109498"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585501593890" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="32" errorCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private double creditLine;&#xA;&#x9;&#xA;&#x9;public CreditAccount(double creditLine) {&#xA;&#x9;&#x9;if (creditLine &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#xA;&#x9;}&#xA;&#xA;&#x9;&#xA;&#x9;public double getCredit() {&#xA;&#x9;&#x9;return creditLine;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setCredit(double line) {&#xA;&#x9;&#x9;if (Math.abs(balance) > line) {&#xA;&#x9;&#x9;&#x9;creditLine = line;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;}&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.0/@edit" start="77" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="25" charStart="443" charEnd="450" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585501630657" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="32" errorCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="balance > -" edit="/1/@proposals.0/@proposals.3/@attempts.1/@edit" start="410" end="-91"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="25" charStart="434" charEnd="441" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585501651072" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="32" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Math.abs(balance) > " edit="/1/@proposals.0/@proposals.3/@attempts.2/@edit" start="410" end="-91"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585501767705" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="35" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#x9;if (balance + creditLine &lt; amount) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;balance -= amount;" edit="/1/@proposals.0/@proposals.3/@attempts.3/@edit" start="304" end="-217"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585501829559" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="35" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Line() {&#xA;&#x9;&#x9;return creditLine;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setCreditLine" edit="/1/@proposals.0/@proposals.3/@attempts.4/@edit" start="436" end="-133"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585501991915" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="35" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="balance > -" edit="/1/@proposals.0/@proposals.3/@attempts.5/@edit" start="519" end="-91"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585502031714" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="38" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="line &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (" edit="/1/@proposals.0/@proposals.3/@attempts.6/@edit" start="519" end="-102"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585502101966" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="11" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class SavingsAccount2 extends AbstractAccount {&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585502480763" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="37" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;private int withdrawals;&#xA;&#x9;private double fee;&#xA;&#x9;&#xA;&#x9;public SavingsAccount2(int withdrawals, double fee) {&#xA;&#x9;&#x9;if (withdrawals &lt; 0 || fee &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.withdrawals = withdrawals;&#xA;&#x9;&#x9;this.fee = fee;&#xA;&#x9;}&#xA;&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if (amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (withdrawals > 0) {&#xA;&#x9;&#x9;&#x9;if (balance > amount) {&#xA;&#x9;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;&#x9;&#x9;withdrawals--;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if (balance > amount + fee) {&#xA;&#x9;&#x9;&#x9;&#x9;balance -= (amount + fee);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.5/@attempts.0/@edit" start="77" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585502559977" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="36" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#x9;&#xA;&#x9;&#x9;if (withdrawals > 0) {&#xA;&#x9;&#x9;&#x9;if (balance > amount) {&#xA;&#x9;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;&#x9;&#x9;withdrawals--;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if (balance > amount + fee) {&#xA;&#x9;&#x9;&#x9;&#x9;balance -= (amount + fee);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(" edit="/1/@proposals.0/@proposals.5/@attempts.1/@edit" start="366" end="-19"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585657401413" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="36" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.5/@attempts.2/@edit" start="668"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585501804210" completion="1.0" testRunName="inheritance.DebitAccountTest" successCount="2">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585501835480" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" errorCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <errorTests>testSetCreditLine</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585501999101" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585502037150" completion="1.0" testRunName="inheritance.CreditAccountTest" successCount="3">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testSetCreditLine</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585502517140" completion="0.5" testRunName="inheritance.SavingsAccount2Test" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585657413046" completion="1.0" testRunName="inheritance.SavingsAccount2Test" successCount="2">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1579518316520" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1579518364028" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1579520710164" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1579524300507" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1579524665173" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1579524715667" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1579625774368" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1579625962064" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1579626232361" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585486300151" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585486375449" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585487300324" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585487494745" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
