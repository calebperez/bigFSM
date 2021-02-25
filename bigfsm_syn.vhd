library IEEE;
use IEEE.std_logic_1164.all;

entity inv is
port(inb: in STD_logic;
     outb: out STD_Logic);
end inv;
architecture structure of inv is
begin
outb <= not(inb);
end structure;

library IEEE;
use IEEE.std_logic_1164.all;

entity nand2 is
port(a, b: in STD_logic;
	outb: out STD_Logic);
end nand2;
architecture structure of nand2 is
begin
outb <= not(a and b);
end structure;

library IEEE;
use IEEE.std_logic_1164.all;

entity nand3 is
port(a, b, c: in STD_logic;
           outb: out STD_Logic);
end nand3 ;
architecture structure of nand3 is
begin
outb <= not(a and b and c);
end structure;

library IEEE;
use IEEE.std_logic_1164.all;

entity nand4 is
port(a, b, c, d: in STD_logic;
	      outb: out STD_Logic);
end nand4 ;
architecture structure of nand4 is
begin
outb <= not(a and b and c and d);
end structure;

library IEEE;
use IEEE.std_logic_1164.all;

entity nor2 is
port(a, b: in STD_logic;
	outb: out STD_Logic);
end nor2 ;
architecture structure of nor2 is
begin
outb <= not(a or b);
end structure;

library IEEE;
use IEEE.std_logic_1164.all;

entity nor3 is
port(a, b, c: in STD_logic;
	   outb: out STD_Logic);
end nor3 ;
architecture structure of nor3 is
begin
outb <= not(a or b or c);
end structure;

library IEEE;
use IEEE.std_logic_1164.all;

entity xor2 is
port(a, b: in STD_logic;
        c: out STD_Logic);
end xor2 ;
architecture structure of xor2 is
begin
c <= (a xor b);
end structure;

library IEEE;
use IEEE.std_logic_1164.all;

entity aoi12 is
port(a, b, c: in STD_logic;
	   outb: out STD_Logic);
end aoi12 ;
architecture structure of aoi12 is
begin
outb <= not(a or (b and c));
end structure;

library IEEE;
use IEEE.std_logic_1164.all;

entity aoi22 is
port(a, b, c, d: in STD_logic;
              outb: out STD_Logic);
end aoi22 ;
architecture structure of aoi22 is
begin
outb <= not((a and b) or (c and d));
end structure;


library IEEE;
use IEEE.std_logic_1164.all;

entity oai12 is
port(a, b, c: in STD_logic;
	   outb: out STD_Logic);
end oai12;
architecture structure of oai12 is
begin
outb <= not(a and (b or c));
end structure;

library IEEE;
use IEEE.std_logic_1164.all;

entity oai22 is
port(a, b, c, d: in STD_logic;
              outb: out STD_Logic);
end oai22; 
architecture structure of oai22 is
begin
outb <= not((a or b) and (c or d));
end structure;

library IEEE;
use IEEE.std_logic_1164.all;

entity dff is
port(d, gclk, rnot: in STD_logic;
q: out STD_Logic);
end dff;
architecture structure of dff is
begin
start: process(gclk,rnot)
begin
if ( rising_edge(gclk) or rnot = '0') then
	if (rnot = '0') then
	q <= '0';
	else 
	q <= d;
	end if;
end if;
end process;
end structure;







library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_bigFSM_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_bigFSM_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_bigFSM_1.all;

entity bigFSM_1 is

   port( clock, reset, P, Q, S : in std_logic;  R : out std_logic_vector (4 
         downto 0));

end bigFSM_1;

architecture SYN_RTL of bigFSM_1 is

   component inv
      port( inb : in std_logic;  outb : out std_logic);
   end component;
   
   component nor2
      port( a, b : in std_logic;  outb : out std_logic);
   end component;
   
   component nand2
      port( a, b : in std_logic;  outb : out std_logic);
   end component;
   
   component oai12
      port( b, c, a : in std_logic;  outb : out std_logic);
   end component;
   
   component nor3
      port( a, b, c : in std_logic;  outb : out std_logic);
   end component;
   
   component nand3
      port( a, b, c : in std_logic;  outb : out std_logic);
   end component;
   
   component nand4
      port( a, b, c, d : in std_logic;  outb : out std_logic);
   end component;
   
   component aoi12
      port( b, c, a : in std_logic;  outb : out std_logic);
   end component;
   
   component aoi22
      port( a, b, c, d : in std_logic;  outb : out std_logic);
   end component;
   
   component oai22
      port( a, b, c, d : in std_logic;  outb : out std_logic);
   end component;
   
   component dff
      port( d, gclk, rnot : in std_logic;  q : out std_logic);
   end component;
   
   signal State_4_port, State_3_port, State_2_port, State_1_port, State_0_port,
      N95, N96, N97, N99, N100, N101, N102, N103, N104, N105, N106, N107, N109,
      N110, N111, N112, N113, N114, N115, N116, N117, N119, N120, N121, N122, 
      N123, N124, N125, N126, N127, N129, N130, N131, N132, N134, N135, N136, 
      N137, N138, N139, N140, N141, N143, N144, N145, N146, N147, N148, N149, 
      N150, N151, N153, N154, N155, N156, N157, N158, N159, N160, N161, N164, 
      N165, N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, 
      N177, N178, N179, N180, N181, N183, N184, N185, N186, N187, N188, N189, 
      N190, N191, N193, N194, N195, N196, N197, N198, N199, N200, N201, N203, 
      N204, N205, N206, N207, N208, N209, N210, N211, N214, N215, N216, N217, 
      N219, N220, N221, N222, N223, N224, N225, N226, N227, N228, N229, N230, 
      N231, N234, N235, N236, N237, N238, N239, N240, N241, N242, N243, N244, 
      N245, N246, N247, N248, N249, N250, N425, N427, N432, N433, N434, N435, 
      N589, N588, N587, N584, N583, N582, N579, N578, N577, N574, N573, N572, 
      N570, N569, N568, N567, N565, N564, N563, N562, N560, N559, N558, N557, 
      N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, 
      N542, N541, N540, N539, N538, N537, N536, N535, N534, N533, N532, N531, 
      N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, 
      N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508, N507, 
      N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, N495, 
      N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, N484, N483, 
      N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, 
      N470, N469, N468, N467, N466, N465, N464, N463, N462, N461, N460, N459, 
      N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, 
      N446, N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N430, 
      N429, N428, N424, N419, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12
      , n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, 
      n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, 
      n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70
      , n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, 
      n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95_port, n96_port, 
      n97_port, n98, n99_port, n100_port, n101_port, n102_port, n103_port, 
      n104_port, n105_port, n106_port, n107_port, n108, n109_port, n110_port, 
      n111_port, n112_port, n113_port, n114_port, n115_port, n116_port, 
      n117_port, n118, n119_port, n120_port, n121_port, n122_port, n123_port, 
      n124_port, n125_port, n126_port, n127_port, n128, n129_port, n130_port, 
      n131_port, n132_port, n133, n134_port, n135_port, n136_port, n137_port, 
      n138_port, n139_port, n140_port, n141_port, n142, n143_port, n144_port, 
      n145_port, n146_port, n147_port, n148_port, n149_port, n150_port, 
      n151_port, n152, n153_port, n154_port, n155_port, n156_port, n157_port, 
      n158_port, n159_port, n160_port, n161_port, n162, n163, n164_port, 
      n165_port, n166_port, n167_port, n168_port, n169_port, n170_port, 
      n171_port, n172_port, n173_port, n174_port, n175_port, n176_port, 
      n177_port, n178_port, n179_port, n180_port, n181_port, n182, n183_port, 
      n184_port, n185_port, n186_port, n187_port, n188_port, n189_port, 
      n190_port, n191_port, n192, n193_port, n194_port, n195_port, n196_port, 
      n197_port, n198_port, n199_port, n200_port, n201_port, n202, n203_port, 
      n204_port, n205_port, n206_port, n207_port, n208_port, n209_port, 
      n210_port, n211_port, n212, n213, n214_port, n215_port, n216_port, 
      n217_port, n218, n219_port, n220_port, n221_port, n222_port, n223_port, 
      n224_port, n225_port, n226_port, n227_port, n228_port, n229_port, 
      n230_port, n231_port, n232, n233, n234_port, n235_port, n236_port, 
      n237_port, n238_port, n239_port, n240_port, n241_port, n242_port, 
      n243_port, n244_port, n245_port, n246_port, n247_port, n248_port, 
      n249_port, n250_port, n251, n252, n253, n254, n255, n256, n257, n258, 
      n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, 
      n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, 
      n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, 
      n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, 
      n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, 
      n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, 
      n331, n332, n333, n334, n335, n336, n337, n338, n339, n340 : std_logic;

begin
   
   C2616 : nand2 port map( a => N427, b => N425, outb => n80);
   C2612 : nand2 port map( a => P, b => N425, outb => n81);
   I_71 : inv port map( inb => N247, outb => N248);
   I_70 : inv port map( inb => N242, outb => N243);
   I_69 : inv port map( inb => N237, outb => N238);
   I_67 : inv port map( inb => N227, outb => N228);
   I_66 : inv port map( inb => N222, outb => N223);
   I_63 : inv port map( inb => N207, outb => N208);
   I_56 : inv port map( inb => N172, outb => N173);
   I_55 : inv port map( inb => N167, outb => N168);
   I_53 : inv port map( inb => N157, outb => N158);
   I_49 : inv port map( inb => N137, outb => N138);
   I_46 : inv port map( inb => N122, outb => N123);
   I_44 : inv port map( inb => N112, outb => N113);
   I_42 : inv port map( inb => N102, outb => N103);
   I_2 : inv port map( inb => P, outb => N427);
   I_0 : inv port map( inb => Q, outb => N425);
   C246 : nand2 port map( a => N249, b => N250, outb => n223_port);
   C245 : nand2 port map( a => State_2_port, b => State_1_port, outb => n340);
   C244 : nand2 port map( a => State_4_port, b => State_3_port, outb => n339);
   C241 : nand2 port map( a => n337, b => n338, outb => N246);
   C240 : nand2 port map( a => State_2_port, b => State_1_port, outb => N245);
   C239 : nand2 port map( a => State_4_port, b => State_3_port, outb => N244);
   C232 : nand2 port map( a => n335, b => n336, outb => N241);
   C231 : nand2 port map( a => State_2_port, b => N435, outb => N240);
   C230 : nand2 port map( a => State_4_port, b => State_3_port, outb => N239);
   C223 : nand2 port map( a => n333, b => n334, outb => N236);
   C222 : nand2 port map( a => State_2_port, b => N435, outb => N235);
   C221 : nand2 port map( a => State_4_port, b => State_3_port, outb => N234);
   C215 : nand2 port map( a => n331, b => n332, outb => N231);
   C214 : nand2 port map( a => N434, b => State_1_port, outb => N230);
   C213 : nand2 port map( a => State_4_port, b => State_3_port, outb => N229);
   C206 : nand2 port map( a => n329, b => n330, outb => N226);
   C205 : nand2 port map( a => N434, b => State_1_port, outb => N225);
   C204 : nand2 port map( a => State_4_port, b => State_3_port, outb => N224);
   C198 : nand2 port map( a => n327, b => n328, outb => N221);
   C197 : nand2 port map( a => N434, b => N435, outb => N220);
   C196 : nand2 port map( a => State_4_port, b => State_3_port, outb => N219);
   C190 : nand2 port map( a => n325, b => n326, outb => N216);
   C189 : nand2 port map( a => N434, b => N435, outb => N215);
   C188 : nand2 port map( a => State_4_port, b => State_3_port, outb => N214);
   C183 : nand2 port map( a => n323, b => n324, outb => N211);
   C182 : nand2 port map( a => State_2_port, b => State_1_port, outb => N210);
   C181 : nand2 port map( a => State_4_port, b => N433, outb => N209);
   C174 : nand2 port map( a => n321, b => n322, outb => N206);
   C173 : nand2 port map( a => State_2_port, b => State_1_port, outb => N205);
   C172 : nand2 port map( a => State_4_port, b => N433, outb => N204);
   C166 : nand2 port map( a => n319, b => n320, outb => N201);
   C165 : nand2 port map( a => State_2_port, b => N435, outb => N200);
   C164 : nand2 port map( a => State_4_port, b => N433, outb => N199);
   C158 : nand2 port map( a => n317, b => n318, outb => N196);
   C157 : nand2 port map( a => State_2_port, b => N435, outb => N195);
   C156 : nand2 port map( a => State_4_port, b => N433, outb => N194);
   C151 : nand2 port map( a => n315, b => n316, outb => N191);
   C150 : nand2 port map( a => N434, b => State_1_port, outb => N190);
   C149 : nand2 port map( a => State_4_port, b => N433, outb => N189);
   C143 : nand2 port map( a => n313, b => n314, outb => N186);
   C142 : nand2 port map( a => N434, b => State_1_port, outb => N185);
   C141 : nand2 port map( a => State_4_port, b => N433, outb => N184);
   C136 : nand2 port map( a => n311, b => n312, outb => N181);
   C135 : nand2 port map( a => N434, b => N435, outb => N180);
   C134 : nand2 port map( a => State_4_port, b => N433, outb => N179);
   C129 : nand2 port map( a => n309, b => n310, outb => N176);
   C128 : nand2 port map( a => N434, b => N435, outb => N175);
   C127 : nand2 port map( a => State_4_port, b => N433, outb => N174);
   C123 : nand2 port map( a => n307, b => n308, outb => N171);
   C122 : nand2 port map( a => State_2_port, b => State_1_port, outb => N170);
   C121 : nand2 port map( a => N432, b => State_3_port, outb => N169);
   C114 : nand2 port map( a => n305, b => n306, outb => N166);
   C113 : nand2 port map( a => State_2_port, b => State_1_port, outb => N165);
   C112 : nand2 port map( a => N432, b => State_3_port, outb => N164);
   C106 : nand2 port map( a => n303, b => n304, outb => N161);
   C105 : nand2 port map( a => State_2_port, b => N435, outb => N160);
   C104 : nand2 port map( a => N432, b => State_3_port, outb => N159);
   C98 : nand2 port map( a => n301, b => n302, outb => N156);
   C97 : nand2 port map( a => State_2_port, b => N435, outb => N155);
   C96 : nand2 port map( a => N432, b => State_3_port, outb => N154);
   C91 : nand2 port map( a => n299, b => n300, outb => N151);
   C90 : nand2 port map( a => N434, b => State_1_port, outb => N150);
   C89 : nand2 port map( a => N432, b => State_3_port, outb => N149);
   C83 : nand2 port map( a => n297, b => n298, outb => N146);
   C82 : nand2 port map( a => N434, b => State_1_port, outb => N145);
   C81 : nand2 port map( a => N432, b => State_3_port, outb => N144);
   C76 : nand2 port map( a => n295, b => n296, outb => N141);
   C75 : nand2 port map( a => N434, b => N435, outb => N140);
   C74 : nand2 port map( a => N432, b => State_3_port, outb => N139);
   C69 : nand2 port map( a => n293, b => n294, outb => N136);
   C68 : nand2 port map( a => N434, b => N435, outb => N135);
   C67 : nand2 port map( a => N432, b => State_3_port, outb => N134);
   C63 : nand2 port map( a => n291, b => n292, outb => N131);
   C62 : nand2 port map( a => State_2_port, b => State_1_port, outb => N130);
   C61 : nand2 port map( a => N432, b => N433, outb => N129);
   C55 : nand2 port map( a => n289, b => n290, outb => N126);
   C54 : nand2 port map( a => State_2_port, b => State_1_port, outb => N125);
   C53 : nand2 port map( a => N432, b => N433, outb => N124);
   C48 : nand2 port map( a => n287, b => n288, outb => N121);
   C47 : nand2 port map( a => State_2_port, b => N435, outb => N120);
   C46 : nand2 port map( a => N432, b => N433, outb => N119);
   C41 : nand2 port map( a => n285, b => n286, outb => N116);
   C40 : nand2 port map( a => State_2_port, b => N435, outb => N115);
   C39 : nand2 port map( a => N432, b => N433, outb => N114);
   C35 : nand2 port map( a => n283, b => n284, outb => N111);
   C34 : nand2 port map( a => N434, b => State_1_port, outb => N110);
   C33 : nand2 port map( a => N432, b => N433, outb => N109);
   C28 : nand2 port map( a => n281, b => n282, outb => N106);
   C27 : nand2 port map( a => N434, b => State_1_port, outb => N105);
   C26 : nand2 port map( a => N432, b => N433, outb => N104);
   C22 : nand2 port map( a => n279, b => n280, outb => N101);
   C21 : nand2 port map( a => N434, b => N435, outb => N100);
   C20 : nand2 port map( a => N432, b => N433, outb => N99);
   C17 : nand2 port map( a => N95, b => N96, outb => n224_port);
   C16 : nand2 port map( a => N434, b => N435, outb => n278);
   C15 : nand2 port map( a => N432, b => N433, outb => n277);
   C2317 : nand2 port map( a => State_0_port, b => n111_port, outb => N535);
   C2316 : nand2 port map( a => State_1_port, b => n112_port, outb => N534);
   C2315 : nand2 port map( a => N434, b => n113_port, outb => N533);
   I_5 : inv port map( inb => State_2_port, outb => N434);
   C2314 : nand2 port map( a => State_3_port, b => N432, outb => N532);
   I_3 : inv port map( inb => State_4_port, outb => N432);
   C2324 : nand2 port map( a => N441, b => n108, outb => N540);
   C2323 : nand2 port map( a => State_1_port, b => n109_port, outb => N539);
   C2322 : nand2 port map( a => N434, b => n110_port, outb => N538);
   C2321 : nand2 port map( a => State_3_port, b => N432, outb => N537);
   C2331 : nand2 port map( a => State_0_port, b => n105_port, outb => N545);
   C2330 : nand2 port map( a => N435, b => n106_port, outb => N544);
   I_6 : inv port map( inb => State_1_port, outb => N435);
   C2329 : nand2 port map( a => N434, b => n107_port, outb => N543);
   C2328 : nand2 port map( a => State_3_port, b => N432, outb => N542);
   C2337 : nand2 port map( a => N441, b => n102_port, outb => N550);
   C2336 : nand2 port map( a => N435, b => n103_port, outb => N549);
   C2335 : nand2 port map( a => N434, b => n104_port, outb => N548);
   C2334 : nand2 port map( a => State_3_port, b => N432, outb => N547);
   C2286 : nand2 port map( a => State_0_port, b => n123_port, outb => N515);
   C2285 : nand2 port map( a => State_1_port, b => n124_port, outb => N514);
   C2284 : nand2 port map( a => State_2_port, b => n125_port, outb => N513);
   C2283 : nand2 port map( a => State_3_port, b => N432, outb => N512);
   C2294 : nand2 port map( a => N441, b => n120_port, outb => N520);
   C2293 : nand2 port map( a => State_1_port, b => n121_port, outb => N519);
   C2292 : nand2 port map( a => State_2_port, b => n122_port, outb => N518);
   C2291 : nand2 port map( a => State_3_port, b => N432, outb => N517);
   C2302 : nand2 port map( a => State_0_port, b => n117_port, outb => N525);
   C2301 : nand2 port map( a => N435, b => n118, outb => N524);
   C2300 : nand2 port map( a => State_2_port, b => n119_port, outb => N523);
   C2299 : nand2 port map( a => State_3_port, b => N432, outb => N522);
   C2309 : nand2 port map( a => N441, b => n114_port, outb => N530);
   C2308 : nand2 port map( a => N435, b => n115_port, outb => N529);
   C2307 : nand2 port map( a => State_2_port, b => n116_port, outb => N528);
   C2306 : nand2 port map( a => State_3_port, b => N432, outb => N527);
   C2359 : nand2 port map( a => State_0_port, b => n94, outb => N565);
   C2358 : nand2 port map( a => N435, b => n95_port, outb => N564);
   C2357 : nand2 port map( a => State_2_port, b => n96_port, outb => N563);
   C2356 : nand2 port map( a => N433, b => N432, outb => N562);
   I_4 : inv port map( inb => State_3_port, outb => N433);
   C2365 : nand2 port map( a => N441, b => n91, outb => N570);
   C2364 : nand2 port map( a => N435, b => n92, outb => N569);
   C2363 : nand2 port map( a => State_2_port, b => n93, outb => N568);
   C2362 : nand2 port map( a => N433, b => N432, outb => N567);
   C2352 : nand2 port map( a => N441, b => n97_port, outb => N560);
   C2351 : nand2 port map( a => State_1_port, b => n98, outb => N559);
   C2350 : nand2 port map( a => State_2_port, b => n99_port, outb => N558);
   C2349 : nand2 port map( a => N433, b => N432, outb => N557);
   C2344 : nand2 port map( a => State_1_port, b => n100_port, outb => N554);
   C2343 : nand2 port map( a => State_2_port, b => n101_port, outb => N553);
   C2342 : nand2 port map( a => N433, b => N432, outb => N552);
   C2371 : nand2 port map( a => State_1_port, b => n89, outb => N574);
   C2370 : nand2 port map( a => N434, b => n90, outb => N573);
   C2369 : nand2 port map( a => N433, b => N432, outb => N572);
   C2377 : nand2 port map( a => State_1_port, b => n87, outb => N579);
   C2376 : nand2 port map( a => N434, b => n88, outb => N578);
   C2375 : nand2 port map( a => N433, b => N432, outb => N577);
   C2383 : nand2 port map( a => N435, b => n85, outb => N584);
   C2382 : nand2 port map( a => N434, b => n86, outb => N583);
   C2381 : nand2 port map( a => N433, b => N432, outb => N582);
   C2388 : nand2 port map( a => N435, b => n83, outb => N589);
   C2387 : nand2 port map( a => N434, b => n84, outb => N588);
   C2386 : nand2 port map( a => N433, b => N432, outb => N587);
   C2160 : nand2 port map( a => State_0_port, b => N430, outb => n174_port);
   C2159 : nand2 port map( a => State_1_port, b => N429, outb => n171_port);
   C2158 : nand2 port map( a => State_2_port, b => N428, outb => n172_port);
   C2157 : nand2 port map( a => State_3_port, b => State_4_port, outb => 
                           n173_port);
   I_19 : inv port map( inb => N495, outb => N496);
   C2257 : nand2 port map( a => State_0_port, b => n135_port, outb => N495);
   C2256 : nand2 port map( a => State_1_port, b => n136_port, outb => N494);
   C2255 : nand2 port map( a => N434, b => n137_port, outb => N493);
   C2254 : nand2 port map( a => N433, b => State_4_port, outb => N492);
   I_20 : inv port map( inb => N500, outb => N501);
   C2264 : nand2 port map( a => N441, b => n132_port, outb => N500);
   C2263 : nand2 port map( a => State_1_port, b => n133, outb => N499);
   C2262 : nand2 port map( a => N434, b => n134_port, outb => N498);
   C2261 : nand2 port map( a => N433, b => State_4_port, outb => N497);
   I_21 : inv port map( inb => N505, outb => N506);
   C2271 : nand2 port map( a => State_0_port, b => n129_port, outb => N505);
   C2270 : nand2 port map( a => N435, b => n130_port, outb => N504);
   C2269 : nand2 port map( a => N434, b => n131_port, outb => N503);
   C2268 : nand2 port map( a => N433, b => State_4_port, outb => N502);
   I_22 : inv port map( inb => N510, outb => N511);
   C2277 : nand2 port map( a => N441, b => n126_port, outb => N510);
   C2276 : nand2 port map( a => N435, b => n127_port, outb => N509);
   C2275 : nand2 port map( a => N434, b => n128, outb => N508);
   C2274 : nand2 port map( a => N433, b => State_4_port, outb => N507);
   I_7 : inv port map( inb => N439, outb => N440);
   C2168 : nand2 port map( a => N441, b => n168_port, outb => N439);
   C2167 : nand2 port map( a => State_1_port, b => n169_port, outb => N438);
   C2166 : nand2 port map( a => State_2_port, b => n170_port, outb => N437);
   C2165 : nand2 port map( a => State_3_port, b => State_4_port, outb => N436);
   I_15 : inv port map( inb => N475, outb => N476);
   C2226 : nand2 port map( a => State_0_port, b => n147_port, outb => N475);
   C2225 : nand2 port map( a => State_1_port, b => n148_port, outb => N474);
   C2224 : nand2 port map( a => State_2_port, b => n149_port, outb => N473);
   C2223 : nand2 port map( a => N433, b => State_4_port, outb => N472);
   I_16 : inv port map( inb => N480, outb => N481);
   C2234 : nand2 port map( a => N441, b => n144_port, outb => N480);
   C2233 : nand2 port map( a => State_1_port, b => n145_port, outb => N479);
   C2232 : nand2 port map( a => State_2_port, b => n146_port, outb => N478);
   C2231 : nand2 port map( a => N433, b => State_4_port, outb => N477);
   I_17 : inv port map( inb => N485, outb => N486);
   C2242 : nand2 port map( a => State_0_port, b => n141_port, outb => N485);
   C2241 : nand2 port map( a => N435, b => n142, outb => N484);
   C2240 : nand2 port map( a => State_2_port, b => n143_port, outb => N483);
   C2239 : nand2 port map( a => N433, b => State_4_port, outb => N482);
   I_18 : inv port map( inb => N490, outb => N491);
   C2249 : nand2 port map( a => N441, b => n138_port, outb => N490);
   C2248 : nand2 port map( a => N435, b => n139_port, outb => N489);
   C2247 : nand2 port map( a => State_2_port, b => n140_port, outb => N488);
   C2246 : nand2 port map( a => N433, b => State_4_port, outb => N487);
   I_13 : inv port map( inb => N465, outb => N466);
   C2210 : nand2 port map( a => State_0_port, b => n153_port, outb => N465);
   C2209 : nand2 port map( a => N435, b => n154_port, outb => N464);
   C2208 : nand2 port map( a => N434, b => n155_port, outb => N463);
   C2207 : nand2 port map( a => State_3_port, b => State_4_port, outb => N462);
   I_14 : inv port map( inb => N470, outb => N471);
   C2217 : nand2 port map( a => N441, b => n150_port, outb => N470);
   C2216 : nand2 port map( a => N435, b => n151_port, outb => N469);
   C2215 : nand2 port map( a => N434, b => n152, outb => N468);
   C2214 : nand2 port map( a => State_3_port, b => State_4_port, outb => N467);
   I_12 : inv port map( inb => N460, outb => N461);
   C2202 : nand2 port map( a => N441, b => n156_port, outb => N460);
   C2201 : nand2 port map( a => State_1_port, b => n157_port, outb => N459);
   C2200 : nand2 port map( a => N434, b => n158_port, outb => N458);
   C2199 : nand2 port map( a => State_3_port, b => State_4_port, outb => N457);
   I_10 : inv port map( inb => N450, outb => N451);
   C2185 : nand2 port map( a => N441, b => n162, outb => N450);
   C2184 : nand2 port map( a => N435, b => n163, outb => N449);
   C2183 : nand2 port map( a => State_2_port, b => n164_port, outb => N448);
   C2182 : nand2 port map( a => State_3_port, b => State_4_port, outb => N447);
   I_11 : inv port map( inb => N455, outb => N456);
   C2194 : nand2 port map( a => State_0_port, b => n159_port, outb => N455);
   C2193 : nand2 port map( a => State_1_port, b => n160_port, outb => N454);
   C2192 : nand2 port map( a => N434, b => n161_port, outb => N453);
   C2191 : nand2 port map( a => State_3_port, b => State_4_port, outb => N452);
   I_9 : inv port map( inb => N445, outb => N446);
   C2177 : nand2 port map( a => State_0_port, b => n165_port, outb => N445);
   C2176 : nand2 port map( a => N435, b => n166_port, outb => N444);
   C2175 : nand2 port map( a => State_2_port, b => n167_port, outb => N443);
   C2174 : nand2 port map( a => State_3_port, b => State_4_port, outb => N442);
   State_reg_0_inst : dff port map( d => n221_port, gclk => clock, rnot => n82,
                           q => State_0_port);
   State_reg_1_inst : dff port map( d => n220_port, gclk => clock, rnot => n82,
                           q => State_1_port);
   State_reg_2_inst : dff port map( d => n219_port, gclk => clock, rnot => n82,
                           q => State_2_port);
   State_reg_3_inst : dff port map( d => n218, gclk => clock, rnot => n82, q =>
                           State_3_port);
   State_reg_4_inst : dff port map( d => n217_port, gclk => clock, rnot => n82,
                           q => State_4_port);
   U3 : oai22 port map( a => n1, b => N432, c => n2, d => n3, outb => n217_port
                           );
   U4 : nor2 port map( a => n4, b => n5, outb => n2);
   U5 : nand4 port map( a => n6, b => N217, c => n7, d => n8, outb => n5);
   U6 : nand2 port map( a => n9, b => n225_port, outb => n8);
   U7 : nor2 port map( a => N198, b => N188, outb => n7);
   U8 : nand3 port map( a => n10, b => n11, c => n12, outb => n4);
   U9 : nor3 port map( a => N203, b => N183, c => N193, outb => n12);
   U10 : oai22 port map( a => n1, b => N433, c => n13, d => n3, outb => n218);
   U11 : nor2 port map( a => n14, b => n15, outb => n13);
   U12 : nand4 port map( a => n6, b => n16, c => n17, d => N147, outb => n15);
   U13 : nand2 port map( a => n226_port, b => n9, outb => n17);
   U14 : nand4 port map( a => N217, b => n18, c => n11, d => N132, outb => 
                           n226_port);
   U15 : inv port map( inb => n259, outb => n11);
   U16 : nand2 port map( a => n222_port, b => n225_port, outb => n16);
   U17 : inv port map( inb => n251, outb => n225_port);
   U18 : inv port map( inb => n19, outb => n6);
   U19 : nand4 port map( a => n227_port, b => n20, c => n228_port, d => n21, 
                           outb => n19);
   U20 : nand3 port map( a => n22, b => n23, c => n24, outb => n14);
   U21 : nor3 port map( a => n266, b => N143, c => N153, outb => n24);
   U22 : oai22 port map( a => n1, b => N434, c => n25, d => n3, outb => 
                           n219_port);
   U23 : nor3 port map( a => n26, b => n234_port, c => n27, outb => n25);
   U24 : nor2 port map( a => n222_port, b => n28, outb => n27);
   U25 : nand4 port map( a => n243_port, b => n242_port, c => N242, d => n29, 
                           outb => n234_port);
   U26 : inv port map( inb => n266, outb => n29);
   U27 : nor2 port map( a => n250_port, b => n9, outb => n26);
   U28 : oai22 port map( a => n1, b => N435, c => n3, d => n30, outb => 
                           n220_port);
   U29 : oai12 port map( b => n222_port, c => n31, a => n32, outb => n30);
   U30 : nand3 port map( a => n28, b => n222_port, c => n250_port, outb => n32)
                           ;
   U31 : inv port map( inb => n9, outb => n222_port);
   U32 : nor2 port map( a => S, b => n81, outb => n9);
   U33 : inv port map( inb => reset, outb => n82);
   U34 : aoi12 port map( b => N441, c => n3, a => n33, outb => n221_port);
   U35 : nor2 port map( a => n34, b => n35, outb => n33);
   U36 : nand4 port map( a => n238_port, b => n1, c => N217, d => N177, outb =>
                           n35);
   U37 : inv port map( inb => n3, outb => n1);
   U38 : nand4 port map( a => n36, b => n37, c => n38, d => n18, outb => n34);
   U39 : inv port map( inb => N138, outb => n18);
   U40 : inv port map( inb => n237_port, outb => n38);
   U41 : nand4 port map( a => n249_port, b => N117, c => n22, d => n20, outb =>
                           n237_port);
   U42 : inv port map( inb => N238, outb => n20);
   U43 : inv port map( inb => N158, outb => n22);
   U44 : inv port map( inb => n236_port, outb => n37);
   U45 : nand4 port map( a => N127, b => n23, c => n10, d => N247, outb => 
                           n236_port);
   U46 : inv port map( inb => N208, outb => n10);
   U47 : inv port map( inb => N168, outb => n23);
   U48 : inv port map( inb => n235_port, outb => n36);
   U49 : nand4 port map( a => n245_port, b => n244_port, c => n231_port, d => 
                           N107, outb => n235_port);
   U50 : nand3 port map( a => n39, b => n40, c => n41, outb => n3);
   U51 : nand2 port map( a => n81, b => n80, outb => n41);
   U52 : inv port map( inb => S, outb => n40);
   U53 : nand3 port map( a => n42, b => n28, c => n250_port, outb => n39);
   U54 : inv port map( inb => n43, outb => n28);
   U55 : nand4 port map( a => n248_port, b => n247_port, c => n246_port, d => 
                           n21, outb => n43);
   U56 : inv port map( inb => n255, outb => n21);
   U57 : inv port map( inb => n31, outb => n42);
   U58 : nand4 port map( a => n241_port, b => n240_port, c => n239_port, d => 
                           N222, outb => n31);
   U59 : inv port map( inb => n44, outb => R(4));
   U60 : nand2 port map( a => N424, b => N419, outb => n44);
   U61 : nor3 port map( a => n45, b => n46, c => n47, outb => R(3));
   U62 : nor3 port map( a => n48, b => n49, c => n50, outb => n46);
   U63 : nor2 port map( a => n176_port, b => n175_port, outb => n49);
   U64 : nand4 port map( a => n208_port, b => n205_port, c => N475, d => N490, 
                           outb => n175_port);
   U65 : nand4 port map( a => n204_port, b => n201_port, c => N495, d => N510, 
                           outb => n176_port);
   U66 : nor3 port map( a => n51, b => n52, c => n53, outb => R(2));
   U67 : aoi12 port map( b => N589, c => N579, a => n54, outb => n53);
   U68 : nor3 port map( a => n55, b => n56, c => n57, outb => n52);
   U69 : oai22 port map( a => N554, b => N441, c => n58, d => n50, outb => n55)
                           ;
   U70 : aoi12 port map( b => n178_port, c => n177_port, a => n48, outb => n58)
                           ;
   U71 : oai12 port map( b => N441, c => n59, a => N419, outb => n51);
   U72 : nor3 port map( a => n60, b => n61, c => n45, outb => R(1));
   U73 : nor2 port map( a => N589, b => n54, outb => n61);
   U74 : oai12 port map( b => n62, c => n63, a => n64, outb => n60);
   U75 : aoi22 port map( a => n65, b => N560, c => n66, d => n54, outb => n64);
   U76 : oai12 port map( b => n62, c => n67, a => N584, outb => n66);
   U77 : inv port map( inb => N574, outb => n67);
   U78 : aoi12 port map( b => n63, c => n68, a => n185_port, outb => n65);
   U79 : nand3 port map( a => N574, b => n54, c => N554, outb => n68);
   U80 : aoi12 port map( b => n69, c => n70, a => n45, outb => R(0));
   U81 : inv port map( inb => N419, outb => n45);
   U82 : nand4 port map( a => N570, b => N589, c => N579, d => n71, outb => n70
                           );
   U83 : oai12 port map( b => n72, c => n73, a => n54, outb => n69);
   U84 : inv port map( inb => n74, outb => n72);
   U85 : oai12 port map( b => n71, c => n75, a => N570, outb => n74);
   U86 : nor2 port map( a => n57, b => N554, outb => n75);
   U87 : inv port map( inb => N560, outb => n57);
   U88 : nand2 port map( a => N565, b => n76, outb => n71);
   U89 : nand2 port map( a => n196_port, b => N560, outb => n76);
   U90 : inv port map( inb => N550, outb => N551);
   U91 : inv port map( inb => N545, outb => N546);
   U92 : inv port map( inb => N540, outb => N541);
   U93 : inv port map( inb => N535, outb => N536);
   U94 : inv port map( inb => N530, outb => N531);
   U95 : inv port map( inb => N525, outb => N526);
   U96 : inv port map( inb => N520, outb => N521);
   U97 : inv port map( inb => N515, outb => N516);
   U98 : nor3 port map( a => n48, b => n50, c => n47, outb => N424);
   U99 : nand3 port map( a => n62, b => n77, c => N560, outb => n47);
   U100 : oai12 port map( b => n63, c => n78, a => n79, outb => n77);
   U101 : nand3 port map( a => n59, b => n54, c => N554, outb => n79);
   U102 : inv port map( inb => N441, outb => n54);
   U103 : inv port map( inb => n73, outb => n59);
   U104 : nand2 port map( a => N584, b => N574, outb => n73);
   U105 : inv port map( inb => N589, outb => n78);
   U106 : nand2 port map( a => N579, b => N441, outb => n63);
   U107 : inv port map( inb => n56, outb => n62);
   U108 : nand2 port map( a => N570, b => N565, outb => n56);
   U109 : nand4 port map( a => N535, b => N540, c => N545, d => N550, outb => 
                           n50);
   U110 : nand4 port map( a => N515, b => N520, c => N525, d => N530, outb => 
                           n48);
   U111 : inv port map( inb => N197, outb => N198);
   U112 : inv port map( inb => N187, outb => N188);
   U113 : inv port map( inb => N177, outb => N178);
   U114 : inv port map( inb => N147, outb => N148);
   U115 : inv port map( inb => N446, outb => n211_port);
   U116 : aoi12 port map( b => N440, c => n211_port, a => N451, outb => 
                           n210_port);
   U117 : oai12 port map( b => n210_port, c => N456, a => n182, outb => 
                           n209_port);
   U118 : aoi12 port map( b => n183_port, c => n209_port, a => N471, outb => 
                           n207_port);
   U119 : oai12 port map( b => n207_port, c => N476, a => n208_port, outb => 
                           n206_port);
   U120 : aoi12 port map( b => n205_port, c => n206_port, a => N491, outb => 
                           n203_port);
   U121 : oai12 port map( b => n203_port, c => N496, a => n204_port, outb => 
                           n202);
   U122 : aoi12 port map( b => n201_port, c => n202, a => N511, outb => 
                           n200_port);
   U123 : oai12 port map( b => n200_port, c => N516, a => N520, outb => 
                           n199_port);
   U124 : aoi12 port map( b => N525, c => n199_port, a => N531, outb => 
                           n198_port);
   U125 : oai12 port map( b => n198_port, c => N536, a => N540, outb => 
                           n197_port);
   U126 : aoi12 port map( b => N545, c => n197_port, a => N551, outb => 
                           n196_port);
   U127 : nor2 port map( a => N451, b => N446, outb => n195_port);
   U128 : nor3 port map( a => n195_port, b => N461, c => N456, outb => 
                           n194_port);
   U129 : nor3 port map( a => n194_port, b => N471, c => N466, outb => 
                           n193_port);
   U130 : nor3 port map( a => n193_port, b => N481, c => N476, outb => n192);
   U131 : nor3 port map( a => n192, b => N491, c => N486, outb => n191_port);
   U132 : nor3 port map( a => n191_port, b => N501, c => N496, outb => 
                           n190_port);
   U133 : nor3 port map( a => n190_port, b => N511, c => N506, outb => 
                           n189_port);
   U134 : nor3 port map( a => n189_port, b => N521, c => N516, outb => 
                           n188_port);
   U135 : nor3 port map( a => n188_port, b => N531, c => N526, outb => 
                           n187_port);
   U136 : nor3 port map( a => n187_port, b => N541, c => N536, outb => 
                           n186_port);
   U137 : nor3 port map( a => n186_port, b => N551, c => N546, outb => 
                           n185_port);
   U138 : inv port map( inb => N456, outb => n181_port);
   U139 : nand4 port map( a => n181_port, b => n182, c => n183_port, d => 
                           n184_port, outb => n180_port);
   U140 : inv port map( inb => n175_port, outb => n179_port);
   U141 : nand2 port map( a => n179_port, b => n180_port, outb => n178_port);
   U142 : inv port map( inb => n176_port, outb => n177_port);
   U143 : inv port map( inb => N442, outb => n167_port);
   U144 : inv port map( inb => N443, outb => n166_port);
   U145 : inv port map( inb => N444, outb => n165_port);
   U146 : inv port map( inb => N452, outb => n161_port);
   U147 : inv port map( inb => N453, outb => n160_port);
   U148 : inv port map( inb => N454, outb => n159_port);
   U149 : inv port map( inb => N447, outb => n164_port);
   U150 : inv port map( inb => N448, outb => n163);
   U151 : inv port map( inb => N449, outb => n162);
   U152 : nor3 port map( a => N451, b => N456, c => N446, outb => n216_port);
   U153 : inv port map( inb => n216_port, outb => n215_port);
   U154 : inv port map( inb => N457, outb => n158_port);
   U155 : inv port map( inb => N458, outb => n157_port);
   U156 : inv port map( inb => N459, outb => n156_port);
   U157 : inv port map( inb => N461, outb => n182);
   U158 : inv port map( inb => N467, outb => n152);
   U159 : inv port map( inb => N468, outb => n151_port);
   U160 : inv port map( inb => N469, outb => n150_port);
   U161 : inv port map( inb => N471, outb => n184_port);
   U162 : inv port map( inb => N462, outb => n155_port);
   U163 : inv port map( inb => N463, outb => n154_port);
   U164 : inv port map( inb => N464, outb => n153_port);
   U165 : inv port map( inb => N466, outb => n183_port);
   U166 : nand3 port map( a => n183_port, b => n184_port, c => n182, outb => 
                           n214_port);
   U167 : nor2 port map( a => n214_port, b => n215_port, outb => n213);
   U168 : inv port map( inb => N487, outb => n140_port);
   U169 : inv port map( inb => N488, outb => n139_port);
   U170 : inv port map( inb => N489, outb => n138_port);
   U171 : inv port map( inb => N482, outb => n143_port);
   U172 : inv port map( inb => N483, outb => n142);
   U173 : inv port map( inb => N484, outb => n141_port);
   U174 : inv port map( inb => N486, outb => n205_port);
   U175 : inv port map( inb => N477, outb => n146_port);
   U176 : inv port map( inb => N478, outb => n145_port);
   U177 : inv port map( inb => N479, outb => n144_port);
   U178 : inv port map( inb => N481, outb => n208_port);
   U179 : inv port map( inb => N472, outb => n149_port);
   U180 : inv port map( inb => N473, outb => n148_port);
   U181 : inv port map( inb => N474, outb => n147_port);
   U182 : inv port map( inb => N436, outb => n170_port);
   U183 : inv port map( inb => N437, outb => n169_port);
   U184 : inv port map( inb => N438, outb => n168_port);
   U185 : inv port map( inb => N507, outb => n128);
   U186 : inv port map( inb => N508, outb => n127_port);
   U187 : inv port map( inb => N509, outb => n126_port);
   U188 : inv port map( inb => N502, outb => n131_port);
   U189 : inv port map( inb => N503, outb => n130_port);
   U190 : inv port map( inb => N504, outb => n129_port);
   U191 : inv port map( inb => N506, outb => n201_port);
   U192 : inv port map( inb => N497, outb => n134_port);
   U193 : inv port map( inb => N498, outb => n133);
   U194 : inv port map( inb => N499, outb => n132_port);
   U195 : inv port map( inb => N501, outb => n204_port);
   U196 : inv port map( inb => N492, outb => n137_port);
   U197 : inv port map( inb => N493, outb => n136_port);
   U198 : inv port map( inb => N494, outb => n135_port);
   U199 : nor3 port map( a => n176_port, b => N440, c => n175_port, outb => 
                           n212);
   U200 : inv port map( inb => n173_port, outb => N428);
   U201 : inv port map( inb => n172_port, outb => N429);
   U202 : inv port map( inb => n171_port, outb => N430);
   U203 : nand4 port map( a => n174_port, b => N424, c => n212, d => n213, outb
                           => N419);
   U204 : inv port map( inb => N587, outb => n84);
   U205 : inv port map( inb => N588, outb => n83);
   U206 : inv port map( inb => N582, outb => n86);
   U207 : inv port map( inb => N583, outb => n85);
   U208 : inv port map( inb => N577, outb => n88);
   U209 : inv port map( inb => N578, outb => n87);
   U210 : inv port map( inb => N572, outb => n90);
   U211 : inv port map( inb => N573, outb => n89);
   U212 : inv port map( inb => N552, outb => n101_port);
   U213 : inv port map( inb => N553, outb => n100_port);
   U214 : inv port map( inb => N557, outb => n99_port);
   U215 : inv port map( inb => N558, outb => n98);
   U216 : inv port map( inb => N559, outb => n97_port);
   U217 : inv port map( inb => N567, outb => n93);
   U218 : inv port map( inb => N568, outb => n92);
   U219 : inv port map( inb => N569, outb => n91);
   U220 : inv port map( inb => N562, outb => n96_port);
   U221 : inv port map( inb => N563, outb => n95_port);
   U222 : inv port map( inb => N564, outb => n94);
   U223 : inv port map( inb => N527, outb => n116_port);
   U224 : inv port map( inb => N528, outb => n115_port);
   U225 : inv port map( inb => N529, outb => n114_port);
   U226 : inv port map( inb => N522, outb => n119_port);
   U227 : inv port map( inb => N523, outb => n118);
   U228 : inv port map( inb => N524, outb => n117_port);
   U229 : inv port map( inb => N517, outb => n122_port);
   U230 : inv port map( inb => N518, outb => n121_port);
   U231 : inv port map( inb => N519, outb => n120_port);
   U232 : inv port map( inb => N512, outb => n125_port);
   U233 : inv port map( inb => N513, outb => n124_port);
   U234 : inv port map( inb => N514, outb => n123_port);
   U235 : inv port map( inb => N547, outb => n104_port);
   U236 : inv port map( inb => N548, outb => n103_port);
   U237 : inv port map( inb => N549, outb => n102_port);
   U238 : inv port map( inb => N542, outb => n107_port);
   U239 : inv port map( inb => N543, outb => n106_port);
   U240 : inv port map( inb => N544, outb => n105_port);
   U241 : inv port map( inb => N537, outb => n110_port);
   U242 : inv port map( inb => N538, outb => n109_port);
   U243 : inv port map( inb => N539, outb => n108);
   U244 : inv port map( inb => N532, outb => n113_port);
   U245 : inv port map( inb => N533, outb => n112_port);
   U246 : inv port map( inb => N534, outb => n111_port);
   U247 : inv port map( inb => n229_port, outb => n228_port);
   U248 : nand3 port map( a => n230_port, b => n231_port, c => n232, outb => 
                           n229_port);
   U249 : nand2 port map( a => n233, b => n222_port, outb => n230_port);
   U250 : nor2 port map( a => N248, b => N243, outb => n227_port);
   U251 : nor3 port map( a => n235_port, b => N103, c => n234_port, outb => 
                           n241_port);
   U252 : nor2 port map( a => N123, b => n236_port, outb => n243_port);
   U253 : inv port map( inb => N203, outb => n242_port);
   U254 : inv port map( inb => N228, outb => n231_port);
   U255 : inv port map( inb => N188, outb => n245_port);
   U256 : inv port map( inb => N148, outb => n244_port);
   U257 : inv port map( inb => N143, outb => n240_port);
   U258 : inv port map( inb => N223, outb => n232);
   U259 : inv port map( inb => N183, outb => n239_port);
   U260 : nor2 port map( a => N113, b => n237_port, outb => n248_port);
   U261 : inv port map( inb => N198, outb => n249_port);
   U262 : inv port map( inb => N153, outb => n247_port);
   U263 : inv port map( inb => N193, outb => n246_port);
   U264 : nor3 port map( a => n225_port, b => n226_port, c => n233, outb => 
                           n250_port);
   U265 : oai12 port map( b => n223_port, c => N441, a => n238_port, outb => 
                           n233);
   U266 : nand2 port map( a => N441, b => N97, outb => n238_port);
   U267 : nor2 port map( a => N178, b => N173, outb => n251);
   U268 : nand2 port map( a => n252, b => N441, outb => N247);
   U269 : inv port map( inb => N246, outb => n252);
   U270 : inv port map( inb => n253, outb => N242);
   U271 : nor2 port map( a => N441, b => N241, outb => n253);
   U272 : nand2 port map( a => n254, b => N441, outb => N237);
   U273 : inv port map( inb => N236, outb => n254);
   U274 : nor2 port map( a => N441, b => N231, outb => n255);
   U275 : nand2 port map( a => n256, b => N441, outb => N227);
   U276 : inv port map( inb => N226, outb => n256);
   U277 : inv port map( inb => n257, outb => N222);
   U278 : nor2 port map( a => N441, b => N221, outb => n257);
   U279 : nand2 port map( a => n258, b => N441, outb => N217);
   U280 : inv port map( inb => N216, outb => n258);
   U281 : nor2 port map( a => N441, b => N211, outb => n259);
   U282 : nand2 port map( a => n260, b => N441, outb => N207);
   U283 : inv port map( inb => N206, outb => n260);
   U284 : nor2 port map( a => N441, b => N201, outb => N203);
   U285 : nand2 port map( a => n261, b => N441, outb => N197);
   U286 : inv port map( inb => N196, outb => n261);
   U287 : nor2 port map( a => N441, b => N191, outb => N193);
   U288 : nand2 port map( a => n262, b => N441, outb => N187);
   U289 : inv port map( inb => N186, outb => n262);
   U290 : nor2 port map( a => N441, b => N181, outb => N183);
   U291 : nand2 port map( a => n263, b => N441, outb => N177);
   U292 : inv port map( inb => N176, outb => n263);
   U293 : inv port map( inb => n264, outb => N172);
   U294 : nor2 port map( a => N441, b => N171, outb => n264);
   U295 : nand2 port map( a => n265, b => N441, outb => N167);
   U296 : inv port map( inb => N166, outb => n265);
   U297 : nor2 port map( a => N441, b => N161, outb => n266);
   U298 : nand2 port map( a => n267, b => N441, outb => N157);
   U299 : inv port map( inb => N156, outb => n267);
   U300 : nor2 port map( a => N441, b => N151, outb => N153);
   U301 : nand2 port map( a => n268, b => N441, outb => N147);
   U302 : inv port map( inb => N146, outb => n268);
   U303 : nor2 port map( a => N441, b => N141, outb => N143);
   U304 : nand2 port map( a => n269, b => N441, outb => N137);
   U305 : inv port map( inb => N136, outb => n269);
   U306 : inv port map( inb => n270, outb => N132);
   U307 : nor2 port map( a => N441, b => N131, outb => n270);
   U308 : nand2 port map( a => n271, b => N441, outb => N127);
   U309 : inv port map( inb => N126, outb => n271);
   U310 : inv port map( inb => n272, outb => N122);
   U311 : nor2 port map( a => N441, b => N121, outb => n272);
   U312 : nand2 port map( a => n273, b => N441, outb => N117);
   U313 : inv port map( inb => N116, outb => n273);
   U314 : inv port map( inb => n274, outb => N112);
   U315 : nor2 port map( a => N441, b => N111, outb => n274);
   U316 : nand2 port map( a => n275, b => N441, outb => N107);
   U317 : inv port map( inb => N106, outb => n275);
   U318 : inv port map( inb => n276, outb => N102);
   U319 : nor2 port map( a => N441, b => N101, outb => n276);
   U320 : inv port map( inb => State_0_port, outb => N441);
   U321 : inv port map( inb => n277, outb => N95);
   U322 : inv port map( inb => n278, outb => N96);
   U323 : inv port map( inb => n224_port, outb => N97);
   U324 : inv port map( inb => N99, outb => n279);
   U325 : inv port map( inb => N100, outb => n280);
   U326 : inv port map( inb => N104, outb => n281);
   U327 : inv port map( inb => N105, outb => n282);
   U328 : inv port map( inb => N109, outb => n283);
   U329 : inv port map( inb => N110, outb => n284);
   U330 : inv port map( inb => N114, outb => n285);
   U331 : inv port map( inb => N115, outb => n286);
   U332 : inv port map( inb => N119, outb => n287);
   U333 : inv port map( inb => N120, outb => n288);
   U334 : inv port map( inb => N124, outb => n289);
   U335 : inv port map( inb => N125, outb => n290);
   U336 : inv port map( inb => N129, outb => n291);
   U337 : inv port map( inb => N130, outb => n292);
   U338 : inv port map( inb => N134, outb => n293);
   U339 : inv port map( inb => N135, outb => n294);
   U340 : inv port map( inb => N139, outb => n295);
   U341 : inv port map( inb => N140, outb => n296);
   U342 : inv port map( inb => N144, outb => n297);
   U343 : inv port map( inb => N145, outb => n298);
   U344 : inv port map( inb => N149, outb => n299);
   U345 : inv port map( inb => N150, outb => n300);
   U346 : inv port map( inb => N154, outb => n301);
   U347 : inv port map( inb => N155, outb => n302);
   U348 : inv port map( inb => N159, outb => n303);
   U349 : inv port map( inb => N160, outb => n304);
   U350 : inv port map( inb => N164, outb => n305);
   U351 : inv port map( inb => N165, outb => n306);
   U352 : inv port map( inb => N169, outb => n307);
   U353 : inv port map( inb => N170, outb => n308);
   U354 : inv port map( inb => N174, outb => n309);
   U355 : inv port map( inb => N175, outb => n310);
   U356 : inv port map( inb => N179, outb => n311);
   U357 : inv port map( inb => N180, outb => n312);
   U358 : inv port map( inb => N184, outb => n313);
   U359 : inv port map( inb => N185, outb => n314);
   U360 : inv port map( inb => N189, outb => n315);
   U361 : inv port map( inb => N190, outb => n316);
   U362 : inv port map( inb => N194, outb => n317);
   U363 : inv port map( inb => N195, outb => n318);
   U364 : inv port map( inb => N199, outb => n319);
   U365 : inv port map( inb => N200, outb => n320);
   U366 : inv port map( inb => N204, outb => n321);
   U367 : inv port map( inb => N205, outb => n322);
   U368 : inv port map( inb => N209, outb => n323);
   U369 : inv port map( inb => N210, outb => n324);
   U370 : inv port map( inb => N214, outb => n325);
   U371 : inv port map( inb => N215, outb => n326);
   U372 : inv port map( inb => N219, outb => n327);
   U373 : inv port map( inb => N220, outb => n328);
   U374 : inv port map( inb => N224, outb => n329);
   U375 : inv port map( inb => N225, outb => n330);
   U376 : inv port map( inb => N229, outb => n331);
   U377 : inv port map( inb => N230, outb => n332);
   U378 : inv port map( inb => N234, outb => n333);
   U379 : inv port map( inb => N235, outb => n334);
   U380 : inv port map( inb => N239, outb => n335);
   U381 : inv port map( inb => N240, outb => n336);
   U382 : inv port map( inb => N244, outb => n337);
   U383 : inv port map( inb => N245, outb => n338);
   U384 : inv port map( inb => n339, outb => N249);
   U385 : inv port map( inb => n340, outb => N250);

end SYN_RTL;