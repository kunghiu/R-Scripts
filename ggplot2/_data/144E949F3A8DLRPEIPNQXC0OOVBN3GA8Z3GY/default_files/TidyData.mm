<map version="docear 1.1" dcr_id="1396357389890_8fgky5rt4yx4etb4fyk0tbcjx" project="144E949F3A8DLRPEIPNQXC0OOVBN3GA8Z3GY" project_last_home="file:/D:/R-Scripts/ggplot2/">
<!--To view this file, download Docear - The Academic Literature Suite from http://www.docear.org -->
<attribute_registry SHOW_ATTRIBUTES="hide"/>
<node TEXT="TidyData" FOLDED="false" ID="ID_1624501781" CREATED="1396357389554" MODIFIED="1396357389557">
<hook NAME="AutomaticEdgeColor" COUNTER="6"/>
<hook NAME="MapStyle" layout="OUTLINE">
    <properties show_icon_for_attributes="true" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Introduction" POSITION="right" ID="ID_500527512" CREATED="1396357403907" MODIFIED="1396357411029" NUMBERED="true">
<edge COLOR="#ff0000"/>
<node TEXT="80%&#x7684;&#x6570;&#x636e;&#x5206;&#x6790;&#x65f6;&#x95f4;&#x90fd;&#x7528;&#x5728;&#x6570;&#x636e;&#x6e05;&#x6d17;&#x548c;&#x51c6;&#x5907;&#x4e0a;&#x3002;" ID="ID_1515067845" CREATED="1396358187410" MODIFIED="1396358377181">
<attribute NAME="key" VALUE="dasu2003exploratory"/>
<attribute NAME="authors" VALUE="Dasu, Tamraparni and Johnson, Theodore"/>
<attribute NAME="title" VALUE="Exploratory data mining and data cleaning"/>
<attribute NAME="year" VALUE="2003"/>
</node>
<node TEXT="&#x96be;&#x70b9;&#xff1a;&#x7279;&#x5f02;&#x503c;&#x53d1;&#x73b0;&#xff0c;&#x65e5;&#x671f;&#x62c6;&#x5206;&#xff0c;&#x7f3a;&#x5931;&#x503c;&#x586b;&#x8865;" ID="ID_1856847929" CREATED="1396358517312" MODIFIED="1396358545321"/>
<node TEXT="&#x672c;&#x6587;&#x4fa7;&#x91cd;data tidying&#xff1a;&#x7ed3;&#x6784;&#x5316;&#x6570;&#x636e;&#x96c6;&#x3002;" ID="ID_668548389" CREATED="1396358546167" MODIFIED="1396358685152"/>
<node TEXT="tidy data&#x6807;&#x51c6;&#x53ef;&#x4ee5;&#x52a0;&#x901f;&#x6570;&#x636e;&#x7684;&#x63a2;&#x7d22;&#x548c;&#x5206;&#x6790;&#xff0c;&#x7b80;&#x5316;&#x6570;&#x636e;&#x5206;&#x6790;&#x5de5;&#x5177;&#x5f00;&#x53d1;&#x3002;" ID="ID_225650861" CREATED="1396358960435" MODIFIED="1396359303867"/>
<node TEXT="&#x5de5;&#x5177;reshape&#xff0c;reshape2" ID="ID_1442349215" CREATED="1396359497140" MODIFIED="1396359535836"/>
<node TEXT="Philosophy of data" ID="ID_592042720" CREATED="1396359535845" MODIFIED="1396359559788">
<node TEXT="plyr&#xff0c;ggplot2" ID="ID_1465152927" CREATED="1396359559797" MODIFIED="1396359572173"/>
</node>
</node>
<node TEXT="Defining tidy data" POSITION="right" ID="ID_421679261" CREATED="1396357418994" MODIFIED="1396357429517" NUMBERED="true">
<edge COLOR="#0000ff"/>
<node TEXT="Happy families are all alike; every unhappy family is unhappy in its own way. --Leo Tolstoy" ID="ID_706977208" CREATED="1396359881992" MODIFIED="1396359932386" MOVED="1396359884201"/>
<node TEXT="structure of a dataset--physical layout" ID="ID_376440603" CREATED="1396360365203" MODIFIED="1396360389029"/>
<node TEXT="semantics--meaning" ID="ID_51501684" CREATED="1396360389499" MODIFIED="1396360405813"/>
<node TEXT="Data structure" ID="ID_1403713719" CREATED="1396357446026" MODIFIED="1396357477277" NUMBERED="true">
<node TEXT="&#x5927;&#x591a;&#x7edf;&#x8ba1;&#x6570;&#x636e;&#x96c6;&#x90fd;&#x662f;&#x957f;&#x65b9;&#x5f62;&#x7ed3;&#x6784;&#xff0c;&#x7531;&#x884c;&#x548c;&#x5217;&#x7ec4;&#x6210;&#x3002;" ID="ID_592026953" CREATED="1396360470505" MODIFIED="1396361590553"/>
</node>
<node TEXT="Data semantics" ID="ID_901156165" CREATED="1396357464929" MODIFIED="1396357497604" NUMBERED="true">
<node TEXT="&#x6570;&#x636e;&#x96c6;&#x662f;&#x201c;&#x503c;&#x201d;&#x7684;&#x96c6;&#x5408;&#xff0c;&#x6216;&#x8005;&#x6570;&#x5b57;&#xff0c;&#x6216;&#x8005;&#x5b57;&#x4e32;&#x3002;" ID="ID_1075723164" CREATED="1396361591750" MODIFIED="1396361628281"/>
<node TEXT="&#x503c;&#x6309;&#x4e24;&#x79cd;&#x65b9;&#x6cd5;&#x7ec4;&#x7ec7;&#xff0c;&#x6bcf;&#x4e2a;&#x503c;&#x90fd;&#x5c5e;&#x4e8e;&#x4e00;&#x4e2a;&#x53d8;&#x91cf;&#x548c;&#x4e00;&#x4e2a;&#x89c2;&#x6d4b;&#x3002;" ID="ID_897274348" CREATED="1396361639732" MODIFIED="1396361915971">
<node TEXT="&#x53d8;&#x91cf;&#x5305;&#x542b;&#x76f8;&#x540c;&#x5c5e;&#x6027;&#x7684;&#x6d4b;&#x91cf;&#x503c;" ID="ID_542369728" CREATED="1396361915980" MODIFIED="1396361962204"/>
<node TEXT="&#x89c2;&#x6d4b;&#x5305;&#x542b;&#x540c;&#x4e00;&#x5355;&#x4f4d;&#x7684;&#x6240;&#x6709;&#x5c5e;&#x6027;&#x503c;&#x3002;" ID="ID_63524644" CREATED="1396361931441" MODIFIED="1396441482304"/>
</node>
</node>
<node TEXT="A general rule of thumb is that it is easier to describe functional relationships between variables (e.g., z is a linear combination of x and y, density is the ratio of weight to volume) than between rows, and it is easier to make comparisons between groups of observations (e.g., average of group a vs. average of&#xa;group b) than between groups of columns." ID="ID_255380372" CREATED="1396364938354" MODIFIED="1396364949995"/>
<node TEXT="Tidy data" ID="ID_676116776" CREATED="1396357499457" MODIFIED="1396357512116" NUMBERED="true">
<node TEXT="In tidy data --Codd&#x2019;s 3rd normal form (Codd 1990)" ID="ID_1652884695" CREATED="1396365215326" MODIFIED="1396365682707">
<node TEXT="1. Each variable forms a column." ID="ID_1967612604" CREATED="1396365232262" MODIFIED="1396365232262"/>
<node TEXT="2. Each observation forms a row." ID="ID_1589675091" CREATED="1396365232262" MODIFIED="1396365232262"/>
<node TEXT="3. Each type of observational unit forms a table." ID="ID_89952546" CREATED="1396365232266" MODIFIED="1396365232266"/>
</node>
<node TEXT="the layout ensures that values of di&#xfb00;erent variables from the same observation are always paired" ID="ID_1748544168" CREATED="1396366048934" MODIFIED="1396441293322"/>
<node TEXT="One way of organising variables is by their role in the analysis:" ID="ID_246896301" CREATED="1396366351780" MODIFIED="1396366362642">
<node TEXT="are values &#xfb01;xed by the design of the data collection" ID="ID_117046010" CREATED="1396366362650" MODIFIED="1396366369628">
<node TEXT="Computer scientists often call &#xfb01;xed variables dimensions, and statisticians usually denote them with subscripts on random variables." ID="ID_1617715422" CREATED="1396366649423" MODIFIED="1396366664374"/>
</node>
<node TEXT="are they measured during the course of the experiment?" ID="ID_1444578373" CREATED="1396366369637" MODIFIED="1396366378995">
<node TEXT="Measured variables are what we actually measure in the study." ID="ID_119323310" CREATED="1396366665350" MODIFIED="1396366671519"/>
</node>
<node TEXT="Fixed variables should come &#xfb01;rst, followed by measured variables, each ordered so that&#xa;related variables are contiguous." ID="ID_754069926" CREATED="1396366415250" MODIFIED="1396366621033"/>
<node TEXT="Rows can then be ordered by the &#xfb01;rst variable, breaking ties with the second and subsequent (&#xfb01;xed) variables." ID="ID_601218613" CREATED="1396366621047" MODIFIED="1396366625592"/>
</node>
</node>
</node>
<node TEXT="Tidying messy datasets" POSITION="right" ID="ID_1570898144" CREATED="1396357526920" MODIFIED="1396357535932" NUMBERED="true">
<edge COLOR="#00ff00"/>
<node TEXT="Five common problems:" FOLDED="true" ID="ID_1743053289" CREATED="1396368209694" MODIFIED="1396368221584">
<node TEXT="&#x2022; column headers are values, not variable names" ID="ID_1131672911" CREATED="1396368222753" MODIFIED="1396368222753"/>
<node TEXT="&#x2022; multiple variables are stored in one column" ID="ID_1491200743" CREATED="1396368222753" MODIFIED="1396368222753"/>
<node TEXT="&#x2022; variables are stored in both rows and columns" ID="ID_821308668" CREATED="1396368222756" MODIFIED="1396368222756"/>
<node TEXT="&#x2022; multiple types of observational units are stored in the same table" ID="ID_1498435314" CREATED="1396368222759" MODIFIED="1396368222759"/>
<node TEXT="&#x2022; a single observational unit is stored in multiple tables" ID="ID_267750632" CREATED="1396368222762" MODIFIED="1396368222762"/>
</node>
<node TEXT="most messy datasets can be tidied with a small set of tools: melting, string splitting, and casting." ID="ID_1970135496" CREATED="1396368422886" MODIFIED="1396368486787"/>
<node TEXT="Column headers are values, not variable names" ID="ID_31003042" CREATED="1396357543328" MODIFIED="1396357570876" NUMBERED="true">
<node TEXT="&#x901a;&#x8fc7;melt&#x6765;&#x7ea0;&#x6b63;&#xff0c;&#x5c06;&#x591a;&#x5217;&#x8f6c;&#x6362;&#x4e3a;&#x4e24;&#x5217;&#xff0c;&#x4e00;&#x5217;&#x53d8;&#x91cf;&#x540d;-&#x53d8;&#x91cf;&#xff1b;&#x4e00;&#x5217;value&#x3002;" ID="ID_654416465" CREATED="1396405550569" MODIFIED="1396405599665"/>
</node>
<node TEXT="Multiple variables stored in one column" ID="ID_1181875187" CREATED="1396357572593" MODIFIED="1396357695802" NUMBERED="true">
<node TEXT="&#x5b9e;&#x8d28;&#x662f;&#x62c6;&#x5206;&#x5355;&#x5217;&#x6210;&#x4e24;&#x5217;&#x6216;&#x591a;&#x5217;&#x3002;" ID="ID_510794583" CREATED="1396406232536" MODIFIED="1396406248524"/>
<node TEXT="&#x65b9;&#x4fbf;&#x8fdb;&#x884c;&#x6570;&#x636e;&#x5408;&#x5e76;&#x3002;" ID="ID_945421401" CREATED="1396406249233" MODIFIED="1396407013153"/>
</node>
<node TEXT="Variables are stored in both rows and columns" ID="ID_216214421" CREATED="1396357696623" MODIFIED="1396357711346" NUMBERED="true">
<node TEXT="in rows  # &#x4f7f;&#x7528;cast&#xff0c;unstack" ID="ID_134088810" CREATED="1396407019016" MODIFIED="1396407914239"/>
</node>
<node TEXT="Multiple types in one table" ID="ID_412306006" CREATED="1396357722407" MODIFIED="1396357731065" NUMBERED="true">
<node TEXT="&#x6bcf;&#x79cd;&#x7c7b;&#x578b;&#x7684;&#x89c2;&#x5bdf;&#x5355;&#x5143;&#x9700;&#x8981;&#x88ab;&#x5b58;&#x653e;&#x5230;&#x540c;&#x4e00;&#x5f20;&#x8868;&#x4e2d;&#x3002;" ID="ID_49435159" CREATED="1396407916527" MODIFIED="1396407938013"/>
<node TEXT=" This is closely related to the idea of database normalisation, where each fact is expressed in only one place. If this is not done, it&#x2019;s possible for inconsistencies to occur." ID="ID_656377783" CREATED="1396407938969" MODIFIED="1396408006305"/>
<node TEXT="Normalisation is useful for tidying and eliminating inconsistencies." ID="ID_1071376236" CREATED="1396408017669" MODIFIED="1396408044091"/>
<node TEXT="However, there are few data analysis tools that work directly with relational data," ID="ID_752354685" CREATED="1396408044104" MODIFIED="1396408048174"/>
<node TEXT="analysis usually also requires denormalisation or the merging the datasets back into one table." ID="ID_227904654" CREATED="1396408068165" MODIFIED="1396408072101"/>
</node>
<node TEXT="One type in multiple tables" ID="ID_515058330" CREATED="1396357731630" MODIFIED="1396357752985" NUMBERED="true">
<node TEXT="1. Read the &#xfb01;les into a list of tables.&#xa;2. For each table, add a new column that records the original &#xfb01;le name (because the &#xfb01;le&#xa;name is often the value of an important variable).&#xa;3. Combine all tables into a single table." ID="ID_313207916" CREATED="1396413457661" MODIFIED="1396413462350"/>
<node TEXT="The plyr package" ID="ID_1494200975" CREATED="1396413792029" MODIFIED="1396413809847">
<node TEXT="paths &lt;- dir(&quot;data&quot;, pattern = &quot;\\.csv$&quot;, full.names = TRUE)" ID="ID_280700098" CREATED="1396413513385" MODIFIED="1396413530896" NUMBERED="true" MOVED="1396413815192">
<node TEXT="generates a vector of &#xfb01;le names in a directory (data/) which match a regular expression (ends in .csv)." ID="ID_1284575546" CREATED="1396413531027" MODIFIED="1396413535771"/>
</node>
<node TEXT="names(paths) &lt;- basename(paths)" ID="ID_440289240" CREATED="1396413547875" MODIFIED="1396413579438" NUMBERED="true" MOVED="1396413815194">
<node TEXT=" name each element of the vector with the name of the &#xfb01;le." ID="ID_1304620055" CREATED="1396413579448" MODIFIED="1396413649567"/>
</node>
<node TEXT="ldply(paths, read.csv, stringsAsFactors = FALSE)" ID="ID_574689961" CREATED="1396413651022" MODIFIED="1396413659501" NUMBERED="true" MOVED="1396413815214">
<node TEXT="ldply() loops over each path, reading in the csv &#xfb01;le and combining the results into a single data frame." ID="ID_1121687258" CREATED="1396413783460" MODIFIED="1396413787202"/>
</node>
</node>
</node>
</node>
<node TEXT="Tidy tools" POSITION="right" ID="ID_100880353" CREATED="1396357765534" MODIFIED="1396357777688" NUMBERED="true">
<edge COLOR="#ff00ff"/>
<node TEXT=" tidy tools, tools that take tidy datasets as input and return tidy datasets as output." ID="ID_685566037" CREATED="1396416342777" MODIFIED="1396416418603" MOVED="1396416506651">
<node TEXT="Tidy tools are useful because the output of one tool can be used as the input to another." ID="ID_360336651" CREATED="1396416418614" MODIFIED="1396416435996">
<node TEXT="This allows you to simply and easily compose multiple tools to solve a problem." ID="ID_1808734531" CREATED="1396416436006" MODIFIED="1396416439807"/>
</node>
<node TEXT="Tidy data also ensures that variables are stored in a consistent, explicit manner." ID="ID_382393872" CREATED="1396416442378" MODIFIED="1396416479402">
<node TEXT="This makes each tool simpler, because it doesn&#x2019;t need a Swiss Army knife of parameters for dealing with di&#xfb00;erent dataset structures." ID="ID_856716783" CREATED="1396416490578" MODIFIED="1396416493940"/>
</node>
</node>
<node TEXT="Tools can be messy for two reasons:" ID="ID_998937725" CREATED="1396416521721" MODIFIED="1396416537942">
<node TEXT="either they take messy datasets as input (messy-input tools)" ID="ID_1424457627" CREATED="1396416537951" MODIFIED="1396416546892"/>
<node TEXT="or they produce messy datasets as output (messy-output tools)" ID="ID_1532431713" CREATED="1396416546902" MODIFIED="1396416549166"/>
</node>
<node TEXT="Manipulation" ID="ID_1096028598" CREATED="1396357779990" MODIFIED="1396357795151" NUMBERED="true">
<node TEXT="&#x2022; Filter: subsetting or removing observations based on some condition." ID="ID_66036933" CREATED="1396417078435" MODIFIED="1396417078435"/>
<node TEXT="&#x2022; Transform: adding or modifying variables. These modi&#xfb01;cations can involve either a&#xa;single variable (e.g., log-transformation), or multiple variables (e.g., computing density&#xa;from weight and volume)." ID="ID_1758860058" CREATED="1396417169346" MODIFIED="1396417170962"/>
<node TEXT="&#x2022; Aggregate: collapsing multiple values into a single value (e.g., by summing or taking&#xa;means)." ID="ID_1966062708" CREATED="1396417152728" MODIFIED="1396417154967"/>
<node TEXT="&#x2022; Sort: changing the order of observations." ID="ID_20273284" CREATED="1396417078450" MODIFIED="1396417078450"/>
</node>
<node TEXT="Visualisation" ID="ID_1315541824" CREATED="1396357795159" MODIFIED="1396357802065" NUMBERED="true"/>
<node TEXT="Modeling" ID="ID_450464851" CREATED="1396357805366" MODIFIED="1396358102838" NUMBERED="true">
<node TEXT="Every statistical language has a way of describing a model as a connection between di&#xfb00;erent variables, a domain speci&#xfb01;c language that connects responses to predictors:" ID="ID_813927814" CREATED="1396419380847" MODIFIED="1396419384860">
<node TEXT="&#x2022; R (lm()): y ~ a + b + c * d" ID="ID_1796386089" CREATED="1396419399153" MODIFIED="1396419399153"/>
<node TEXT="&#x2022; SAS (PROC GLM): y = a + b + c * d" ID="ID_859106928" CREATED="1396419399153" MODIFIED="1396419399153"/>
<node TEXT="&#x2022; SPSS (glm): y BY a b c d / DESIGN a b c d c * d" ID="ID_1925378814" CREATED="1396419399155" MODIFIED="1396419399155"/>
<node TEXT="&#x2022; Stata (regress): y a b c # d" ID="ID_691353155" CREATED="1396419399157" MODIFIED="1396419399157"/>
</node>
</node>
</node>
<node TEXT="Case study" POSITION="right" ID="ID_1178848739" CREATED="1396358103458" MODIFIED="1396358145949" MOVED="1396358132536" NUMBERED="true">
<edge COLOR="#00ffff"/>
</node>
<node TEXT="Discussion" POSITION="right" ID="ID_1772552089" CREATED="1396358147986" MODIFIED="1396358165796" MOVED="1396358159745" NUMBERED="true">
<edge COLOR="#ffff00"/>
</node>
</node>
</map>
