<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="SavingsAccount">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Get the source code for the Account interface from the wiki."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.Account"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the SavingsAccount superclass."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.SavingsAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the SavingsAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.SavingsAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the BSU class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.BSU"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the BSU class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.BSU"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the ForeldreSpar class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.ForeldreSpar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the ForeldreSpar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.ForeldreSpar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the SavingsAccount JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.SavingsAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the BSU JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.BSUTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the ForeldreSpar JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.ForeldreSparTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the SavingsAccount class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.SavingsAccount" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the BSU class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.BSU" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the ForeldreSpar class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.ForeldreSpar" action="suspend.breakpoint"/>
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
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585483369153" resourcePath="/ovinger/src/inheritance/SavingsAccount.java" sizeMeasure="47" className="inheritance.SavingsAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class SavingsAccount implements Account {&#xA;&#x9;&#xA;&#x9;double balance = 0;&#xA;&#x9;double interestRate;&#xA;&#xA;&#x9;public SavingsAccount(double rate) {&#xA;&#x9;&#x9;if (rate > 0) {&#xA;&#x9;&#x9;&#x9;interestRate = rate;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Negative rate&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;if (amount >= 0) {&#xA;&#x9;&#x9;&#x9;balance += amount;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Deposit error!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;if (amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Withdrawl error&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (amount > balance) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Withdrawl error!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;}&#xA;&#xA;&#x9;}&#xA;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void endYearUpdate() {&#xA;&#x9;&#x9;balance += balance*interestRate;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585482726265" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="5" className="inheritance.BSU">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class BSU {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585484038017" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="45" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends SavingsAccount {&#xA;&#x9;&#xA;&#x9;double maxDeposit;&#xA;&#x9;double thisYearDeposit = 0;&#xA;&#xA;&#x9;public BSU(double rate, double maxDeposit) {&#xA;&#x9;&#x9;super(rate);&#xA;&#x9;&#x9;if (maxDeposit >= 0) {&#xA;&#x9;&#x9;&#x9;this.maxDeposit = maxDeposit;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;MexDeposit negative&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getTaxDeduction() {&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;if (amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Negative deposit&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (maxDeposit > thisYearDeposit) {&#xA;&#x9;&#x9;&#x9;if (maxDeposit > thisYearDeposit + amount) {&#xA;&#x9;&#x9;&#x9;&#x9;thisYearDeposit += amount;&#xA;&#x9;&#x9;&#x9;&#x9;super.deposit(amount);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;double inp = maxDeposit - thisYearDeposit;&#xA;&#x9;&#x9;&#x9;&#x9;thisYearDeposit = maxDeposit;&#xA;&#x9;&#x9;&#x9;&#x9;super.deposit(inp);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void endYearUpdate() {&#xA;&#x9;&#x9;balance += 10;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.0/@edit" start="39" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585484327876" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="50" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="maxDeposit > thisYearDeposit) {&#xA;&#x9;&#x9;&#x9;if (maxDeposit > thisYearDeposit + amount) {&#xA;&#x9;&#x9;&#x9;&#x9;thisYearDeposit += amount;&#xA;&#x9;&#x9;&#x9;&#x9;super.deposit(amount);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;double inp = maxDeposit - thisYearDeposit;&#xA;&#x9;&#x9;&#x9;&#x9;thisYearDeposit = maxDeposit;&#xA;&#x9;&#x9;&#x9;&#x9;super.deposit(inp);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;MaxDeposit overridden&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.1/@edit" start="426" end="-72"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585484465307" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="56" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="super.deposit(inp);&#xA;&#x9;&#x9;&#x9;&#x9;thisYearDeposit = maxDeposit;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;MaxDeposit overridden&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;if (thisYearDeposit &lt; amount) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Error&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;super.withdraw(amount);&#xA;&#x9;&#x9;&#x9;thisYearDeposit -= amount;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.2/@edit" start="630" end="-72"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585484491172" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="56" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="thisYearDeposit*0.2" edit="/1/@proposals.0/@proposals.3/@attempts.3/@edit" start="363" end="-682"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585484635078" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="57" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="super.endYearUpdate();&#xA;&#x9;&#x9;thisYearDeposit = " edit="/1/@proposals.0/@proposals.3/@attempts.4/@edit" start="1042" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585484724001" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="55" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="throw new IllegalStateException(&quot;MaxDeposit overridden&quot;)" edit="/1/@proposals.0/@proposals.3/@attempts.5/@edit" start="601" end="-395"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585484756993" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="55" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(thisYearDeposit + amount)" edit="/1/@proposals.0/@proposals.3/@attempts.6/@edit" start="496" end="-532"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585484868493" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="59" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public double temp() {&#xA;&#x9;&#x9;return thisYearDeposit;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.3/@attempts.7/@edit" start="1050" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585484976668" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="59" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String temp() {&#xA;&#x9;&#x9;return &quot;this: &quot; + thisYearDeposit + &quot; - max: &quot; + max" edit="/1/@proposals.0/@proposals.3/@attempts.8/@edit" start="1060" end="-16"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585485567103" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="66" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;BSU test = new BSU(0.05, 25000);&#xA;&#x9;&#x9;test.deposit(10000);&#xA;&#x9;&#x9;System.out.println(test.temp());&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.3/@attempts.9/@edit" start="1143" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585485581805" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="66" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="test.deposit(20000);" edit="/1/@proposals.0/@proposals.3/@attempts.10/@edit" start="1282" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585486451687" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="66" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="super.deposit(amount);&#xA;&#x9;&#x9;&#x9;&#x9;thisYearDeposit += amount" edit="/1/@proposals.0/@proposals.3/@attempts.11/@edit" start="530" end="-727"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585486708201" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="54" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.3/@attempts.12/@edit" start="1050" end="-2"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585486737261" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="54" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private double maxDeposit;&#xA;&#x9;private " edit="/1/@proposals.0/@proposals.3/@attempts.13/@edit" start="67" end="-966"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585485569852" mode="run" className="inheritance.BSU">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.BSU</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>this: 10000.0 - max: 25000.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585485586132" mode="run" className="inheritance.BSU">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.BSU</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>this: 10000.0 - max: 25000.0&#xD;
Exception in thread &quot;main&quot; java.lang.IllegalStateException: MaxDeposit overridden&#xD;
	at ovinger/inheritance.BSU.deposit(BSU.java:30)&#xD;
	at ovinger/inheritance.BSU.main(BSU.java:64)&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585486534084" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="5" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class ForeldreSpar {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585486711040" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="19" errorCount="1" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends SavingsAccount {&#xA;&#x9;&#xA;&#x9;int maxWithdrawals;&#xA;&#x9;&#xA;&#x9;public ForeldreSpar(double rate, int maxWithdrawals) {&#xA;&#x9;&#x9;super(rate);&#xA;&#x9;&#x9;if (maxWithdrawals &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;N maxW&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.maxWithdrawals = maxWithdrawals;&#xA;&#x9;}&#xA;&#xA;&#x9;public int getRemainingWithdrawals() {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.5/@attempts.0/@edit" start="48" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="320" charEnd="345" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585486971751" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="30" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private int maxWithdrawals;&#xA;&#x9;private int usedWithrawals = 0;&#xA;&#x9;&#xA;&#x9;public ForeldreSpar(double rate, int maxWithdrawals) {&#xA;&#x9;&#x9;super(rate);&#xA;&#x9;&#x9;if (maxWithdrawals &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;N maxW&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.maxWithdrawals = maxWithdrawals;&#xA;&#x9;}&#xA;&#xA;&#x9;public int getRemainingWithdrawals() {&#xA;&#x9;&#x9;return maxWithdrawals - usedWithrawals;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;if (usedWithrawals &lt; maxWithdrawals) {&#xA;&#x9;&#x9;&#x9;usedWithrawals++;&#xA;&#x9;&#x9;&#x9;super.withdraw(amount);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;}&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.5/@attempts.1/@edit" start="76" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585487370633" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="30" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="super.withdraw(amount);&#xA;&#x9;&#x9;&#x9;usedWithrawals++" edit="/1/@proposals.0/@proposals.5/@attempts.2/@edit" start="516" end="-63"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585487442558" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="30" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;Withdrawal error!&quot;" edit="/1/@proposals.0/@proposals.5/@attempts.3/@edit" start="609" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585487557288" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="36" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void endYearUpdate() {&#xA;&#x9;&#x9;super.endYearUpdate();&#xA;&#x9;&#x9;usedWithrawals = 0;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.5/@attempts.4/@edit" start="638" end="-3"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585484511050" completion="0.0" testRunName="inheritance.BSUTest" failureCount="3">
          <failureTests>testGetTaxDeduction</failureTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585484640532" completion="0.6666666666666666" testRunName="inheritance.BSUTest" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585484729695" completion="0.6666666666666666" testRunName="inheritance.BSUTest" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585484761952" completion="0.6666666666666666" testRunName="inheritance.BSUTest" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585484886979" completion="0.6666666666666666" testRunName="inheritance.BSUTest" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585484892363" completion="0.6666666666666666" testRunName="inheritance.BSUTest" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585484982442" completion="0.6666666666666666" testRunName="inheritance.BSUTest" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585485063622" completion="1.0" testRunName="inheritance.BSUTest" successCount="3">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585485071200" completion="0.6666666666666666" testRunName="inheritance.BSUTest" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585485246291" completion="0.0" testRunName="inheritance.BSUTest" failureCount="1">
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585485264981" completion="0.6666666666666666" testRunName="inheritance.BSUTest" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585485286088" completion="0.6666666666666666" testRunName="inheritance.BSUTest" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585485293339" completion="0.6666666666666666" testRunName="inheritance.BSUTest" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585486353669" completion="0.6666666666666666" testRunName="inheritance.BSUTest" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585486489591" completion="1.0" testRunName="inheritance.BSUTest" successCount="3">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585486990214" completion="0.0" testRunName="inheritance.ForeldreSparTest" failureCount="2">
          <failureTests>testWithdraw</failureTests>
          <failureTests>testGetRemainingWithdrawals</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585487283198" completion="0.0" testRunName="inheritance.ForeldreSparTest" failureCount="2">
          <failureTests>testWithdraw</failureTests>
          <failureTests>testGetRemainingWithdrawals</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585487378340" completion="0.0" testRunName="inheritance.ForeldreSparTest" failureCount="1" errorCount="1">
          <failureTests>testGetRemainingWithdrawals</failureTests>
          <errorTests>testWithdraw</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585487461259" completion="0.0" testRunName="inheritance.ForeldreSparTest" failureCount="1" errorCount="1">
          <failureTests>testGetRemainingWithdrawals</failureTests>
          <errorTests>testWithdraw</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585487562819" completion="1.0" testRunName="inheritance.ForeldreSparTest" successCount="2">
          <successTests>testWithdraw</successTests>
          <successTests>testGetRemainingWithdrawals</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.5/@q" answer="/0/@parts.1/@tasks.5/@a">
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
