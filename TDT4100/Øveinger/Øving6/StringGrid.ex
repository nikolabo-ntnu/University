<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="StringGridImpl">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Copy the source code for the StringGrid interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.StringGrid"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StringGridImpl class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.StringGridImpl"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StringGridImpl class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.StringGridImpl"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="StringGridIterator">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StringGridIterator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.StringGridIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StringGridIterator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.StringGridIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StringGridTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.StringGridTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.StringGrid*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583237126934" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="5" className="interfaces.StringGrid">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public interface StringGrid {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583238363167" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="20" className="interfaces.StringGrid">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public int getRowCount();&#xA;&#x9;&#xA;&#x9;public int getColumnCount();&#xA;&#x9;&#xA;&#x9;public String getElement(int row, int column);&#xA;&#x9;&#xA;&#x9;public void setElement(int row, int column, String element);&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;StringGrid tester = new StringGridImpl(3,2);&#xA;&#x9;&#x9;System.out.println(tester.getColumnCount());&#xA;&#x9;&#x9;tester.setElement(0, 0, &quot;Hi&quot;);&#xA;&#x9;&#x9;System.out.println(tester.getElement(0, 0));&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="52" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583238847220" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="21" className="interfaces.StringGrid">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(tester.getElement(0, 1));&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="446" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583240244779" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="27" className="interfaces.StringGrid">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;&#x9;StringGridIterator temp = new StringGridIterator(tester, true);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while (temp.hasNext()) {&#xA;&#x9;&#x9;&#x9;System.out.println(temp.next());&#xA;&#x9;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="493" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583240257477" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="24" className="interfaces.StringGrid">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="tester.setElement(0, 0, &quot;Hi&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="320" end="-148"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583240278149" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="25" className="interfaces.StringGrid">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="tester.setElement(2, 2, &quot;Some element&quot;);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="353" end="-143"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583240290494" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="25" className="interfaces.StringGrid">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="374" end="-164"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583240316487" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="25" className="interfaces.StringGrid">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="371" end="-167"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583240324014" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="25" className="interfaces.StringGrid">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="fals" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="456" end="-80"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583237154240" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="5" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class StringGridImpl {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583237917697" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="37" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;&#xA;public class StringGridImpl implements StringGrid{&#xA;&#x9;&#xA;&#x9;ArrayList&lt;ArrayList&lt;String>> grid = new ArrayList&lt;ArrayList&lt;String>>();&#xA;&#x9;int rows, columns;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public StringGridImpl(int rows, int columns) {&#xA;&#x9;&#x9;if (rows > 0 &amp;&amp; columns > 0) {&#xA;&#x9;&#x9;&#x9;this.rows = rows;&#xA;&#x9;&#x9;&#x9;this.columns = columns;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Can not have negative size&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getRowCount() {&#xA;&#x9;&#x9;return rows;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getColumnCount() {&#xA;&#x9;&#x9;return columns;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getElement(int row, int column) {&#xA;&#x9;&#x9;if (row >= 0 &amp;&amp; row &lt; rows &amp;&amp; column >= 0 &amp;&amp; column &lt; columns) {&#xA;&#x9;&#x9;&#x9;return grid.get(row).get(column);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal row or column index&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="21" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583238181546" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="50" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="checkRange(row, column)) {&#xA;&#x9;&#x9;&#x9;return grid.get(row).get(column);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setElement(int row, int column, String element) {&#xA;&#x9;&#x9;if (checkRange(row, column)) {&#xA;&#x9;&#x9;&#x9;grid.get(row).set(column, element);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private Boolean checkRange(int row, int column) {&#xA;&#x9;&#x9;if (row >= 0 &amp;&amp; row &lt; rows &amp;&amp; column >= 0 &amp;&amp; column &lt; columns) {&#xA;&#x9;&#x9;&#x9;return true" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="577" end="-95"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583238819898" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="49" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class StringGridImpl implements StringGrid{&#xA;&#x9;&#xA;&#x9;String[][] grid;&#xA;&#x9;int rows, columns;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public StringGridImpl(int rows, int columns) {&#xA;&#x9;&#x9;if (rows > 0 &amp;&amp; columns > 0) {&#xA;&#x9;&#x9;&#x9;this.rows = rows;&#xA;&#x9;&#x9;&#x9;this.columns = columns;&#xA;&#x9;&#x9;&#x9;grid = new String[rows][columns];&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Can not have negative size&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getRowCount() {&#xA;&#x9;&#x9;return rows;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getColumnCount() {&#xA;&#x9;&#x9;return columns;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getElement(int row, int column) {&#xA;&#x9;&#x9;if (checkRange(row, column)) {&#xA;&#x9;&#x9;&#x9;return grid[row][column];&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setElement(int row, int column, String element) {&#xA;&#x9;&#x9;if (checkRange(row, column)) {&#xA;&#x9;&#x9;&#x9;grid[row][column] = element" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="21" end="-238"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583238974653" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="49" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="b" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="756" end="-217"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583239015147" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="49" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private String[][] grid;&#xA;&#x9;private " edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="75" end="-881"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583238887559" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="5" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class StringGridIterator {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583240179844" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="56" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Iterator;&#xA;&#xA;public class StringGridIterator implements Iterator&lt;String>{&#xA;&#x9;&#xA;&#x9;private StringGrid grid;&#xA;&#x9;private boolean rowMajor;&#xA;&#x9;&#xA;&#x9;private int[] pos;&#xA;&#x9;&#xA;&#x9;public StringGridIterator(StringGrid grid, boolean rowMajor) {&#xA;&#x9;&#x9;this.grid = grid;&#xA;&#x9;&#x9;this.rowMajor = rowMajor;&#xA;&#x9;&#x9;if (rowMajor) {&#xA;&#x9;&#x9;&#x9;pos = new int[] {0,-1};&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;pos = new int[] {-1, 0};&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;if (pos[0] == grid.getRowCount() - 1 &amp;&amp; pos[1] == grid.getColumnCount() - 1) {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return true;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;if (rowMajor) {&#xA;&#x9;&#x9;&#x9;int n = pos[1] + 1;&#xA;&#x9;&#x9;&#x9;if (n >= grid.getColumnCount()) {&#xA;&#x9;&#x9;&#x9;&#x9;n = 0;&#xA;&#x9;&#x9;&#x9;&#x9;pos[0]++;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;pos[1] = n;&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;return grid.getElement(pos[0], pos[1]);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;int n = pos[0] + 1;&#xA;&#x9;&#x9;&#x9;if (n >= grid.getRowCount()) {&#xA;&#x9;&#x9;&#x9;&#x9;n = 0;&#xA;&#x9;&#x9;&#x9;&#x9;pos[1]++;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;pos[0] = n;&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;return grid.getElement(pos[0], pos[1]);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void remove() {&#xA;&#x9;&#x9;throw new UnsupportedOperationException();&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.0/@edit" start="21" end="-4"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
    </proposals>
    <proposals exercisePart="/0/@parts.2">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.2/@tasks.0/@q" answer="/0/@parts.2/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.2/@tasks.1/@q" answer="/0/@parts.2/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.2/@tasks.2/@q" answer="/0/@parts.2/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.2/@tasks.3/@q" answer="/0/@parts.2/@tasks.3/@a">
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
