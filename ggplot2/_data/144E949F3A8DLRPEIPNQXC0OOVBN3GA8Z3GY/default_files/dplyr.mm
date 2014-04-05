<map version="docear 1.1" dcr_id="1396234630110_6gwhmg7u9bfun5wingm4h6cfo" project="144E949F3A8DLRPEIPNQXC0OOVBN3GA8Z3GY" project_last_home="file:/D:/R-Scripts/ggplot2/">
<!--To view this file, download Docear - The Academic Literature Suite from http://www.docear.org -->
<node TEXT="dplyr" FOLDED="false" ID="ID_1435278191" CREATED="1396234630058" MODIFIED="1396234630060">
<hook NAME="AutomaticEdgeColor" COUNTER="6"/>
<hook NAME="MapStyle" layout="OUTLINE">
    <properties show_note_icons="true"/>

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
<node TEXT="data.table" POSITION="left" ID="ID_470885214" CREATED="1396320609731" MODIFIED="1396321486607">
<edge COLOR="#ff0000"/>
<node TEXT="tbl_df(x)" ID="ID_870763435" CREATED="1396322623104" MODIFIED="1396322650456">
<node TEXT="x  # data frame name" ID="ID_41263019" CREATED="1396322650473" MODIFIED="1396322669138"/>
</node>
<node TEXT="data.table(x)" ID="ID_1717429627" CREATED="1396343660979" MODIFIED="1396343900953"/>
<node TEXT="tables()" ID="ID_934495359" CREATED="1396343900961" MODIFIED="1396343914577"/>
<node TEXT="Keys" ID="ID_144442544" CREATED="1396343914585" MODIFIED="1396343951793">
<node TEXT="DT[&quot;b&quot;,mult=&quot;first&quot;]" ID="ID_1053551205" CREATED="1396343953013" MODIFIED="1396343953013"/>
<node TEXT="DT[&quot;b&quot;,mult=&quot;last&quot;]" ID="ID_336141503" CREATED="1396343966041" MODIFIED="1396343967296"/>
<node TEXT="setkey(DT,x,y)" ID="ID_1600275087" CREATED="1396344146358" MODIFIED="1396344147767">
<node TEXT="DT[J(&quot;R&quot;,&quot;h&quot;)]" ID="ID_1942070091" CREATED="1396344337115" MODIFIED="1396344337115">
<node TEXT="# binary search" ID="ID_1156866289" CREATED="1396344342679" MODIFIED="1396344342679"/>
</node>
</node>
<node TEXT="X[Y] is a join, looking up X&apos;s rows using Y (or Y&apos;s key if it has one) as an index." ID="ID_1267842420" CREATED="1396344529296" MODIFIED="1396344529296"/>
<node TEXT="Y[X] is a join, looking up Y&apos;s rows using X (or X&apos;s key if it has one) as an index" ID="ID_776374347" CREATED="1396344529297" MODIFIED="1396344529297"/>
<node TEXT="merge(X,Y)1 does both ways at the same time. The number of rows of X[Y] and Y[X] usually&#xa;di er; whereas the number of rows returned by merge(X,Y) and merge(Y,X) is the same." ID="ID_464130332" CREATED="1396344539802" MODIFIED="1396344541453"/>
<node TEXT="X[Y,j] in data.table does all that in one step for you. When you write X[Y,sum(foo*bar)], data.table&#xa;automatically inspects the j expression to see which columns it uses." ID="ID_1765026142" CREATED="1396355128283" MODIFIED="1396355144644"/>
</node>
<node TEXT="Fast grouping" ID="ID_1466939181" CREATED="1396355644327" MODIFIED="1396355651472">
<node TEXT="DT[,sum(v),by=x]" ID="ID_926418311" CREATED="1396355666406" MODIFIED="1396355666406"/>
<node TEXT="DT[,sum(v),by=&quot;x,y&quot;])" ID="ID_581892134" CREATED="1396356170947" MODIFIED="1396356319488"/>
<node TEXT="DT[,sum(v),by=list(month(dateCol),region)]" ID="ID_536334410" CREATED="1396356319499" MODIFIED="1396356556829"/>
</node>
</node>
<node TEXT="dplyr  implements the following verbs useful for data manipulation:" POSITION="left" ID="ID_66304024" CREATED="1396234698795" MODIFIED="1396234698798">
<edge COLOR="#7c0000"/>
</node>
<node TEXT="&#x2022;  filter() : focus on a subset of rows" POSITION="right" ID="ID_1073300666" CREATED="1396234698812" MODIFIED="1396320646678" MOVED="1396320630754">
<edge COLOR="#007c00"/>
<node TEXT="filter(hflights_df, Month == 1, DayofMonth == 1)" ID="ID_676188015" CREATED="1396322678687" MODIFIED="1396322710928"/>
<node TEXT="filter(hflights_df, Month == 1 | Month == 2)" ID="ID_18584115" CREATED="1396322717798" MODIFIED="1396322718976"/>
</node>
<node TEXT="&#x2022;  arrange() : re-order the rows" POSITION="right" ID="ID_1266239429" CREATED="1396234698840" MODIFIED="1396234698848" MOVED="1396320634913">
<edge COLOR="#7c7c00"/>
<node TEXT="arrange(hflights_df, DayofMonth, Month, Year)" ID="ID_1472657942" CREATED="1396322809136" MODIFIED="1396322809136"/>
<node TEXT="arrange(hflights_df, desc(ArrDelay))" ID="ID_1234853264" CREATED="1396322817822" MODIFIED="1396334996689"/>
</node>
<node TEXT="&#x2022;  select() : focus on a subset of variables" POSITION="left" ID="ID_1536015362" CREATED="1396234698795" MODIFIED="1396234698814">
<edge COLOR="#00007c"/>
<node TEXT="select(hflights_df, Year, Month, DayOfWeek)" ID="ID_1920634888" CREATED="1396335010222" MODIFIED="1396335010222"/>
<node TEXT="select(hflights_df, Year:DayOfWeek)" ID="ID_161506609" CREATED="1396335016647" MODIFIED="1396335033493"/>
<node TEXT="select(hflights_df, -(Year:DayOfWeek))" ID="ID_1095954528" CREATED="1396335033506" MODIFIED="1396337768414"/>
</node>
<node TEXT="&#x2022;  mutate() : add new columns" POSITION="left" ID="ID_1696511246" CREATED="1396234698824" MODIFIED="1396234698833">
<edge COLOR="#7c007c"/>
<node TEXT="mutate(hflights_df,&#xa;  gain = ArrDelay - DepDelay,&#xa;  speed = Distance / AirTime * 60)" ID="ID_1987010910" CREATED="1396337769730" MODIFIED="1396337792747"/>
<node TEXT="mutate(hflights_df,&#xa;  gain = ArrDelay - DepDelay,&#xa;  gain_per_hour = gain / (AirTime / 60)&#xa;)" ID="ID_1442389599" CREATED="1396337792769" MODIFIED="1396337841261"/>
</node>
<node TEXT="&#x2022;  summarise() : reduce each group to a smaller number of summary statistics" POSITION="left" ID="ID_255933193" CREATED="1396234698832" MODIFIED="1396234698842">
<edge COLOR="#007c7c"/>
<node TEXT="summarise(hflights_df,&#xa;  delay = mean(DepDelay, na.rm = TRUE))" ID="ID_1757588688" CREATED="1396338681416" MODIFIED="1396338906024"/>
<node TEXT="functions in base R like min(), max(), mean(), sum(), sd(), median(), and IQR()" ID="ID_1396795630" CREATED="1396339283017" MODIFIED="1396339283017"/>
<node TEXT="a handful of others:" ID="ID_553949811" CREATED="1396339295443" MODIFIED="1396339295443">
<node TEXT="n(): number of observations in the current group" ID="ID_1841599201" CREATED="1396339295443" MODIFIED="1396339295443" MOVED="1396339305301"/>
<node TEXT="n_distinct(x): count the number of unique values in x." ID="ID_1991165315" CREATED="1396339295444" MODIFIED="1396339295444" MOVED="1396339305324"/>
<node TEXT="first(x), last(x) and nth(x, n) - these work similarly to x[1], x[length(x)], and x[n] but give you more control of the result if the value isn&apos;t present." ID="ID_754760796" CREATED="1396339295444" MODIFIED="1396339295444" MOVED="1396339305422"/>
</node>
</node>
<node TEXT="group_by()" POSITION="left" ID="ID_982760528" CREATED="1396338946949" MODIFIED="1396339176037">
<edge COLOR="#00ff00"/>
<node TEXT="select() is unaffected by grouping" ID="ID_325889803" CREATED="1396339187720" MODIFIED="1396339187720"/>
<node TEXT="grouped arrange() orders first by grouping variables" ID="ID_403343769" CREATED="1396339201273" MODIFIED="1396339201273"/>
<node TEXT="Group-wise mutate() and filter() are most useful in conjunction with window functions" ID="ID_1276786743" CREATED="1396339214407" MODIFIED="1396339214407"/>
<node TEXT="summarise() is easy to understand and very useful" ID="ID_811414593" CREATED="1396339225266" MODIFIED="1396339225266">
<node TEXT="When you group by multiple variables, each summary peels off one level of the grouping." ID="ID_779932643" CREATED="1396339354921" MODIFIED="1396339356395"/>
</node>
</node>
<node TEXT="Chaining %.%" POSITION="left" ID="ID_1806140299" CREATED="1396339479520" MODIFIED="1396339510909">
<edge COLOR="#ff00ff"/>
<node TEXT="x %.% f(y) turns into f(x, y)" ID="ID_1705984187" CREATED="1396339526079" MODIFIED="1396339534712"/>
</node>
<node TEXT="do()" POSITION="left" ID="ID_343948275" CREATED="1396339647278" MODIFIED="1396339817725">
<edge COLOR="#00ffff"/>
<node TEXT="do()  function  # which applies any R function to each group of the data." ID="ID_198880431" CREATED="1396339853116" MODIFIED="1396339869148" MOVED="1396339872175">
<node TEXT="batting_dt &lt;- tbl_dt(batting_df)" ID="ID_842143560" CREATED="1396339817734" MODIFIED="1396339824413" MOVED="1396339873892"/>
<node TEXT="years_dt &lt;- group_by(batting_dt, yearID)" ID="ID_428498559" CREATED="1396339824421" MODIFIED="1396339829596" MOVED="1396339875099"/>
<node TEXT="system.time(do(years_dt, failwith(NULL, lm), formula = R ~ AB))" ID="ID_645562044" CREATED="1396339829605" MODIFIED="1396339831053" MOVED="1396339876564"/>
<node TEXT="mod2 &lt;- do(years_df, biglm, formula = R ~ AB)" ID="ID_1879575977" CREATED="1396339937156" MODIFIED="1396339940748">
<node TEXT="biglm creates model objects that are considerably smaller" ID="ID_490313158" CREATED="1396339940756" MODIFIED="1396339955547" MOVED="1396339957565"/>
</node>
</node>
</node>
<node TEXT="Binary Verbs" POSITION="left" ID="ID_933707802" CREATED="1396340177616" MODIFIED="1396340185087">
<edge COLOR="#ffff00"/>
<node TEXT="inner_join(x, y) : matching x + y" ID="ID_719649886" CREATED="1396340188229" MODIFIED="1396340188229">
<node TEXT="inner_join(x, y, by = NULL, copy = FALSE, ...)" ID="ID_1850051858" CREATED="1396340366066" MODIFIED="1396340366066"/>
</node>
<node TEXT="left_join(x, y) : all x + matching y" ID="ID_1147620685" CREATED="1396340188229" MODIFIED="1396340194906"/>
<node TEXT="semi_join(x, y) : all x with match in y" ID="ID_1389096128" CREATED="1396340188235" MODIFIED="1396340198495"/>
<node TEXT="anti_join(x, y) : all x without match in y" ID="ID_1994181420" CREATED="1396340188238" MODIFIED="1396340201338"/>
</node>
</node>
</map>
