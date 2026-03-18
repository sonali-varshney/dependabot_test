# dependabot_test

1) To enable dependabot,
Go to Repo Settings -> Security->
enable below options:		
		Dependabot alerts
		Dependabot security updates
		
2) Create .github/dependabot.yml file. Note: Structure of this file will always be this. You cant change this file name. It is restricted to use this name. You can't even mention dependabot.yaml instead of dependabot.yml

3)

How to verify dependabot test?
Go to your Repo -> Insights -> Dependency Graph


To Immediate trigger dependabot
Trick 1: In dependabot.yaml commit any change eg:weekly-> daily
Trick2: Intentaionally mention old dependency version in dependency file. eg: in pom.xml, for a dependency say latest version is3.14 but you need to mention ol version eg:<version>3.10</version>

To check if dependabot doesn't create any PR
Go to your Repo -> Insights -> Dependency Graph -> If dependency is detected , then dependabot will work


Note: jb PR raise hoga automatically, to 1 Dependabot 1 branch bhi create kr dega automatically jisme new updated dependency mention hogi and us branch ko main me merge krne k liye PR raise krta h ye.Agr 2 dependency h to 2 dbranch bnengi, 2 PR raise honge

PR k title aisa hoga kuch
Bump org.springframework.boot:spring-boot-starter-web from 2.5.0 to 4.0.


eg of dependabot updating Github action workflow. say in workflow, you mentioned a checkout step 
    - uses: actions/checkout@v4
    + uses: actions/checkout@v6
	
open-pull-requests-limit: 5

reviewers - PR create hote hi is reviewer ko automatically assign ho jayega

labels - PR k title k sth end me likha ata h ye label. it helps in filtering

Note: dependabot PR ko automerge nhi krta. us k liye github acytions workflow likhte h alg se.

