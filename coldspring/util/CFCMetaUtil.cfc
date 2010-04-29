﻿<!---
   Copyright 2010 Mark Mandel
   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at
       http://www.apache.org/licenses/LICENSE-2.0
   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
 --->

<cfcomponent hint="Utility for interacting with CFC Meta data" output="false">

<!------------------------------------------- PUBLIC ------------------------------------------->

<cffunction name="init" hint="Constructor" access="public" returntype="CFCMetaUtil" output="false">
	<cfscript>
		variables.instance = {};
		return this;
	</cfscript>
</cffunction>

<cffunction name="eachClassInTypeHierarchy" hint="Calls the callback for each class type in inheritence, and also for each interface it implements" access="public" returntype="void" output="false">
	<cfargument name="className" hint="the name of the class" type="string" required="Yes">
	<cfargument name="closure" hint="the closure to fire for each class type found a" type="coldspring.util.Closure" required="Yes">
	<cfargument name="args" hint="optional arguments to also pass through to the callback" type="struct" required="No" default="#structNew()#">
	<cfscript>
		var meta = getComponentMetadata(arguments.className);
		var local = {};
		var queue = 0;

		while(structKeyExists(meta, "extends"))
		{
			arguments.args.className = meta.name;
			arguments.closure.call(argumentCollection=arguments.args);

			if(structKeyExists(meta, "implements"))
			{
				local.implements = meta.implements;
				queue = createObject("java", "java.util.ArrayDeque").init();

				//set up initial queue
				for(local.key in local.implements)
				{
					local.imeta = local.implements[local.key];
					queue.add(local.imeta);
				}

				//go breadth first
				while(NOT queue.isEmpty())
				{
					local.imeta = queue.remove();

					arguments.args.className = local.imeta.name;
					arguments.closure.call(argumentCollection=arguments.args);

					//if we have an extends, add it to the queue
					if(structKeyExists(local.imeta, "extends"))
					{
						for(local.key in local.imeta.extends)
						{
							local.imeta = local.imeta.extends[local.key];
							queue.add(local.imeta);
						}
					}
				}
			}

			meta = meta.extends;
		}
    </cfscript>
</cffunction>

<cffunction name="isAssignableFrom" hint="Whether or not you can assign class1 as class2, i.e if class2 is an interface or super class of class 1" access="public" returntype="boolean" output="false">
	<cfargument name="class1" hint="the implementing class / interface" type="string" required="Yes">
	<cfargument name="class2" hint="the super class / interface" type="string" required="Yes">
	<cfscript>
		var args = { compareClass = arguments.class2 };
		var closure = duplicate(getClassTypeCheckClosure());

		eachClassInTypeHierarchy(arguments.class1, closure, args);

		return closure.bound("result");
    </cfscript>
</cffunction>

<!------------------------------------------- PACKAGE ------------------------------------------->

<!------------------------------------------- PRIVATE ------------------------------------------->

<!--- closureMethods --->
<cffunction name="classTypeCheck" hint="check to see if the given className is the same as the passed in one" access="private" returntype="void" output="false">
	<cfargument name="className" hint="the class to check" type="string" required="Yes">
	<cfargument name="compareClass" hint="the class to compare against" type="string" required="Yes">
	<cfscript>
		if(arguments.className eq arguments.compareClass)
		{
			variables.result = true;
		}
    </cfscript>
</cffunction>
<!--- /closureMethods --->

<cffunction name="getClassTypeCheckClosure" access="private" returntype="coldspring.util.Closure" output="false">
	<cfscript>
		if(NOT hasClassTypeCheckClosure())
		{
			setClassTypeCheckClosure(createObject("component", "coldspring.util.Closure").init(classTypeCheck));
			getClassTypeCheckClosure().bind("result", false);
		}
    </cfscript>
	<cfreturn instance.classTypeCheckClosure />
</cffunction>

<cffunction name="setClassTypeCheckClosure" access="private" returntype="void" output="false">
	<cfargument name="classTypeCheckClosure" type="coldspring.util.Closure" required="true">
	<cfset instance.classTypeCheckClosure = arguments.classTypeCheckClosure />
</cffunction>

<cffunction name="hasClassTypeCheckClosure" hint="whether this object has a classTypeCheckClosure" access="private" returntype="boolean" output="false">
	<cfreturn StructKeyExists(instance, "classTypeCheckClosure") />
</cffunction>

</cfcomponent>