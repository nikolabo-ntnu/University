<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="RPNCalc">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the RPNCalc class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.RPNCalc"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the RPNCalc class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.RPNCalc"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the RPNCalc class, by running the RPNCalcTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.RPNCalcTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Using Eclipse">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583261680032" resourcePath="/ovinger/src/interfaces/RPNCalc.java" sizeMeasure="101" className="interfaces.RPNCalc">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;import java.util.Stack;&#xA;import java.util.function.BinaryOperator;&#xA;import java.util.function.Supplier;&#xA;import java.util.function.UnaryOperator;&#xA;&#xA;public class RPNCalc {&#xA;&#x9;&#xA;&#x9;private Stack&lt;Double> stack = new Stack&lt;Double>();&#xA;&#x9;private OperatorList opList = new OperatorList();&#xA;&#x9;&#xA;&#x9;public RPNCalc() {&#xA;&#x9;&#x9;//Base operators&#xA;//&#x9;&#x9;addOperator('+', (a, b) -> a + b);&#xA;//&#x9;&#x9;addOperator('-', (a, b) -> a - b);&#xA;//&#x9;&#x9;addOperator('*', (a, b) -> a * b);&#xA;//&#x9;&#x9;addOperator('/', (a, b) -> a / b);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Get state //&#xA;&#x9;&#xA;&#x9;double peek(int pos) {&#xA;&#x9;&#x9;if (getSize() &lt;= pos || stack.isEmpty()) {&#xA;&#x9;&#x9;&#x9;return Double.NaN;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return stack.get(getSize() - 1 - pos);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;int getSize() {&#xA;&#x9;&#x9;return stack.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;String result = stack.toString();&#xA;&#x9;&#x9;System.out.println(result);&#xA;&#x9;&#x9;return result;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Change state //&#xA;&#x9;&#xA;&#x9;boolean addOperator(char key, BinaryOperator&lt;Double> op) {&#xA;&#x9;&#x9;return opList.addOperator(key, op);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;boolean addOperator(char key, UnaryOperator&lt;Double> op) {&#xA;&#x9;&#x9;return opList.addOperator(key, op);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;boolean addOperator(char key, Supplier&lt;Double> op) {&#xA;&#x9;&#x9;return opList.addOperator(key, op);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void removeOperator(char key) {&#xA;&#x9;&#x9;opList.removeOperator(key);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void push(Double inp) {&#xA;&#x9;&#x9;stack.push(inp);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void push(int inp) {&#xA;&#x9;&#x9;stack.push(Double.valueOf(inp));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;double pop() {&#xA;&#x9;&#x9;if (stack.isEmpty()) {&#xA;&#x9;&#x9;&#x9;return Double.NaN;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return stack.pop();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void performOperation(char key) {&#xA;&#x9;&#x9;String medium = opList.getOperator(key);&#xA;&#x9;&#x9;if (medium == null) {&#xA;&#x9;&#x9;&#x9;throw new UnsupportedOperationException(&quot;Operator '&quot; + key + &quot;' is not supported&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;switch (medium) {&#xA;&#x9;&#x9;case &quot;BI&quot;:&#xA;&#x9;&#x9;&#x9;if (stack.size() > 1) {&#xA;&#x9;&#x9;&#x9;&#x9;push(opList.getBinary(key).apply(pop(), pop()));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;break;&#xA;&#x9;&#x9;case &quot;UN&quot;:&#xA;&#x9;&#x9;&#x9;push(opList.getUnary(key).apply(pop()));&#xA;&#x9;&#x9;&#x9;break;&#xA;&#x9;&#x9;case &quot;SUP&quot;:&#xA;&#x9;&#x9;&#x9;push(opList.getSupplier(key).get());&#xA;&#x9;&#x9;&#x9;break;&#xA;&#x9;&#x9;default:&#xA;&#x9;&#x9;&#x9;throw new UnsupportedOperationException(&quot;Operator '&quot; + key + &quot;' is not supported&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;RPNCalc calc = new RPNCalc();&#xA;&#x9;&#x9;calc.addOperator('+', (a, b) -> a * b);&#xA;&#x9;&#x9;calc.addOperator('1', (a, b) -> a * (a + b));&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583261787234" resourcePath="/ovinger/src/interfaces/RPNCalc.java" sizeMeasure="110" className="interfaces.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;calc.push(4);&#xA;&#x9;&#x9;calc.push(3);&#xA;&#x9;&#x9;calc.performOperation('+');&#xA;&#x9;&#x9;calc.toString();&#xA;&#x9;&#x9;calc.push(4);&#xA;&#x9;&#x9;calc.push(3);&#xA;&#x9;&#x9;calc.toString();&#xA;&#x9;&#x9;calc.performOperation('1');&#xA;&#x9;&#x9;calc.toString();&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="2139" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583261966984" resourcePath="/ovinger/src/interfaces/RPNCalc.java" sizeMeasure="111" className="interfaces.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="double second = pop();&#xA;&#x9;&#x9;&#x9;&#x9;push(opList.getBinary(key).apply(pop(), second" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="1670" end="-610"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583261793358" mode="run" className="interfaces.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>[12.0]&#xD;
[12.0, 4.0, 3.0]&#xD;
[12.0, 21.0]&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583261969573" mode="run" className="interfaces.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>[12.0]&#xD;
[12.0, 4.0, 3.0]&#xD;
[12.0, 28.0]&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583261513480" completion="0.75" testRunName="interfaces.RPNCalcTest" successCount="3" failureCount="1">
          <successTests>testAddOperator</successTests>
          <successTests>testPerformOperationWithoutOperation</successTests>
          <successTests>testRemoveOperator</successTests>
          <failureTests>testPerformOperation</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583261979373" completion="1.0" testRunName="interfaces.RPNCalcTest" successCount="4">
          <successTests>testAddOperator</successTests>
          <successTests>testPerformOperationWithoutOperation</successTests>
          <successTests>testPerformOperation</successTests>
          <successTests>testRemoveOperator</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524208118" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524244495" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524283081" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524346890" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524354837" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524362691" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524364523" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524366708" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524652248" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524660614" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524671644" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524672585" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524700679" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579524940530" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579525999878" elementId="encapsulation.Vehicle" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625621969" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625644837" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625673879" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625704614" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625713718" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625728983" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625769254" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625787802" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625791810" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625822137" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625824352" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625901233" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625911726" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625914364" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625923971" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625951179" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579625954819" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579626035365" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579626055373" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579626060015" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579626063137" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579626065957" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579626086573" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579626087614" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1579626093948" elementId="encapsulation.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583262433087" elementId="java.util.ArrayList$Itr" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583262598773" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583262924377" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
      </proposals>
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
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
