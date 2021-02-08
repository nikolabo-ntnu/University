<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Person">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Person class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.Person"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Person class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.Person"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the PersonTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.PersonTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.Person" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582105876338" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="5" className="objectstructures.Person">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class Person {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582107240466" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="109" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.List;&#xA;import java.util.regex.Pattern;&#xA;&#xA;public class Person {&#xA;&#x9;&#xA;&#x9;private String name;&#xA;&#x9;private char gender;&#xA;&#x9;&#xA;&#x9;private Person mother;&#xA;&#x9;private Person father;&#xA;&#x9;private List&lt;Person> children;&#xA;&#x9;&#xA;&#x9;public Person(String name, char gender) {&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (gender != 'F' &amp;&amp; gender != 'M') {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal gender entered&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;this.gender = gender;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;setName(name);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void setName(String name) {&#xA;&#x9;&#x9;if (Pattern.matches(&quot;(?i)\\b[A-Z]{2,}\\b&quot;, name)) {&#xA;&#x9;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal naming scheme&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return getName() + &quot;:\n&quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&quot;Father: &quot; + getFather() + &quot;\n&quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&quot;Mother: &quot; + getMother() + &quot;\n&quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&quot;Children: &quot; + children.toString();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Get&#xA;&#x9;String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;char getGender() {&#xA;&#x9;&#x9;return gender;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;Person getMother() {&#xA;&#x9;&#x9;return mother;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;Person getFather() {&#xA;&#x9;&#x9;return father;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;int getChildCount() {&#xA;&#x9;&#x9;return children.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;Person getChild(int index) {&#xA;&#x9;&#x9;return children.get(index);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Change state&#xA;&#x9;&#xA;&#x9;// Child&#xA;&#x9;void addChild(Person child) {&#xA;&#x9;&#x9;children.add(child);&#xA;&#x9;&#x9;if (gender == 'M') {&#xA;&#x9;&#x9;&#x9;child.setFather(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;child.setMother(this);&#xA;&#x9;&#x9;}&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void removeChild(Person child) {&#xA;&#x9;&#x9;if (children.contains(child)) {&#xA;&#x9;&#x9;&#x9;children.remove(child);&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;if (gender == 'M') {&#xA;&#x9;&#x9;&#x9;&#x9;child.setFather(null);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;child.setMother(null);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Father / Mother&#xA;&#x9;void setMother(Person mother) {&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void setFather(Person father) {&#xA;&#x9;&#x9;this.father = father;&#xA;&#x9;&#x9;father.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="27" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582107339985" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="116" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Person me = new Person(&quot;Nikolai&quot;, 'M');&#xA;&#x9;&#x9;Person mother = new Person(&quot;Nina&quot;, 'F');&#xA;&#x9;&#x9;Person father = new Person(&quot;Erik&quot;, 'M');&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;me.setFather(father);&#xA;&#x9;&#x9;System.out.println(me);&#xA;&#x9;&#x9;mother.addChild(me);&#xA;&#x9;&#x9;System.out.println(me);" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="1753" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582107631432" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="116" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ArrayList;&#xA;import java.util.List;&#xA;import java.util.regex.Pattern;&#xA;&#xA;public class Person {&#xA;&#x9;&#xA;&#x9;private String name;&#xA;&#x9;private char gender;&#xA;&#x9;&#xA;&#x9;private Person mother;&#xA;&#x9;private Person father;&#xA;&#x9;private List&lt;Person> children = new ArrayList&lt;Person>();&#xA;&#x9;&#xA;&#x9;public Person(String name, char gender) {" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="44" end="-1707"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582107817254" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="120" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (child.getFather() != this) {&#xA;&#x9;&#x9;&#x9;&#x9;child.setFather(this);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if (child.getMother() != this) {&#xA;&#x9;&#x9;&#x9;&#x9;child.setMother(this);&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="1286" end="-691"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582107854130" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="114" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="700" end="-1244"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582107891660" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="121" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return getName() + &quot;:\n&quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&quot;Father: &quot; + getFather() + &quot;\n&quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&quot;Mother: &quot; + getMother() + &quot;\n&quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&quot;Children: &quot; + children.toString();&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="700" end="-1245"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582107966346" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="120" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="836" end="-1248"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582108048701" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="120" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".getFather());&#xA;&#x9;&#x9;mother.addChild(me);&#xA;&#x9;&#x9;System.out.println(me.getMother()" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="2027" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582108107942" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="120" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".getName() + &quot;\n&quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&quot;Mother: &quot; + getMother().getName();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Get&#xA;&#x9;String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;char getGender() {&#xA;&#x9;&#x9;return gender;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;Person getMother() {&#xA;&#x9;&#x9;return mother;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;Person getFather() {&#xA;&#x9;&#x9;return father;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;int getChildCount() {&#xA;&#x9;&#x9;return children.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;Person getChild(int index) {&#xA;&#x9;&#x9;return children.get(index);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Change state&#xA;&#x9;&#xA;&#x9;// Child&#xA;&#x9;void addChild(Person child) {&#xA;&#x9;&#x9;children.add(child);&#xA;&#x9;&#x9;if (gender == 'M') {&#xA;&#x9;&#x9;&#x9;if (child.getFather() != this) {&#xA;&#x9;&#x9;&#x9;&#x9;child.setFather(this);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if (child.getMother() != this) {&#xA;&#x9;&#x9;&#x9;&#x9;child.setMother(this);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void removeChild(Person child) {&#xA;&#x9;&#x9;if (children.contains(child)) {&#xA;&#x9;&#x9;&#x9;children.remove(child);&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;if (gender == 'M') {&#xA;&#x9;&#x9;&#x9;&#x9;child.setFather(null);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;child.setMother(null);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Father / Mother&#xA;&#x9;void setMother(Person mother) {&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void setFather(Person father) {&#xA;&#x9;&#x9;this.father = father;&#xA;&#x9;&#x9;father.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Person me = new Person(&quot;Nikolai&quot;, 'M');&#xA;&#x9;&#x9;Person mother = new Person(&quot;Nina&quot;, 'F');&#xA;&#x9;&#x9;Person father = new Person(&quot;Erik&quot;, 'M');&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;me.setFather(father);&#xA;&#x9;&#x9;System.out.println(me);&#xA;&#x9;&#x9;mother.addChild(me);&#xA;&#x9;&#x9;System.out.println(me" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="798" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582108166607" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="118" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Fa" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="753" end="-1265"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582108223326" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="119" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Name() + &quot;:\n&quot; +&#xA;&#x9;&#x9;&#x9;&#x9;&quot;Father: &quot; + get" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="753" end="-1267"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582108252590" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="120" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" +&#xA;&#x9;&#x9;&#x9;&#x9;&quot;Mother: &quot; + getMother().getName()" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="808" end="-1249"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582108576139" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="135" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String result = getName() + &quot;:\n&quot;;&#xA;&#x9;&#x9;if (getMother() != null) {&#xA;&#x9;&#x9;&#x9;result += &quot;Mother: &quot; + getMother() + &quot;\n&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;result += &quot;Mother: none\n&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (getFather() != null) {&#xA;&#x9;&#x9;&#x9;result += &quot;Father: &quot; + getFather() + &quot;\n&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;result += &quot;Father: none\n&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;result += &quot;Children: &quot; + getChildCount();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return result" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="743" end="-1249"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582108599073" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="135" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".getName() + &quot;\n&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;result += &quot;Mother: none\n&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (getFather() != null) {&#xA;&#x9;&#x9;&#x9;result += &quot;Father: &quot; + getFather().getName" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="844" end="-1373"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582109218136" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="142" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (getChildCount() > 0) {&#xA;&#x9;&#x9;&#x9;List&lt;String> temp = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#x9;children.forEach(n -> temp.add(n.toString()));&#xA;&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;result += &quot;Children: &quot; + temp.toString();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;result += &quot;Children: 0&quot;;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="1049" end="-1268"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582109230174" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="143" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(mother);&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="2531" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582109284765" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="143" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="getName" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="1160" end="-1398"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582109344419" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="145" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (!children.contains(child)) {&#xA;&#x9;&#x9;&#x9;children.add(child);&#xA;&#x9;&#x9;&#x9;if (gender == 'M') {&#xA;&#x9;&#x9;&#x9;&#x9;if (child.getFather() != this) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;child.setFather(this);&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;if (child.getMother() != this) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;child.setMother(this);&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="1652" end="-716"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582109375976" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="145" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="none" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="1260" end="-1354"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582109402265" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="145" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" + &quot;\n&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;result += &quot;Children: none\n" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="1221" end="-1354"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582109468107" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="151" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;&#x9;Person someone = new Person(&quot;Tor&quot;, 'M');&#xA;&#x9;&#x9;me.setFather(someone);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(me);&#xA;&#x9;&#x9;System.out.println(father);&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="2622" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582109526281" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="153" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".removeChild(this);&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void setFather(Person father) {&#xA;&#x9;&#x9;this.father.removeChild(this);" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="2189" end="-495"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582109595364" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="157" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (this.mother != null) {&#xA;&#x9;&#x9;&#x9;this.mother.removeChild(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void setFather(Person father) {&#xA;&#x9;&#x9;if (this.father != null) {&#xA;&#x9;&#x9;&#x9;this.father.removeChild(this);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="2178" end="-495"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582109723861" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="161" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (father != null) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;child.setFather(null);&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;if (mother != null) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;child.setMother(null);&#xA;&#x9;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="2044" end="-783"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582110157021" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="176" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (index &lt; 0 || index >= getChildCount()) {&#xA;&#x9;&#x9;&#x9;throw new IndexOutOfBoundsException(&quot;Index out of range&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return children.get(index);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Change state&#xA;&#x9;&#xA;&#x9;// Child&#xA;&#x9;void addChild(Person child) {&#xA;&#x9;&#x9;if (!children.contains(child)) {&#xA;&#x9;&#x9;&#x9;children.add(child);&#xA;&#x9;&#x9;&#x9;if (gender == 'M') {&#xA;&#x9;&#x9;&#x9;&#x9;if (child.getFather() != this) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;child.setFather(this);&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;if (child.getMother() != this) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;child.setMother(this);&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void removeChild(Person child) {&#xA;&#x9;&#x9;if (children.contains(child)) {&#xA;&#x9;&#x9;&#x9;children.remove(child);&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;if (gender == 'M') {&#xA;&#x9;&#x9;&#x9;&#x9;if (father != null) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;child.setFather(null);&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;if (mother != null) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;child.setMother(null);&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Father / Mother&#xA;&#x9;void setMother(Person mother) {&#xA;&#x9;&#x9;if (mother.getGender() == 'F') {&#xA;&#x9;&#x9;&#x9;if (this.mother != null) {&#xA;&#x9;&#x9;&#x9;&#x9;this.mother.removeChild(this);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Male mother not allowed&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void setFather(Person father) {&#xA;&#x9;&#x9;if (father.getGender() == 'M') {&#xA;&#x9;&#x9;&#x9;if (this.father != null) {&#xA;&#x9;&#x9;&#x9;&#x9;this.father.removeChild(this);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;this.father = father;&#xA;&#x9;&#x9;&#x9;father.addChild(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;No female fathers!&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.24/@edit" start="1569" end="-446"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582110221779" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="176" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" &amp;&amp; mother != this) {&#xA;&#x9;&#x9;&#x9;if (this.mother != null) {&#xA;&#x9;&#x9;&#x9;&#x9;this.mother.removeChild(this);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal mother argument, self or male&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void setFather(Person father) {&#xA;&#x9;&#x9;if (father.getGender() == 'M' &amp;&amp; father != this) {&#xA;&#x9;&#x9;&#x9;if (this.father != null) {&#xA;&#x9;&#x9;&#x9;&#x9;this.father.removeChild(this);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;this.father = father;&#xA;&#x9;&#x9;&#x9;father.addChild(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal father argument, self or female" edit="/1/@proposals.0/@proposals.0/@attempts.25/@edit" start="2401" end="-453"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582498745732" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="182" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;&#x9;Person myKid = new Person(&quot;Chloe&quot;, 'F');&#xA;&#x9;&#x9;myKid.setFather(me);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(me);&#xA;&#x9;&#x9;System.out.println(myKid);&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.26/@edit" start="3392" end="-5"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582107341952" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.NullPointerException&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:72)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.main(Person.java:111)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582107484953" mode="debug" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.NullPointerException&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:72)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.main(Person.java:111)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582107632699" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:102)&#xD;
	at ovinger/objectstructures.Person.addChild(Person.java:74)&#xD;
	a</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582107818105" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:38)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582107853865" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>objectstructures.Person@d139ccb8&#xD;
objectstructures.Person@d139ccb8&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582107893463" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at java.base/java.util.AbstractCollection.toString(AbstractCollection.java:457)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:41)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.StringBuilder.append(StringBuilder.java:166)&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:39)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.lang.Stri</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582107968602" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Father: Erik:
Father: null
Mother: null
Mother: null&#xD;
Nikolai:
Father: Erik:
Father: null
Mother: null
Mother: Nina:
Father: null
Mother: null&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582108051856" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Erik:
Father: null
Mother: null&#xD;
Nina:
Father: null
Mother: null&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582108109608" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.NullPointerException&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.io.PrintStream.println(PrintStream.java:977)&#xD;
	at ovinger/objectstructures.Person.main(Person.java:116)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582108167665" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Erik&#xD;
Erik&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582108225278" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Father: Erik&#xD;
Nikolai:
Father: Erik&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582108253673" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.NullPointerException&#xD;
	at ovinger/objectstructures.Person.toString(Person.java:40)&#xD;
	at java.base/java.lang.String.valueOf(String.java:2932)&#xD;
	at java.base/java.io.PrintStream.println(PrintStream.java:977)&#xD;
	at ovinger/objectstructures.Person.main(Person.java:116)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582108577687" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Mother: none
Father: Erik:
Mother: none
Father: none
Children: 1
Children: 0&#xD;
Nikolai:
Mother: Nina:
Mother: none
Father: none
Children: 2
Father: Erik:
Mother: none
Father: none
Children: 1
Children: 0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582108600118" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Mother: none
Father: Erik
Children: 0&#xD;
Nikolai:
Mother: Nina
Father: Erik
Children: 0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582109220912" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Mother: none
Father: Erik
Children: 0&#xD;
Nikolai:
Mother: Nina
Father: Erik
Children: 0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582109231599" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Mother: none
Father: Erik
Children: 0&#xD;
Nikolai:
Mother: Nina
Father: Erik
Children: 0&#xD;
Nina:
Mother: none
Father: none
Children: [Nikolai:
Mother: Nina
Father: Erik
Children: 0, Nikolai:
Mother: Nina
Father: Erik
Children: 0]&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582109286452" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Mother: none
Father: Erik
Children: 0&#xD;
Nikolai:
Mother: Nina
Father: Erik
Children: 0&#xD;
Nina:
Mother: none
Father: none
Children: [Nikolai, Nikolai]&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582109344200" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Mother: none
Father: Erik
Children: 0&#xD;
Nikolai:
Mother: Nina
Father: Erik
Children: 0&#xD;
Nina:
Mother: none
Father: none
Children: [Nikolai]&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582109404259" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Mother: none
Father: Erik
Children: none
&#xD;
Nikolai:
Mother: Nina
Father: Erik
Children: none
&#xD;
Nina:
Mother: none
Father: none
Children: [Nikolai]
&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582109469770" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Mother: none
Father: Erik
Children: none
&#xD;
Nikolai:
Mother: Nina
Father: Erik
Children: none
&#xD;
Nina:
Mother: none
Father: none
Children: [Nikolai]
&#xD;
Nikolai:
Mother: Nina
Father: Tor
Children: none
&#xD;
Erik:
Mother: none
Father: none
Children: [Nikolai]
&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582109528330" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.NullPointerException&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:130)&#xD;
	at ovinger/objectstructures.Person.main(Person.java:141)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582109596931" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Mother: none
Father: Erik
Children: none
&#xD;
Nikolai:
Mother: Nina
Father: Erik
Children: none
&#xD;
Nina:
Mother: none
Father: none
Children: [Nikolai]
&#xD;
Exception in thread &quot;main&quot; java.lang.NullPointerException&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:136)&#xD;
	at ovinger/objectstructures.Person.removeChild(Person.java:114)&#xD;
	at ovinger/objectstructures.Person.setFather(Person.java:133)&#xD;
	at ovinger/objectstructures.Person.main(Person.java:152)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582109723343" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Mother: none
Father: Erik
Children: none
&#xD;
Nikolai:
Mother: Nina
Father: Erik
Children: none
&#xD;
Nina:
Mother: none
Father: none
Children: [Nikolai]
&#xD;
Nikolai:
Mother: Nina
Father: Tor
Children: none
&#xD;
Erik:
Mother: none
Father: none
Children: none
&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582498768688" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nikolai:
Mother: none
Father: Erik
Children: none
&#xD;
Nikolai:
Mother: Nina
Father: Erik
Children: none
&#xD;
Nina:
Mother: none
Father: none
Children: [Nikolai]
&#xD;
Nikolai:
Mother: Nina
Father: Tor
Children: none
&#xD;
Erik:
Mother: none
Father: none
Children: none
&#xD;
Nikolai:
Mother: Nina
Father: Tor
Children: [Chloe]
&#xD;
Chloe:
Mother: none
Father: Nikolai
Children: none
&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582109779911" completion="0.6923076923076923" testRunName="objectstructures.PersonTest" successCount="9" failureCount="4">
          <successTests>testMorskapSetMother</successTests>
          <successTests>testFarbytteAddChild</successTests>
          <successTests>testMorbytteAddChild</successTests>
          <successTests>testMorbytteSetMother</successTests>
          <successTests>testFarbytteSetFather</successTests>
          <successTests>testMorskapAddChild</successTests>
          <successTests>testFarskapAddChild</successTests>
          <successTests>testFarskapSetFather</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testSelvmorskapIllegalArgumentException</failureTests>
          <failureTests>testMorskapIllegalArgumentException</failureTests>
          <failureTests>testSelvfarskapIllegalArgumentException</failureTests>
          <failureTests>testFarskapIllegalArgumentException</failureTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582107487798" elementId="objectstructures.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582107514233" elementId="objectstructures.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582107520442" elementId="objectstructures.Person" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582107535781" elementId="objectstructures.Person" action="suspend.breakpoint"/>
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
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582107491267" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
