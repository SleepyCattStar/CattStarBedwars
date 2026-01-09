--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string['char'];
local obf_stringbyte = string['byte'];
local obf_stringsub = string['sub'];
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib['bxor'];
local obf_tableconcat = table['concat'];
local obf_tableinsert = table['insert'];
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local FlatIdent_76979 = 0;
	local result;
	while true do
		if (FlatIdent_76979 == 1) then
			return obf_tableconcat(result);
		end
		if (FlatIdent_76979 == 0) then
			result = {};
			for i = 1, #LUAOBFUSACTOR_STR do
				obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
			end
			FlatIdent_76979 = 1;
		end
	end
end
local TABLE_TableIndirection = {};
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\147\158\117", "\126\177\163\187\69\134\219\167")] = tonumber;
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\156\111\149", "\156\67\173\74\165")] = string['byte'];
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\229\12\70", "\38\84\215\41\118\220\70")] = string['char'];
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\69\103\66", "\158\48\118\66\114")] = string['sub'];
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\112\85\102", "\155\203\68\112\86\19\197")] = string['gsub'];
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\136\115\172", "\152\38\189\86\156\32\24\133")] = string['rep'];
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\1\226\22", "\38\156\55\199")] = table['concat'];
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\42\57\120", "\35\200\29\28\72\115\20\154")] = table['insert'];
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\15\231\148\143", "\84\121\223\177\191\237\76")] = math['ldexp'];
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\15\140\240", "\161\219\54\169\192\90\48\80")] = getfenv or function()
	return _ENV;
end;
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\19\80\96\25", "\69\41\34\96")] = setmetatable;
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\146\134\79\82", "\75\220\163\183\106\98")] = pcall;
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\235\217\114\137", "\185\98\218\235\87")] = select;
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\109\116\163\142", "\202\171\92\71\134\190")] = unpack or table['unpack'];
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\144\120\205\121", "\232\73\161\76")] = tonumber;
local function v15(v16, v17, ...)
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\136\26\24\78", "\126\219\185\34\61")] = 1;
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\159\7\55\46", "\135\108\174\62\18\30\23\147")] = nil;
	v16 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\160\189\111\155", "\167\214\137\74\171\120\206\83")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\163\119\13", "\199\235\144\82\61\152")](v16, 5), LUAOBFUSACTOR_DECRYPT_STR_0("\73\88", "\75\103\118\217"), function(v30)
		if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\5\53\68", "\126\167\52\16\116\217")](v30, 2) == 81) then
			local FlatIdent_47A9C = 0;
			while true do
				if (FlatIdent_47A9C == 0) then
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\222\127\121\197\228", "\156\168\78\64\224\212\121")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\190\224\158", "\174\103\142\197")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\64\123\26\104", "\152\54\72\63\88\69\62")](v30, 1, 1));
					return "";
				end
			end
		else
			local FlatIdent_63487 = 0;
			while true do
				if (FlatIdent_63487 == 0) then
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\194\156\185\25\132", "\60\180\164\142")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\12\64\121", "\114\56\62\101\73\71\141")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\185\158\148", "\164\216\137\187")](v30, 16));
					if TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\183\104\247\246", "\107\178\134\81\210\198\158")] then
						TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\87\213\131\250", "\202\88\110\226\166")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\90\199\167", "\170\163\111\226\151")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\104\229\125\30", "\73\113\80\210\88\46\87")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\151\125\148\87\183", "\135\225\76\173\114")]);
						TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\188\225\245\252", "\199\122\141\216\208\204\221")] = nil;
						return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\132\71\181\40", "\150\205\189\112\144\24")];
					else
						return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\220\232\9\84", "\112\69\228\223\44\100\232\113")];
					end
					break;
				end
			end
		end
	end);
	local function v20(v31, v32, v33)
		if v33 then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\194\71\95\150\230", "\230\180\127\103\179\214\28")] = (v31 / (2 ^ (v32 - 1))) % (2 ^ (((v33 - 1) - (v32 - 1)) + 1));
			return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\93\7\3\180", "\128\236\101\63\38\132\33")] - (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\241\73\1\230", "\175\204\201\113\36\214\139")] % 1);
		else
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\148\108\153\84", "\100\39\172\85\188")] = 2 ^ (v32 - 1);
			return (((v31 % (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\32\224\197\99", "\83\205\24\217\224")] + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\157\148\120\182", "\93\134\165\173")])) >= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\170\152\135\106", "\30\222\146\161\162\90\174\210")]) and 1) or 0;
		end
	end
	local function v21()
		local FlatIdent_44839 = 0;
		while true do
			if (FlatIdent_44839 == 1) then
				return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\128\236\9\75", "\29\43\179\216\44\123")];
			end
			if (FlatIdent_44839 == 0) then
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\29\36\79\181", "\106\133\46\16")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\113\54\172", "\32\56\64\19\156\58")](v16, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\153\189\19\10", "\224\58\168\133\54\58\146")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\7\19\184\37", "\107\57\54\43\157\21\230\231")]);
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\218\73\176\233", "\175\187\235\113\149\217\188")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\254\217\9\179", "\24\92\207\225\44\131\25")] + 1;
				FlatIdent_44839 = 1;
			end
		end
	end
	local function v22()
		local FlatIdent_39B0 = 0;
		local v35;
		local v36;
		while true do
			if (FlatIdent_39B0 == 0) then
				v35, v36 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\171\136\101\28", "\44\221\185\64")](v16, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\182\16\26\35", "\19\97\135\40\63")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\13\107\126\127", "\81\206\60\83\91\79")] + 2);
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\250\136\55\127", "\196\46\203\176\18\79\163\45")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\115\38\91\116", "\143\216\66\30\126\68\155")] + 2;
				FlatIdent_39B0 = 1;
			end
			if (FlatIdent_39B0 == 1) then
				return (v36 * 256) + v35;
			end
		end
	end
	local function v23()
		local FlatIdent_61585 = 0;
		local v37;
		local v38;
		local v39;
		local v40;
		while true do
			if (1 == FlatIdent_61585) then
				return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37;
			end
			if (0 == FlatIdent_61585) then
				v37, v38, v39, v40 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\153\72\155", "\129\202\168\109\171\165\195\183")](v16, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\9\111\157\142", "\134\66\56\87\184\190\116")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\96\81\254\73", "\85\92\81\105\219\121\139\65")] + 3);
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\226\8\0\44", "\191\157\211\48\37\28")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\78\172\89\106", "\90\191\127\148\124")] + 4;
				FlatIdent_61585 = 1;
			end
		end
	end
	local function v24()
		local FlatIdent_1BCFB = 0;
		while true do
			if (FlatIdent_1BCFB == 3) then
				if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\21\34\192\174", "\235\18\33\23\229\158")] == 0) then
					if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\238\149\254\0", "\219\48\218\161")] == 0) then
						return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\37\42\12\139", "\128\132\17\28\41\187\47")] * 0;
					else
						local FlatIdent_49AED = 0;
						while true do
							if (FlatIdent_49AED == 0) then
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\102\83\127\13", "\61\97\82\102\90")] = 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\122\248\14\151", "\105\204\78\203\43\167\55\126")] = 0;
								break;
							end
						end
					end
				elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\254\118\91\67", "\49\197\202\67\126\115\100\167")] == 2047) then
					return ((TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\15\139\108\208", "\62\87\59\191\73\224\54")] == 0) and (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\86\172\140\183", "\169\135\98\154")] * (1 / 0))) or (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\35\114\17\173", "\168\171\23\68\52\157\83")] * NaN);
				end
				return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\41\176\253", "\231\148\17\149\205\69\77")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\243\145\190\7", "\159\224\199\167\155\55")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\167\105\151\167", "\178\151\147\92")] - 1023) * (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\169\31\119\66", "\26\236\157\44\82\114\44")] + (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\122\129\30\122", "\59\74\78\181")] / (2 ^ 52)));
			end
			if (2 == FlatIdent_1BCFB) then
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\211\182\104\30", "\77\46\231\131")] = v20(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\0\228\5\234", "\32\218\52\214")], 21, 31);
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\67\103\237\161", "\58\46\119\81\200\145\208\37")] = ((v20(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\61\216\98\233\249", "\86\75\236\80\204\201\221")], 32) == 1) and -1) or 1;
				FlatIdent_1BCFB = 3;
			end
			if (FlatIdent_1BCFB == 1) then
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\66\167\240\106", "\213\90\118\148")] = 1;
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\122\224\19\29", "\45\59\78\212\54")] = (v20(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\6\2\209\206\214", "\144\112\54\227\235\230\78\205")], 1, 20) * (2 ^ 32)) + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\124\94\185\128", "\59\211\72\111\156\176")];
				FlatIdent_1BCFB = 2;
			end
			if (FlatIdent_1BCFB == 0) then
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\211\127\82\40", "\119\24\231\78")] = v23();
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\121\247\15\140", "\113\226\77\197\42\188\32")] = v23();
				FlatIdent_1BCFB = 1;
			end
		end
	end
	local function v25(v47)
		local FlatIdent_99389 = 0;
		while true do
			if (FlatIdent_99389 == 1) then
				v48 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\182\60\165", "\171\215\133\25\149\137")](v16, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\153\106\191\191", "\34\129\168\82\154\143\80\156")], (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\227\107\78\24", "\233\229\210\83\107\40\46")] + v47) - 1);
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\19\106\147\85", "\101\161\34\82\182")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\92\1\187\139", "\78\136\109\57\158\187\130\226")] + v47;
				FlatIdent_99389 = 2;
			end
			if (FlatIdent_99389 == 2) then
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\107\160\180\110", "\145\94\95\153")] = {};
				for v63 = 1, #v48 do
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\153\77\144\30", "\215\157\173\116\181\46")][v63] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\230\206\162", "\186\85\212\235\146")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\208\83\174", "\56\162\225\118\158\89\142")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\86\133\255", "\184\60\101\160\207\66")](v48, v63, v63)));
				end
				FlatIdent_99389 = 3;
			end
			if (FlatIdent_99389 == 3) then
				return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\212\57\236", "\220\81\226\28")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\129\219\190\186", "\167\115\181\226\155\138")]);
			end
			if (FlatIdent_99389 == 0) then
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\133\2\31\227", "\211\69\177\58\58")] = nil;
				if not v47 then
					local FlatIdent_12544 = 0;
					while true do
						if (FlatIdent_12544 == 0) then
							v47 = v23();
							if (v47 == 0) then
								return "";
							end
							break;
						end
					end
				end
				FlatIdent_99389 = 1;
			end
		end
	end
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\244\112\177\25\43", "\166\130\66\135\60\27\17")] = v23;
	local v27;
	function v39(...)
		return {...}, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\27\156\48\96", "\80\36\42\174\21")]("#", ...);
	end
	local function v28()
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\69\103\63\30", "\26\46\112\87")] = {};
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\118\250\49\239", "\212\217\67\203\20\223\223\37")] = {};
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\216\250\151\234", "\178\218\237\200")] = {};
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\160\224\181\149\230", "\176\214\213\134")] = {TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\248\230\145\248", "\57\148\205\214\180\200\54")],TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\168\100\113\38", "\22\114\157\85\84")],nil,TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\158\65\129\13", "\200\164\171\115\164\61\150")]};
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\161\87\0\211", "\227\222\148\99\37")] = v23();
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\7\7\179\169", "\153\83\50\50\150")] = {};
		for v65 = 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\35\39\89\35", "\45\61\22\19\124\19\203")] do
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\68\91\176\82", "\217\161\114\109\149\98\16")] = v21();
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\118\111\57\236", "\20\114\64\88\28\220")] = nil;
			if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\87\132\241\168", "\221\81\97\178\212\152\176")] == 1) then
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\177\74\190\74", "\122\173\135\125\155")] = v21() ~= 0;
			elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\151\86\252\111", "\168\228\161\96\217\95\81")] == 2) then
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\135\121\25\127", "\55\187\177\78\60\79")] = v24();
			elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\152\9\174\22", "\224\77\174\63\139\38\175")] == 3) then
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\23\15\107\212", "\78\228\33\56")] = v25();
			end
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\43\231\70\213", "\229\174\30\210\99")][v65] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\187\209\20\189", "\89\123\141\230\49\141\93")];
		end
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\36\165\73\64", "\42\147\17\150\108\112")][3] = v21();
		for v69 = 1, v23() do
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\241\125\58\183", "\136\111\198\77\31\135")] = v21();
			if (v20(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\94\247\19\237", "\201\98\105\199\54\221\132\119")], 1, 1) == 0) then
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\85\208\100\82", "\204\217\108\227\65\98\85")] = v20(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\148\165\160\124", "\160\62\163\149\133\76")], 2, 3);
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\249\89\106\147", "\163\182\192\109\79")] = v20(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\113\80\133\165", "\149\84\70\96\160")], 4, 6);
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\95\88\168\104", "\141\88\102\109")] = {v22(),v22(),nil,nil};
				if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\10\153\53\74", "\161\211\51\170\16\122\93\53")] == 0) then
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\247\231\109\171", "\72\155\206\210")][3] = v22();
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\35\1\75\99", "\83\38\26\52\110")][4] = v22();
				elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\78\116\3\8", "\38\56\119\71")] == 1) then
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\182\13\147\117", "\54\147\143\56\182\69")][3] = v23();
				elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\216\172\12\143", "\191\182\225\159\41")] == 2) then
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\61\75\125\16\219", "\162\75\114\72\53\235\231")][3] = v23() - (2 ^ 16);
				elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\101\23\167\3", "\98\236\92\36\130\51")] == 3) then
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\64\89\255\21", "\80\196\121\108\218\37\200\213")][3] = v23() - (2 ^ 16);
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\42\87\58\27", "\234\96\19\98\31\43\110")][4] = v22();
				end
				if (v20(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\16\70\6\130\252", "\235\102\127\50\167\204\18")], 1, 1) == 1) then
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\248\160\102\20", "\78\48\193\149\67\36")][2] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\75\213\93\17", "\33\80\126\224\120")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\241\86\129\12", "\60\140\200\99\164")][2]];
				end
				if (v20(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\173\80\99\242", "\194\231\148\100\70")], 2, 2) == 1) then
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\21\148\230\166", "\168\38\44\161\195\150")][3] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\169\215\51\96", "\118\224\156\226\22\80\136\214")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\183\12\197\18", "\224\34\142\57")][3]];
				end
				if (v20(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\254\145\152\35", "\110\190\199\165\189\19\145\61")], 3, 3) == 1) then
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\178\34\173\219", "\167\186\139\23\136\235")][4] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\224\221\72\74", "\109\122\213\232")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\174\247\117\190", "\80\142\151\194")][4]];
				end
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\147\39\9\83", "\44\99\166\23")][v69] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\174\124\115\99", "\196\28\151\73\86\83")];
			end
		end
		for v71 = 1, v23() do
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\86\120\85\210", "\22\147\99\73\112\226\56\120")][v71 - 1] = v28();
		end
		return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\32\177\176\221", "\237\216\21\130\149")];
	end
	local function v29(v57, v58, v59)
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\24\15\26\224", "\62\226\46\63\63\208\169")] = v57[1];
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\79\4\198\79", "\62\133\121\53\227\127\109\79")] = v57[2];
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\6\66\96\176\134", "\194\112\116\82\149\182\206")] = v57[3];
		return function(...)
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\255\31\93\144", "\110\89\200\44\120\160\130")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\149\27\3\19", "\45\203\163\43\38\35\42\91")];
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\210\136\102\215", "\52\178\229\188\67\231\201")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\23\1\65\167", "\67\65\33\48\100\151\60")];
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\176\251\157\163", "\147\191\135\206\184")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\126\244\132\136", "\210\228\72\198\161\184\51")];
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\30\165\85\35", "\174\86\41\147\112\19")] = v27;
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\87\218\78\117", "\203\59\96\237\107\69\111\113")] = 1;
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\65\244\164\97", "\183\68\118\204\129\81\144")] = -1;
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\24\250\41\161\91", "\226\110\205\16\132\107")] = {};
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\155\176\156\17", "\33\139\163\128\185")] = {...};
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\0\85\155\7", "\190\55\56\100")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\64\254\110\91\67", "\147\54\207\92\126\115\131")]("#", ...) - 1;
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\105\103\56\93", "\30\109\81\85\29\109")] = {};
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\41\7\243\102", "\156\159\17\52\214\86\190")] = {};
			for v90 = 0, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\183\236\249\254", "\220\206\143\221")] do
				if (v90 >= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\42\120\82\136", "\178\230\29\77\119\184\172")]) then
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\233\83\94\39", "\152\149\222\106\123\23")][v90 - TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\203\113\163\6\229", "\213\189\70\150\35")]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\89\13\36\77\31", "\104\47\53\20")][v90 + 1];
				else
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\181\20\210\89\236", "\111\195\44\225\124\220")][v90] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\30\80\54\251", "\203\184\38\96\19\203")][v90 + 1];
				end
			end
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\43\45\4\158", "\174\89\19\25\33")] = (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\74\3\11\167", "\107\79\114\50\46\151\231")] - TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\241\224\108\218", "\160\89\198\213\73\234\89\215")]) + 1;
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\41\225\187\149", "\165\40\17\212\158")] = nil;
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\129\94\118\118", "\70\133\185\104\83")] = nil;
			while true do
				local FlatIdent_8BF78 = 0;
				while true do
					if (FlatIdent_8BF78 == 0) then
						TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\29\17\111\153", "\169\100\37\36\74")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\208\241\21\80", "\48\96\231\194")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\222\13\89\104\73", "\227\168\58\110\77\121\184\207")]];
						TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\100\233\5\225", "\197\27\92\223\32\209\187\17")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\7\150\190\83", "\155\99\63\163")][1];
						FlatIdent_8BF78 = 1;
					end
					if (1 == FlatIdent_8BF78) then
						if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\137\247\200\233", "\228\226\177\193\237\217")] <= 33) then
							if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\232\117\163\100", "\134\84\208\67")] <= 16) then
								if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\244\208\25\67", "\60\115\204\230")] <= 7) then
									if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\98\189\53\183", "\16\135\90\139")] <= 3) then
										if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\44\80\118\30", "\24\52\20\102\83\46\52")] <= 1) then
											if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\119\119\97\95", "\111\164\79\65\68")] > 0) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\129\208\155\126", "\138\166\185\227\190\78")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\44\144\114\2", "\121\171\20\165\87\50\67")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\96\236\115\233", "\98\166\88\217\86\217")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\174\42\68\214", "\188\150\150\25\97\230")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\209\10\71\92", "\141\186\233\63\98\108")][4]];
											else
												local FlatIdent_27404 = 0;
												while true do
													if (FlatIdent_27404 == 3) then
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\146\230\164\158", "\174\139\165\209\129")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\181\228\181\132\150", "\24\195\211\130\161\166\99\16")] + 1;
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\91\188\105\3", "\118\38\99\137\76\51")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\113\86\87\89", "\64\157\70\101\114\105")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\255\240\166\64", "\112\32\200\199\131")]];
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\8\15\253\147", "\66\76\48\60\216\163\203")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\222\44\182\15", "\68\218\230\25\147\63\174")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\114\6\9\230", "\214\205\74\51\44")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\20\183\185\39", "\23\154\44\130\156")][4];
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\241\250\235\102", "\115\113\198\205\206\86")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\0\169\31\212", "\58\228\55\158")] + 1;
														FlatIdent_27404 = 4;
													end
													if (FlatIdent_27404 == 1) then
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\29\143\241\170", "\109\92\37\188\212\154\29")][v117 + 1] = v116;
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\183\247\134\97", "\58\100\143\196\163\81")][v117] = v116[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\26\118\230\111", "\110\122\34\67\195\95\41\133")][4]];
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\230\12\15\134", "\182\21\209\59\42")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\0\146\88\113", "\222\215\55\165\125\65")] + 1;
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\137\147\95\162", "\42\76\177\166\122\146\161\141")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\221\86\139\41", "\22\197\234\101\174\25")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\99\242\153\38", "\230\77\84\197\188\22\207\183")]];
														FlatIdent_27404 = 2;
													end
													if (FlatIdent_27404 == 2) then
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\76\149\185\220", "\85\153\116\166\156\236\193\144")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\184\24\246\180", "\96\196\128\45\211\132")][2]] = {};
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\218\44\26\130", "\184\85\237\27\63\178\207\212")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\30\14\94\26\88", "\63\104\57\105")] + 1;
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\29\223\241\1\91", "\36\107\231\196")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\226\241\194\13", "\231\61\213\194")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\250\106\54\89", "\19\105\205\93")]];
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\80\141\196\111", "\95\201\104\190\225")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\147\148\139\255", "\174\207\171\161")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\166\88\182\168", "\183\141\158\109\147\152")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\81\179\73\124", "\108\76\105\134")][4];
														FlatIdent_27404 = 3;
													end
													if (FlatIdent_27404 == 4) then
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\209\133\107\108", "\85\212\233\176\78\92\205")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\15\219\167\26", "\130\42\56\232")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\252\226\115\166\16", "\95\138\213\68\131\32")]];
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\112\242\6\38", "\22\74\72\193\35")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\33\177\29\124", "\56\76\25\132")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\153\254\99\159", "\175\62\161\203\70")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\133\150\86\101", "\85\92\189\163\115")][4];
														break;
													end
													if (FlatIdent_27404 == 0) then
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\187\125\224\96\161", "\69\145\138\76\214")] = nil;
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\102\158\216\222\250\70", "\118\16\175\233\233\223")] = nil;
														v117 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\220\96\254\190", "\29\235\228\85\219\142\235")][2];
														v116 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\140\233\152\39", "\50\93\180\218\189\23\46\71")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\252\14\9\20", "\40\190\196\59\44\36\188")][3]];
														FlatIdent_27404 = 1;
													end
												end
											end
										elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\244\102\125\121", "\88\73\204\80")] > 2) then
											local FlatIdent_6DC53 = 0;
											while true do
												if (FlatIdent_6DC53 == 6) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\210\155\6\255", "\49\24\234\174\35\207\50\93")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\165\174\205\33", "\17\108\146\157\232")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\148\67\168\127", "\200\43\163\116\141\79")]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\110\110\198\224", "\131\223\86\93\227\208\148")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\29\227\243\77", "\213\131\37\214\214\125")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\115\112\250\177", "\129\70\75\69\223")][3];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\156\164\172\44", "\143\38\171\147\137\28")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\213\238\182\83", "\180\176\226\217\147\99\131")] + 1;
													FlatIdent_6DC53 = 7;
												end
												if (FlatIdent_6DC53 == 9) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\10\163\95\167\76", "\130\124\155\106")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\195\156\165\234\243", "\223\181\171\150\207\195\150\28")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\109\180\235\89", "\105\44\90\131\206")]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\184\225\252\88", "\94\159\128\210\217\104")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\161\83\250\15", "\26\48\153\102\223\63\31\153")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\24\184\182\82", "\147\98\32\141")][3]];
													break;
												end
												if (FlatIdent_6DC53 == 4) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\128\18\122\135", "\95\183\184\39")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\104\180\99\4", "\98\213\95\135\70\52\224")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\244\158\50\4", "\52\158\195\169\23")]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\228\97\49\214", "\235\26\220\82\20\230\85\27")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\249\188\135\36", "\20\232\193\137\162")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\135\144\227\183", "\17\66\191\165\198\135\236\119")][3];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\248\249\86\175", "\177\111\207\206\115\159\136\140")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\222\71\81\132", "\63\101\233\112\116\180\47")] + 1;
													FlatIdent_6DC53 = 5;
												end
												if (FlatIdent_6DC53 == 1) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\229\4\117\159", "\84\133\221\55\80\175")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\171\191\113\227\151", "\60\221\135\68\198\167")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\229\173\198\18", "\185\142\221\152\227\34")][3]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\146\0\191\19", "\151\56\165\55\154\35\83")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\20\82\171\240", "\142\192\35\101")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\45\124\230\183", "\118\182\21\73\195\135\236\204")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\30\107\73\5\84", "\157\104\92\122\32\100\109")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\181\241\152\143\109", "\203\195\198\175\170\93\71\237")]];
													FlatIdent_6DC53 = 2;
												end
												if (FlatIdent_6DC53 == 8) then
													for v433 = v128 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\15\133\80\13", "\95\227\55\176\117\61")][4] do
														v127 = v127 .. TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\14\38\112\14\251", "\203\120\30\67\43")][v433];
													end
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\125\30\170\137", "\185\145\69\45\143")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\156\71\76\227\140", "\188\234\127\121\198")][2]] = v127;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\101\68\198\104", "\227\88\82\115")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\72\237\226\82", "\19\35\127\218\199\98")] + 1;
													FlatIdent_6DC53 = 9;
												end
												if (5 == FlatIdent_6DC53) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\99\184\87\168", "\86\163\91\141\114\152")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\92\39\54\106", "\90\51\107\20\19")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\167\210\170\109", "\93\237\144\229\143")]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\3\174\163\92\91", "\38\117\150\144\121\107")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\227\187\127\125", "\90\77\219\142")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\92\116\124\28", "\26\134\100\65\89\44\103")][3]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\180\103\102\244", "\196\145\131\80\67")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\231\81\77\72", "\136\126\208\102\104\120")] + 1;
													FlatIdent_6DC53 = 6;
												end
												if (FlatIdent_6DC53 == 7) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\197\225\122\66\131", "\103\179\217\79")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\224\79\144\17", "\195\42\215\124\181\33\236")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\14\96\123\117", "\152\109\57\87\94\69")]];
													v128 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\143\95\230\238", "\200\153\183\106\195\222\178\52")][3];
													v127 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\187\219\120\25", "\58\82\131\232\93\41")][v128];
													FlatIdent_6DC53 = 8;
												end
												if (FlatIdent_6DC53 == 3) then
													v129 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\234\91\104\167", "\192\209\210\110\77\151\186")][2];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\91\113\172\175", "\164\128\99\66\137\159")][v129](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\209\186\251\80", "\222\96\233\137")][v129 + 1]);
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\228\240\90\216", "\144\217\211\199\127\232\147")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\120\105\109\133", "\36\152\79\94\72\181\37\98")] + 1;
													FlatIdent_6DC53 = 4;
												end
												if (FlatIdent_6DC53 == 2) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\19\109\144\1", "\156\78\43\94\181\49\113")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\176\145\230\91", "\25\18\136\164\195\107\35")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\117\252\10\34", "\216\136\77\201\47\18\220\161")][3];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\187\124\159\88", "\226\77\140\75\186\104\188")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\153\135\122\31", "\47\217\174\176\95")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\133\35\71\226", "\70\216\189\22\98\210\52\24")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\136\240\194\131", "\179\186\191\195\231")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\104\79\161\169", "\132\153\95\120")]];
													FlatIdent_6DC53 = 3;
												end
												if (0 == FlatIdent_6DC53) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\210\66\17\108\138", "\186\78\227\112\38\73")] = nil;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\6\175\13\22\42", "\26\156\55\157\53\51")] = nil;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\137\68\128\253\0", "\48\236\184\118\185\216")] = nil;
													FlatIdent_6DC53 = 1;
												end
											end
										else
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\14\27\176\143\86", "\43\120\35\131\170\102\54")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\94\210\243\245", "\228\52\102\231\214\197\208")][2]]();
										end
									elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\184\35\143\186", "\182\126\128\21\170\138\235\121")] <= 5) then
										if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\130\99\163\214", "\102\235\186\85\134\230\115\80")] > 4) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\93\109\8\55\132", "\66\55\108\94\63\18\180")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\213\208\114\119", "\57\116\237\229\87\71")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\224\190\191\50\190", "\39\202\209\141\135\23\142")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\107\92\79\98", "\152\159\83\105\106\82")][4];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\151\151\2\171\140\12", "\60\225\166\49\146\169")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\79\124\125\68\87", "\103\79\126\79\74\97")] + 2;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\46\135\35\27\74", "\122\218\31\179\19\62")] = {TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\142\158\132\153", "\37\211\182\173\161\169\193")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\107\30\142\109\43", "\217\151\90\45\185\72\27")]](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\36\180\87\6", "\54\163\28\135\114")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\138\14\213\11\47", "\31\72\187\61\226\46")] + 1], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\94\16\151\23", "\68\163\102\35\178\39\30")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\33\137\158\70\229", "\113\222\16\186\167\99\213\227")]])};
											for v434 = 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\95\168\174\107\94", "\150\78\110\155")] do
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\157\116\164\244", "\32\229\165\71\129\196\126\223")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\216\151\216\196\133", "\181\163\233\164\225\225")] + v434] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\218\106\39\21\219", "\23\48\235\94")][v434];
											end
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\139\140\12\18\99", "\178\28\186\184\61\55\83")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\156\19\108\183\94", "\149\164\173\39\92\146\110")][1];
											if TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\118\68\78\95\75", "\123\147\71\112\127\122")] then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\149\209\52\22", "\38\172\173\226\17")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\91\64\127\182\8\65", "\143\45\113\76")]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\233\72\109\253\232", "\92\216\216\124")];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\101\251\5\173", "\157\59\82\204\32")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\102\182\191\185", "\209\88\94\131\154\137\138\179")][3];
											else
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\246\147\57\78", "\66\72\193\164\28\126\67\81")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\123\255\29\118", "\22\135\76\200\56\70")] + 1;
											end
										else
											local FlatIdent_45D37 = 0;
											while true do
												if (FlatIdent_45D37 == 1) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\175\246\22\52\113", "\65\42\158\194\34\17")] = 0;
													for v437 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\118\6\94\104\189", "\142\122\71\50\108\77\141\123")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\3\250\170\93\107", "\91\117\194\159\120")][4] do
														local FlatIdent_90A41 = 0;
														while true do
															if (FlatIdent_90A41 == 0) then
																TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\76\106\76\112\161", "\68\122\125\94\120\85\145")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\77\155\10\141\137", "\218\119\124\175\62\168\185")] + 1;
																TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\168\27\129\245", "\164\197\144\40")][v437] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\161\254\216\152\230", "\214\227\144\202\235\189")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\244\211\47\85\227", "\92\141\197\231\27\112\211\51")]];
																break;
															end
														end
													end
													break;
												end
												if (FlatIdent_45D37 == 0) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\97\172\118\24\177", "\129\237\80\152\68\61")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\71\240\81\182\76", "\56\49\200\100\147\124\119")][2];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\111\235\163\137\110", "\144\172\94\223")] = {TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\87\241\2\116", "\39\68\111\194")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\247\179\149\60\231", "\215\182\198\135\167\25")]](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\17\185\13\221", "\40\237\41\138")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\37\174\170\15\151", "\42\167\20\154\152")] + 1])};
													FlatIdent_45D37 = 1;
												end
											end
										end
									elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\167\220\230\129", "\177\134\159\234\195")] > 6) then
										local FlatIdent_6D9D2 = 0;
										while true do
											if (FlatIdent_6D9D2 == 1) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\127\235\28\146\187", "\189\224\78\223\43\183\139")] = {};
												v146 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\173\218\83\145", "\161\78\156\234\118")]({}, {[LUAOBFUSACTOR_DECRYPT_STR_0("\152\136\192\210\163\178\209", "\188\199\215\169")]=function(v440, v441)
													local FlatIdent_25A9F = 0;
													while true do
														if (FlatIdent_25A9F == 0) then
															TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\93\11\41\173\172", "\136\156\105\63\27")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\221\45\99\94\220", "\84\123\236\25")][v441];
															return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\223\254\69\233\229", "\213\144\235\202\119\204")][1][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\76\138\120\109\115", "\45\67\120\190\74\72\67")][2]];
														end
													end
												end,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\29\227\160\238\129\224\237\37\58", "\137\64\66\141\197\153\232\142")]=function(v443, v444, v445)
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\132\118\240\205\83", "\232\99\176\66\198")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\112\124\81\62\221", "\76\140\65\72\102\27\237\153")][v444];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\142\66\132\146\81", "\222\42\186\118\178\183\97")][1][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\184\16\220\24\188", "\234\61\140\36")][2]] = v445;
												end});
												FlatIdent_6D9D2 = 2;
											end
											if (FlatIdent_6D9D2 == 2) then
												for v448 = 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\133\239\55\95", "\111\65\189\218\18")][4] do
													local FlatIdent_72421 = 0;
													while true do
														if (FlatIdent_72421 == 1) then
															if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\188\246\117\146\184", "\76\183\136\194")][1] == 56) then
																TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\183\177\111\21\31", "\116\26\134\133\88\48\47")][v448 - 1] = {TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\153\243\161\237", "\18\126\161\192\132\221")],TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\124\250\93\19\15", "\54\63\72\206\100")][3]};
															else
																TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\222\8\17\45\160\43", "\27\168\57\37\26\133")][v448 - 1] = {v58,TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\254\40\241\146\125", "\183\77\202\28\200")][3]};
															end
															TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\107\219\77\71", "\104\119\83\233")][#TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\160\117\103\19", "\35\149\152\71\66")] + 1] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\15\185\22\231\127\73", "\90\121\136\34\208")];
															break;
														end
														if (FlatIdent_72421 == 0) then
															TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\28\76\112\91", "\207\35\43\123\85\107\60")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\102\253\247\175\41", "\25\16\202\192\138")] + 1;
															TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\159\249\187\236\164", "\148\157\171\205\130\201")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\131\39\108\129", "\150\67\180\20\73\177")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\79\77\8\221", "\45\237\120\122")]];
															FlatIdent_72421 = 1;
														end
													end
												end
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\86\6\91\151", "\126\167\110\53")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\72\123\189\140", "\95\93\112\78\152\188")][2]] = v29(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\164\209\64\161\238", "\178\161\149\229\117\132\222")], v146, v59);
												break;
											end
											if (FlatIdent_6D9D2 == 0) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\171\186\107\245\140\237", "\169\221\139\95\192")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\220\43\122\114", "\70\190\235\31\95\66")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\186\79\163\181", "\133\218\130\122\134")][3]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\174\183\146\153\243", "\88\92\159\131\164\188\195")] = nil;
												FlatIdent_6D9D2 = 1;
											end
										end
									else
										local FlatIdent_3B7E2 = 0;
										while true do
											if (FlatIdent_3B7E2 == 2) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\35\2\171\239", "\223\176\27\55\142")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\236\157\240\116", "\213\68\219\174")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\29\183\116\162\122", "\31\107\128\67\135\74\165\95")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\176\175\8\17", "\209\184\136\156\45\33")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\144\32\77\232", "\216\103\168\21\104")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\245\16\225\40", "\196\24\205\35")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\211\182\67\126", "\102\78\235\131")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\118\97\1\23", "\84\154\78\84\36\39\89\215")][4]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\182\1\29\85", "\101\157\129\54\56")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\254\221\238\115", "\25\125\201\234\203\67")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\172\77\70\68", "\115\25\148\120\99\116\71")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\106\234\97\17", "\33\108\93\217\68")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\28\246\232\139", "\205\187\43\193")]];
												FlatIdent_3B7E2 = 3;
											end
											if (FlatIdent_3B7E2 == 5) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\156\187\227\112\78", "\126\234\131\214\85")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\130\26\31\31", "\47\228\181\41\58")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\176\171\142\126\83", "\127\198\156\185\91\99\80")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\66\159\181\247", "\190\149\122\172\144\199\107\89")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\93\164\187\174", "\158\82\101\145\158")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\102\166\87\83\20", "\36\16\158\98\118")][3]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\65\148\190\8", "\133\160\118\163\155\56\136\71")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\245\38\183\230", "\213\150\194\17\146\214\127")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\241\241\145\22", "\86\123\201\196\180\38\196\194")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\191\138\234\167", "\207\151\136\185")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\212\127\199\36", "\17\200\227\72\226\20\24")]];
												FlatIdent_3B7E2 = 6;
											end
											if (FlatIdent_3B7E2 == 0) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\138\137\245\228\70", "\67\232\187\189\204\193\118\198")] = nil;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\127\224\112\126\82", "\143\235\78\213\64\91\98")] = nil;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\25\209\184\53\230", "\214\237\40\228\137\16")] = nil;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\187\188\156\83", "\198\229\131\143\185\99")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\71\212\253\54\1", "\19\49\236\200")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\111\165\242\180", "\218\158\87\150\215\132")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\70\140\167\102", "\173\155\126\185\130\86\66")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\254\239\130\216", "\140\133\198\218\167\232")][4]];
												FlatIdent_3B7E2 = 1;
											end
											if (FlatIdent_3B7E2 == 9) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\182\157\115\67", "\71\36\142\168\86\115\176")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\246\33\250\83", "\41\191\193\18\223\99\222\54")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\113\144\111\250", "\202\203\70\167\74")]];
												v150 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\89\137\118\33", "\17\76\97\188\83")][3];
												v149 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\127\138\114\96", "\195\229\71\185\87\80\227\43")][v150];
												for v451 = v150 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\164\85\21\191", "\143\128\156\96\48")][4] do
													v149 = v149 .. TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\137\163\87\71", "\119\216\177\144\114")][v451];
												end
												FlatIdent_3B7E2 = 10;
											end
											if (FlatIdent_3B7E2 == 1) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\121\227\56\212", "\228\213\78\212\29")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\27\225\64\187", "\139\231\44\214\101")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\183\83\27\64", "\118\185\143\102\62\112\209\81")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\39\122\163\245", "\88\60\16\73\134\197\117\124")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\189\175\141\17", "\33\48\138\152\168")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\78\99\20\145", "\87\18\118\80\49\161")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\70\143\229\224", "\208\44\126\186\192")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\66\247\131\68", "\46\151\122\196\166\116\156\169")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\181\19\95\171", "\155\133\141\38\122")][3]] - TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\114\255\4\31", "\197\69\74\204\33\47\31")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\23\15\194\160", "\231\144\47\58")][4]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\143\141\48\72", "\89\210\184\186\21\120\93\175")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\4\43\144\41", "\90\209\51\28\181\25")] + 1;
												FlatIdent_3B7E2 = 2;
											end
											if (FlatIdent_3B7E2 == 8) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\124\239\82\13", "\61\155\75\216\119")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\252\229\121\8", "\189\100\203\210\92\56\105")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\9\168\109\127", "\72\79\49\157")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\231\98\249\216", "\220\232\208\81")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\233\178\117\124", "\193\149\222\133\80\76\58")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\5\28\151\150", "\178\166\61\47")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\18\189\63\154", "\94\155\42\136\26\170")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\103\115\240\212", "\213\228\95\70")][3];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\236\149\193\39", "\23\74\219\162\228")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\177\17\234\107", "\91\89\134\38\207")] + 1;
												FlatIdent_3B7E2 = 9;
											end
											if (FlatIdent_3B7E2 == 4) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\224\164\152\23", "\126\61\215\147\189\39")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\168\74\0\40", "\37\24\159\125")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\254\32\7\138", "\34\186\198\21")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\95\150\24\146", "\162\152\104\165\61")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\120\229\56\32", "\133\173\79\210\29\16")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\36\190\110\221", "\75\237\28\141")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\7\153\244\127", "\129\188\63\172\209\79\123\135")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\188\179\136\16", "\173\32\132\134")][3];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\76\95\170\254", "\173\46\123\104\143\206\81")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\74\117\207\21", "\97\212\125\66\234\37\227")] + 1;
												FlatIdent_3B7E2 = 5;
											end
											if (FlatIdent_3B7E2 == 10) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\223\113\170\7\153", "\34\169\73\153")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\180\94\206\250", "\235\202\140\107")][2]] = v149;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\35\99\237\185", "\165\108\20\84\200\137\71\151")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\227\124\205\42", "\232\26\212\75")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\17\39\173\167", "\151\87\41\18\136")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\248\153\149\174", "\158\59\207\170\176")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\89\9\100\12\220", "\236\47\62\83\41")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\241\115\126\250", "\226\154\201\64\91\202")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\17\72\93\26", "\220\161\41\125\120\42")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\41\245\75\236", "\110\220\17\192")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\98\33\103\95\187", "\199\20\25\84\122\139\87\145")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\81\136\235\75", "\138\39\105\189\206\123")][4]];
												break;
											end
											if (FlatIdent_3B7E2 == 3) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\42\86\154\174", "\191\158\18\101")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\155\210\242\255", "\207\165\163\231\215")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\161\170\19\116", "\16\166\153\153\54\68")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\235\149\3\100", "\153\178\211\160\38\84\65")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\83\15\110\210", "\75\226\107\58")][4]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\137\70\63\65", "\173\56\190\113\26\113\162")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\137\122\64\167", "\151\171\190\77\101")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\119\173\236\168", "\107\165\79\152\201\152\29")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\25\187\142\4", "\31\55\46\136\171\52")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\127\139\177\129", "\148\177\72\188")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\176\238\4\150\246", "\179\198\214\55")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\84\39\51\21", "\179\144\108\18\22\37")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\251\72\204\159", "\175\166\195\123\233")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\154\8\12\160", "\144\143\162\61\41")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\139\72\21\34", "\83\128\179\125\48\18\231")][4]];
												FlatIdent_3B7E2 = 4;
											end
											if (FlatIdent_3B7E2 == 6) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\25\72\146\153", "\159\208\33\123\183\169\145\143")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\228\2\109\115\162", "\86\146\58\88")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\135\185\133\254", "\154\56\191\138\160\206\137\86")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\1\160\194\44", "\172\230\57\149\231\28\90\225")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\242\211\151\120", "\187\98\202\230\178\72")][4]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\182\243\117\26", "\42\65\129\196\80")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\29\10\159\71", "\142\98\42\61\186\119\103\98")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\231\87\77\104", "\104\88\223\98")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\160\177\139\82", "\141\36\151\130\174\98")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\45\149\72\212", "\109\228\26\162")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\189\174\61\176", "\134\62\133\157\24\128")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\253\79\156\127", "\182\103\197\122\185\79\209")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\223\178\50\80", "\40\147\231\129\23\96")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\160\217\0\235", "\188\21\152\236\37\219\204")][3]];
												FlatIdent_3B7E2 = 7;
											end
											if (FlatIdent_3B7E2 == 7) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\190\96\73\16", "\108\32\137\87")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\191\87\227\127", "\57\202\136\96\198\79\153\43")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\123\255\226\221", "\152\203\67\202\199\237\199")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\20\243\74\79", "\134\154\35\192\111\127\21\25")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\113\94\79\112", "\178\216\70\105\106\64")]];
												v151 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\115\47\179\153", "\224\95\75\26\150\169\181\180")][2];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\29\130\139\109\20", "\22\107\186\184\72\36\204")][v151] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\229\119\11\94", "\110\135\221\68\46")][v151](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\110\95\174\158", "\91\131\86\108\139\174\211")][v151 + 1]);
												FlatIdent_3B7E2 = 8;
											end
										end
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\95\223\104\163", "\159\127\103\233\77\147\153\175")] <= 11) then
									if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\168\178\239\16", "\171\103\144\132\202\32")] <= 9) then
										if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\6\119\191\73\64", "\108\112\79\137")] == 8) then
											if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\154\39\109\253", "\85\95\162\20\72\205\97\137")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\165\127\153\93", "\173\151\157\74\188\109\152")][2]] == TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\80\107\152\140", "\147\68\104\88\189\188\52\181")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\208\222\149\74", "\176\122\232\235")][4]]) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\34\109\10\190", "\142\224\21\90\47")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\98\131\112\19\244", "\229\20\180\71\54\196\235")] + 1;
											else
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\41\150\166\165", "\224\73\30\161\131\149\202")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\189\164\21\161", "\48\145\133\145")][3];
											end
										else
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\29\227\189\148\124", "\76\58\44\213\142\177")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\124\71\104\40", "\24\171\68\114\77")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\69\3\23\215", "\205\143\125\48\50\231\190\100")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\246\66\86\164\179", "\194\161\199\116\101\129\131\191")]](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\117\155\237\167", "\194\140\68\168\200\151")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\163\134\96\165", "\149\34\155\181\69")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\172\131\169\70\173", "\154\99\157\181")] + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\87\185\229\188", "\140\237\111\140\192")][3]));
										end
									elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\16\65\43\93\86", "\120\102\121\29")] == 10) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\187\234\126\252", "\91\204\131\217")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\167\0\145\227", "\158\174\159\53\180\211\189")][2]] = {};
									else
										local FlatIdent_15A17 = 0;
										while true do
											if (FlatIdent_15A17 == 0) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\172\187\136\50\229", "\213\50\157\141\189\23")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\126\209\229\34", "\196\158\70\228\192\18")][2];
												do
													return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\7\66\11\137", "\185\42\63\113\46")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\194\140\119\108\94\132", "\123\180\189\65\89")]], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\212\163\161\217", "\233\162\236\144\132")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\149\168\79\252\166", "\63\210\164\158\122\217\150")] + 1];
												end
												break;
											end
										end
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\147\160\169\25", "\152\83\171\150\140\41")] <= 13) then
									if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\189\213\118\132", "\104\226\133\227\83\180\123")] > 12) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\90\117\6\70\91", "\48\99\107\67")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\247\43\135\104\43", "\27\190\198\29\176\77")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\19\174\113\249", "\46\143\43\157\84\201")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\32\3\135\15", "\168\55\24\54\162\63\115")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\162\117\197\130", "\174\119\154\64\224\178")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\38\150\62\85", "\132\74\30\165\27\101\199\122")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\191\170\226\247", "\212\79\135\159\199\199\213")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\247\226\2\12", "\120\25\192\213\39\60\183")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\14\23\104\13\72", "\40\120\32\95")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\243\108\63\255", "\127\90\203\89\26\207")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\203\98\252\142\89", "\157\189\85\207\171\105")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\246\143\240\83", "\99\166\193\184\213")]];
										v167 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\239\213\254\92", "\234\182\215\224\219\108")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\217\232\112\144", "\85\160\225\219")][v167](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\84\208\140\102", "\43\60\101\227\169\86\188")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\102\144\130\250\10", "\87\16\168\177\223\58\172\217")], v167 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\149\12\152\107", "\91\84\173\57\189")][3]));
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\6\238\91\185\240", "\182\112\217\108\156\192")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\95\31\170\219", "\235\202\104\40\143")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\211\78\252\93", "\217\109\235\123")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\222\45\19\32", "\221\71\233\30\54\16\176\173")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\171\9\250\100", "\223\84\156\62")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\164\177\152\231", "\91\182\156\130\189\215")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\43\249\16\46", "\53\30\19\204")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\184\37\193\247", "\199\153\128\16\228")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\125\178\92\247", "\199\177\74\133\121")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\158\235\187\103", "\74\216\169\220\158\87\166")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\123\70\105\10", "\58\136\67\115\76")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\253\139\28\213", "\61\145\202\184\57\229\64\203")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\5\222\2\12", "\39\60\50\233")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\107\240\105\210", "\195\122\83\195\76\226\72\210")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\140\110\187\113", "\65\132\180\91\158")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\36\130\107\85", "\78\101\28\177")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\236\181\20\117", "\49\69\212\128")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\84\133\183\177", "\129\119\108\176\146")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\152\80\136\117", "\124\92\175\103\173\69\110")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\111\84\114\145", "\87\161\88\99")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\161\186\137\231", "\67\114\153\143\172\215\176")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\245\189\75\238", "\110\222\194\142")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\142\76\236\2", "\193\119\185\123\201\50")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\80\170\99\95", "\127\23\104\153\70\111\25")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\95\243\234\123", "\211\105\103\198\207\75\76\215")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\255\227\170\46", "\214\174\199\208\143\30\108\218")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\220\94\239\245", "\41\113\228\107\202\197\54\184")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\213\109\25\42", "\60\26\237\88")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\125\35\163\254", "\206\184\74\20\134")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\179\185\244\163", "\172\88\132\142\209\147\42\88")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\210\153\72\102", "\222\231\234\172\109\86\149")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\184\147\93\189", "\120\141\143\160")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\251\225\23\16", "\50\32\204\214")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\31\102\60\227", "\113\230\39\85\25\211")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\227\83\173\119", "\43\190\219\102\136\71\171\203")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\38\101\28\114", "\57\66\30\80")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\143\247\80\212", "\228\73\184\192\117\228\89\148")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\222\34\81\159", "\116\175\233\21")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\160\235\3\139", "\95\158\152\222\38\187\81")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\234\102\247\243", "\168\152\221\85\210\195")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\137\162\194\251", "\231\203\190\149")]];
										v167 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\101\182\180\236", "\123\173\93\131\145\220\149")][2];
										v166 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\156\190\100\36", "\153\118\164\141\65\20")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\106\211\167\167", "\96\142\82\230\130\151")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\89\232\28\7\180", "\142\47\208\47\34\132")][v167 + 1] = v166;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\230\87\71\11", "\60\150\222\100\98\59")][v167] = v166[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\83\100\2\19\139", "\81\37\92\55\54\187\218")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\19\250\114\209", "\225\96\36\205\87")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\241\21\60\44", "\105\137\198\34\25\28\47")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\241\20\51\144", "\160\113\201\33\22")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\194\15\255\226\249", "\205\180\56\204\199\201")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\137\107\93\211", "\120\227\190\92")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\4\76\62\115", "\130\93\60\127\27\67\60\185")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\106\109\11\176", "\29\40\82\88\46\128\35")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\45\29\129\88\81", "\216\91\37\180\125\97")][3];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\33\75\134\7", "\55\69\22\124\163")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\132\11\173\143", "\148\24\179\60\136\191\17\48")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\114\172\229\166", "\150\210\74\153\192")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\159\107\207\37", "\212\131\168\88\234\21\26")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\83\35\222\201\104", "\71\37\20\233\236\88")]];
										v167 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\30\229\83\16", "\60\173\38\208\118\32\140\44")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\106\178\150\112", "\175\33\82\129\179\64")][v167] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\183\99\138\108", "\210\142\143\80\175\92")][v167](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\184\160\131\233", "\166\217\137\147")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\251\33\227\161", "\38\131\195\18\198\145")], v167 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\142\111\174\104", "\52\51\182\90\139\88")][3]));
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\238\135\162\19", "\35\150\217\176\135")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\7\92\73\39", "\22\153\48\107\108\23\35")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\24\221\238\95\47", "\137\110\229\219\122\31\21\33")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\234\107\62\102", "\30\122\221\88\27\86\43\68")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\127\188\195\104", "\230\88\72\139")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\236\69\94\83", "\56\18\212\118\123\99\104")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\177\173\150\143", "\190\126\137\152\179\191")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\90\33\142\250", "\32\72\98\18\171\202")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\208\103\49\167", "\151\100\232\82\20")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\105\129\163\77\47", "\104\31\185\150")][4]];
									else
										local FlatIdent_912A7 = 0;
										while true do
											if (FlatIdent_912A7 == 0) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\232\171\167\162\156", "\160\188\217\147\151\135\172\128")] = nil;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\140\72\161\127\153", "\169\111\189\112\144\90")] = nil;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\219\118\232\239", "\226\173\227\69\205\223\224\105")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\102\119\30\159", "\123\56\94\66\59\175")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\27\38\164\74", "\225\154\35\19\129\122\158")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\88\184\18\165", "\84\58\96\139\55\149\135\176")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\103\246\69\30", "\94\115\95\195\96\46\175")][4]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\28\104\120\126", "\128\35\43\95\93\78\77\231")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\74\97\113\71", "\201\196\125\86\84\119\30")] + 1;
												FlatIdent_912A7 = 1;
											end
											if (FlatIdent_912A7 == 7) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\224\149\226\8", "\56\40\216\166\199")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\236\64\106\118", "\79\70\212\117")][2]] = {};
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\65\182\131\169", "\109\199\118\129\166\153")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\231\32\179\97", "\150\81\208\23")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\157\181\206\169", "\235\153\165\128")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\30\241\106\22", "\158\219\41\194\79\38\70\202")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\114\120\71\190", "\232\35\69\79\98\142\182")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\88\76\184\41", "\157\25\96\127")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\219\160\64\0", "\81\199\227\149\101\48")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\10\174\84\166", "\219\29\50\155\113\150\230\92")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\120\144\62\175", "\45\177\64\165\27\159\40")][4];
												FlatIdent_912A7 = 8;
											end
											if (3 == FlatIdent_912A7) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\29\255\115\13", "\45\32\37\204\86\61\169\79")][v181] = v180[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\67\13\80\249\229", "\28\53\53\101\220\213")][4]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\11\95\4\10", "\191\109\60\104\33\58\193\48")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\128\79\162\215", "\135\231\183\120")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\82\25\161\101", "\201\134\106\44\132\85\122")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\91\36\122\81", "\67\86\108\23\95\97\108\168")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\111\27\79\244", "\48\196\88\44\106\196\68\181")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\135\143\102\208", "\76\226\191\188\67\224\196\194")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\112\82\181\173", "\157\185\72\103\144")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\235\223\63\248", "\209\57\211\234\26\200")][3];
												FlatIdent_912A7 = 4;
											end
											if (FlatIdent_912A7 == 4) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\153\241\196\0", "\178\97\174\198\225\48")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\1\83\180\40", "\111\175\54\100\145\24\134")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\65\117\80\19", "\117\35\121\64")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\203\234\189\147\115", "\47\189\221\142\182\67")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\54\232\112\142\24", "\73\64\223\71\171\40\201\64")]];
												v181 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\213\145\28\240", "\29\106\237\164\57\192")][2];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\252\180\255\133", "\146\209\196\135\218\181\178\192")][v181](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\97\208\84\0", "\199\77\80\227\113\48")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\103\13\136\122", "\173\74\95\62")], v181 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\65\9\115\155", "\220\166\121\60\86\171\103")][3]));
												FlatIdent_912A7 = 5;
											end
											if (FlatIdent_912A7 == 6) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\197\157\76\176\111", "\185\179\165\127\149\95")][v181 + 1] = v180;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\71\45\156\177\71", "\119\49\21\175\148")][v181] = v180[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\237\67\24\125", "\149\55\213\118\61\77\41\234")][4]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\81\157\131\185", "\123\125\102\170\166\137\89\207")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\87\15\120\94", "\201\46\96\56\93\110\227")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\91\187\188\69", "\161\219\99\142\153\117")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\230\245\54\157", "\173\28\209\198\19")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\187\224\254\37", "\219\21\140\215")]];
												FlatIdent_912A7 = 7;
											end
											if (FlatIdent_912A7 == 5) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\85\106\245\107", "\122\137\98\93\208\91\170")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\182\75\10\133", "\170\231\129\124\47\181\210\201")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\227\111\117\90", "\74\235\219\90\80\106")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\148\8\126\106", "\146\44\163\59\91\90\148\26")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\122\239\196\25", "\41\21\77\216\225")]];
												v181 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\21\39\0\68", "\37\116\45\18")][2];
												v180 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\167\5\231\251", "\203\175\159\54\194")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\150\76\126\10", "\162\27\174\121\91\58\47")][3]];
												FlatIdent_912A7 = 6;
											end
											if (FlatIdent_912A7 == 2) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\8\39\101\159", "\30\69\48\18\64\175\175")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\123\76\169\107", "\91\144\76\127\140")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\95\17\100\131", "\176\128\104\38\65\179\218\181")]];
												v181 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\156\151\80\128", "\117\176\164\162")][2];
												v180 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\154\86\181\138", "\25\228\162\101\144\186")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\110\236\75\162", "\132\40\86\217\110\146")][3]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\147\116\249\247", "\62\30\171\71\220\199\19\156")][v181 + 1] = v180;
												FlatIdent_912A7 = 3;
											end
											if (FlatIdent_912A7 == 1) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\182\81\250\147", "\223\163\142\100")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\65\144\244\232", "\216\226\118\163\209")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\167\76\68\7", "\95\222\144\123\97\55\16")]];
												v181 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\15\220\239\6\179", "\131\121\228\218\35")][2];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\136\113\68\41", "\123\185\176\66\97\25")][v181](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\222\94\74\20\69", "\81\168\111\121\49\117\79\56")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\82\182\243\151", "\214\167\106\133")], v181 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\96\25\10\100", "\185\73\88\44\47\84\31")][3]));
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\128\77\229\131", "\159\232\183\122\192\179")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\101\255\100\116", "\65\68\82\200")] + 1;
												FlatIdent_912A7 = 2;
											end
											if (8 == FlatIdent_912A7) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\65\88\239\34", "\18\125\118\111\202")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\107\14\191\96", "\155\48\92\57\154\80\205\167")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\149\238\250\168", "\37\217\173\219\223\152\203")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\82\76\115\31", "\150\105\101\127\86\47\200")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\165\164\240\151", "\160\174\146\147\213\167")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\188\73\1\92", "\33\32\132\122\36\108")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\76\39\14\44", "\28\217\116\18\43")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\15\131\17\128", "\92\178\55\182\52\176\206")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\109\36\80\74", "\117\122\85\17")][4];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\184\125\1\246", "\189\232\143\74\36\198")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\253\93\11\135", "\106\156\202\106\46\183")] + 1;
												FlatIdent_912A7 = 9;
											end
											if (FlatIdent_912A7 == 9) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\65\46\118\122", "\74\93\121\27\83")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\236\181\59\45", "\30\29\219\134")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\67\240\78\191\164", "\110\53\199\121\154\148\63\120")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\66\172\122\9", "\156\97\122\159\95\57")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\238\143\189\91", "\95\174\214\186\152\107\98")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\86\36\206\67", "\166\233\110\17\235\115")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\86\145\132\162", "\28\24\110\164\161\146\222")][4];
												break;
											end
										end
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\155\0\96\11", "\69\59\163\54")] <= 14) then
									if not TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\240\153\15\99", "\214\208\200\170\42\83\173")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\121\39\229\37", "\21\185\65\18\192")][2]] then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\1\10\94\241", "\193\158\54\61\123")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\70\119\252\101", "\217\85\113\64")] + 1;
									else
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\88\155\133\191", "\133\43\111\172\160\143\226")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\251\5\148\144", "\160\171\195\48\177")][3];
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\197\91\32\104\12", "\167\179\99\22\77\60\161\207")] == 15) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\43\211\15\9\81", "\44\97\31\235\56")] = nil;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\90\160\252\180\94", "\196\145\110\152")] = nil;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\118\173\183\8", "\146\56\78\158")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\131\26\163\10", "\58\77\187\47\134")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\109\244\66\181", "\126\114\85\193\103\133\78\52")][3];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\140\101\61\148", "\24\164\187\82")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\141\11\239\161", "\145\145\186\60\202")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\136\102\65\182", "\100\134\176\83")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\197\150\17\248\227", "\117\179\161\34\221\211")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\91\231\173\131\84", "\197\45\208\154\166\100\159")]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\172\213\249\99", "\83\73\148\230\220")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\135\163\165\191", "\233\83\191\150\128\143")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\222\154\55\93", "\109\151\230\175\18")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\173\22\1\208", "\224\192\154\33\36")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\3\79\199\211", "\226\227\52\120")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\179\185\225\26", "\217\101\139\140\196\42\223\183")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\88\252\95\20", "\36\122\111\207\122")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\95\179\253\232", "\84\108\104\132\216\216")]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\67\149\29\176", "\34\172\123\166\56\128\196")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\241\253\142\26", "\116\196\201\200\171\42\19\181")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\222\174\24\69", "\124\22\230\155\61\117\96")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\243\179\174\174", "\149\165\203\134\139\158\141")][4];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\251\23\99\99", "\70\83\204\32")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\24\214\92\197\94", "\224\110\225\107")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\46\136\116\96", "\164\148\22\189\81\80\164")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\215\36\246\119", "\23\210\224\23\211\71\43")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\209\71\242\5", "\144\201\230\112\215\53\75\188")]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\67\157\74\175\166", "\197\53\165\121\138\150")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\135\140\101\189", "\64\141\191\185")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\178\229\159\167", "\198\99\138\208\186\151\169")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\162\212\27\93", "\62\109\149\227")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\223\222\145\80", "\96\147\232\233\180")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\96\79\14\221", "\89\72\88\122\43\237")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\236\246\115\75", "\123\76\219\197\86")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\143\66\73\190", "\95\56\184\117\108\142")]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\154\117\169\160", "\140\144\162\70")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\112\12\55\190", "\142\176\72\57\18")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\176\105\69\97\246", "\68\198\81\112")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\87\229\81\28", "\125\215\111\208\116\44")][4];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\16\24\182\40", "\60\103\39\47\147\24")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\93\160\197\134", "\46\140\106\151\224\182\147")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\117\40\7\187", "\34\139\77\29")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\167\78\17\121", "\73\208\144\125\52")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\187\221\142\151", "\171\74\140\234\171\167\112\51")]];
									v488 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\86\25\26\161", "\205\79\110\44\63\145")][2];
									v487 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\7\108\141\228", "\124\199\63\95\168\212\107\196")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\16\240\6\127\244", "\147\102\200\51\90\196\151\233")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\45\168\188\136\238", "\91\91\144\143\173\222\128")][v488 + 1] = v487;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\248\31\20\251", "\46\67\192\44\49\203")][v488] = v487[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\142\123\231\116", "\101\100\182\78\194\68\196")][4]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\31\103\176\221", "\181\40\40\80\149\237\43\24")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\3\229\114\119\234", "\114\117\210\69\82\218\42")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\142\13\54\252", "\204\36\182\56\19")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\28\143\198\45", "\114\137\43\188\227\29\88")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\74\255\85\180", "\112\132\125\200")]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\224\160\54\10", "\149\157\216\147\19\58")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\223\222\77\141\153", "\168\169\230\120")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\213\209\82\172", "\119\156\237\228")][3];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\134\87\59\147", "\30\163\177\96")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\119\2\204\109", "\180\122\64\53\233\93\75")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\79\70\120\134", "\93\182\119\115")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\72\128\201\231", "\158\226\127\179\236\215")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\151\158\147\161", "\182\145\160\169")]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\120\99\83\247", "\111\89\64\80\118\199")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\239\91\3\239", "\38\223\215\110")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\131\89\128\251", "\203\62\187\108\165")][3];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\35\31\123\33", "\176\153\20\40\94\17\158")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\100\236\22\149", "\165\200\83\219\51")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\178\33\62\129", "\132\167\138\20\27\177\213\220")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\228\130\176\9\108", "\92\146\181\131\44")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\169\22\195\238", "\189\43\158\33\230\222\32\119")]];
									v488 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\152\24\20\216", "\232\62\160\45\49")][2];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\98\139\166\233\241", "\193\20\179\149\204")][v488] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\89\210\135\135", "\162\183\97\225")][v488](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\148\183\178\76", "\193\73\165\132\151\124\130")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\154\250\30\230", "\214\173\162\201\59\214")], v488 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\33\255\4\135", "\64\67\25\202\33\183")][3]));
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\185\38\249\126", "\35\137\142\17\220\78\178")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\25\114\68\125", "\97\77\46\69")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\135\85\224\143", "\197\191\191\96")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\220\126\190\11\8", "\45\170\73\141\46\56\136")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\151\88\154\160\255", "\103\225\111\173\133\207\231")]];
									v488 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\220\160\16\28", "\53\44\228\149")][2];
									v487 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\131\104\64\155", "\68\173\187\91\101\171")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\87\71\130\25", "\185\156\111\114\167\41\226\29")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\29\93\69\101\228", "\131\107\101\118\64\212")][v488 + 1] = v487;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\142\127\110\23", "\169\161\182\76\75\39\160")][v488] = v487[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\10\226\206\75", "\200\185\50\215\235\123\66")][4]];
								else
									local FlatIdent_3CDED = 0;
									local v501;
									local v502;
									while true do
										if (FlatIdent_3CDED == 2) then
											for v580 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\103\16\103\58\218", "\100\28\82\32\87\31\234")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\5\184\52\171", "\94\81\50\128\17\155\182\136")] do
												local FlatIdent_512FF = 0;
												while true do
													if (FlatIdent_512FF == 0) then
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\105\180\106\167\228", "\231\235\92\132\89\130\212\124")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\225\164\108\148\21", "\37\158\212\148\95\177")] + 1;
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\98\68\247\194\93", "\109\20\124\196\231")][v580] = v501[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\232\36\246\116\112", "\64\192\221\20\197\81")]];
														break;
													end
												end
											end
											break;
										end
										if (0 == FlatIdent_3CDED) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\228\212\137\178\207\38", "\122\146\225\185\130\234\22")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\186\149\138\191", "\219\217\130\160\175\143")][2];
											v501, v502 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\235\20\120\110", "\93\94\220\34")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\144\146\207\138", "\157\111\168\161\234\186\151")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\21\37\97\135\233", "\229\27\32\21\81\162\217\210")]](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\148\168\127\26", "\42\76\172\155\90")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\228\216\209\121\69\162", "\96\146\237\225\73")] + 1]));
											FlatIdent_3CDED = 1;
										end
										if (FlatIdent_3CDED == 1) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\41\80\173\25", "\194\136\30\104\136\41\26")] = (v502 + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\131\83\24\81\224", "\79\188\182\99\40\116\208\201")]) - 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\150\122\18\102\111", "\95\29\163\74\33\67")] = 0;
											FlatIdent_3CDED = 2;
										end
									end
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\174\180\231\247", "\199\207\150\130\194")] <= 24) then
								if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\18\45\173\19", "\35\213\42\27\136")] <= 20) then
									if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\223\109\250\136", "\146\192\231\91\223\184")] <= 18) then
										if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\169\160\108\129", "\110\58\145\150\73\177\212\103")] == 17) then
											local FlatIdent_829F9 = 0;
											while true do
												if (FlatIdent_829F9 == 0) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\101\147\161\14\155", "\137\148\84\170\146\43\171")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\135\42\184\39", "\23\97\191\31\157")][2];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\211\94\81\152\98", "\82\230\226\103\101\189")] = {TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\114\224\244\68", "\116\235\74\211\209")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\109\135\118\109\108", "\69\72\92\190")]](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\106\183\145\251", "\215\86\91\132\180\203\200\118")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\182\213\150\99", "\179\83\142\230")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\126\164\102\124\79", "\191\186\79\157\85\89\127\151")] + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\45\252\139\212", "\37\150\26\196\174\228")]))};
													FlatIdent_829F9 = 1;
												end
												if (1 == FlatIdent_829F9) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\223\161\235\0\114\217", "\233\169\144\210\53\87")] = 0;
													for v452 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\23\180\143\103\22", "\188\66\38\141")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\8\88\116\35", "\168\129\48\109\81\19\34\104")][4] do
														local FlatIdent_3ACCC = 0;
														while true do
															if (FlatIdent_3ACCC == 0) then
																TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\69\85\101\154\117", "\153\23\116\108\80\191\69\219")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\78\164\141\189\219", "\22\41\127\157\184\152\235")] + 1;
																TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\159\178\143\71", "\170\119\167\129")][v452] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\161\229\39\198\14", "\62\186\144\220\19\227")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\183\173\181\131\228\172", "\182\193\156\140")]];
																break;
															end
														end
													end
													break;
												end
											end
										else
											local FlatIdent_77478 = 0;
											while true do
												if (FlatIdent_77478 == 6) then
													v197 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\21\107\49\154", "\170\196\45\94\20")][2];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\28\86\113\145", "\80\30\36\101\84\161\64")][v197] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\176\9\74\7\136", "\91\198\49\121\34\184")][v197](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\151\36\252\217", "\233\84\166\23\217")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\32\171\163\102", "\65\24\24\152\134\86")], v197 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\111\189\12\236", "\41\220\87\136")][3]));
													break;
												end
												if (0 == FlatIdent_77478) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\29\79\228\163\111", "\95\161\44\118\210\134")] = nil;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\17\74\90\63\134", "\206\134\32\115\109\26\182\133")] = nil;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\160\156\86\13", "\61\86\152\175\115\61")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\89\137\117\129", "\167\201\97\188\80\177\225\67")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\80\209\234\172", "\225\46\104\228\207\156")][3];
													FlatIdent_77478 = 1;
												end
												if (5 == FlatIdent_77478) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\241\42\180\141", "\79\34\201\25\145\189\94\36")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\116\191\79\16", "\52\32\76\138\106\32")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\162\101\131\42", "\26\216\154\80\166")][3];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\158\186\6\45", "\76\172\169\141\35\29")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\142\175\70\140", "\99\188\185\152")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\76\227\75\243", "\195\178\116\214\110")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\160\213\48\145", "\134\101\151\230\21\161")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\221\109\17\115", "\128\201\234\90\52\67\82")]];
													FlatIdent_77478 = 6;
												end
												if (FlatIdent_77478 == 2) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\142\69\3\18", "\232\103\182\118\38\34\70\43")][v197] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\15\124\166\96", "\17\85\55\79\131\80")][v197](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\222\212\234\233\111", "\95\168\229\217\204")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\156\99\213\204\218", "\233\234\91\230")], v197 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\71\25\215\54\247", "\199\49\33\226\19")][3]));
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\12\20\90\151", "\167\50\59\35\127")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\68\5\169\248", "\200\40\115\50\140")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\117\34\90\163", "\127\147\77\23")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\177\166\49\32", "\16\235\134\149\20")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\28\25\227\92", "\108\186\43\46\198\108\231")]];
													FlatIdent_77478 = 3;
												end
												if (1 == FlatIdent_77478) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\151\228\11\103", "\223\202\160\211\46\87\51\210")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\190\77\49\93", "\109\182\137\122\20")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\241\71\191\176", "\28\50\201\114\154\128\183\138")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\209\74\183\250", "\146\202\230\121")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\184\185\91\151", "\94\142\143\142\126\167\210\192")]];
													v197 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\157\72\164\151", "\167\96\165\125\129")][2];
													FlatIdent_77478 = 2;
												end
												if (FlatIdent_77478 == 3) then
													v197 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\231\160\68\44", "\28\82\223\149\97")][2];
													v196 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\109\30\27\253", "\62\205\85\45")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\84\244\236\82", "\105\21\108\193\201\98\233")][3]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\221\72\187\147", "\186\32\229\123\158\163\94")][v197 + 1] = v196;
													FlatIdent_77478 = 4;
												end
												if (FlatIdent_77478 == 4) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\123\34\143\73", "\87\100\67\17\170\121\197")][v197] = v196[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\211\239\197\7", "\213\142\235\218\224\55")][4]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\30\245\174\128\88", "\165\104\194\153")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\103\142\238\169", "\237\231\80\185\203\153\61")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\104\213\55\21", "\37\197\80\224\18")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\15\21\31\3\228", "\212\121\34\44\38")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\237\125\64\46", "\62\218\218\74\101\30\205\146")]];
													FlatIdent_77478 = 5;
												end
											end
										end
									elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\110\181\181\158", "\203\69\86\131\144\174")] == 19) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\76\3\15\141\0", "\113\217\126\51\57\168\48\135")] = nil;
										local v207, v208;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\71\102\17\13\47", "\174\127\117\86\40\40\31\22")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\105\29\139\153\107", "\187\188\91\44")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\175\45\96\178", "\109\127\151\30\69\130")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\221\34\93\149", "\118\178\229\23\120\165\176\210")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\132\25\76\92", "\221\101\188\44\105\108\207\65")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\64\103\64\231\130", "\178\54\80\119\194")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\88\22\135\191", "\162\84\111\33\162\143\153\217")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\131\72\207\119", "\234\71\187\125")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\107\2\30\174", "\158\113\92\49\59")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\39\22\53\174", "\103\140\16\33\16\158\102\186")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\213\238\48\83", "\92\167\237\221\21\99")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\120\120\99\175", "\70\159\64\77")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\23\7\186\74", "\122\183\47\50\159")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\102\240\10\208", "\224\162\81\199\47")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\18\100\120\211", "\227\136\37\83\93")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\245\93\49\9", "\20\57\205\104")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\252\75\252\74", "\83\72\203\120\217\122\58")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\190\236\230\255", "\223\220\137\219\195\207\221")]];
										v210 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\16\10\167\124", "\76\115\40\63\130")][2];
										v209 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\66\126\232\230", "\177\231\122\77\205\214")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\75\20\5\249", "\60\36\115\33\32\201")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\46\4\3\28", "\193\215\22\55\38\44\62\93")][v210 + 1] = v209;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\74\93\138\133", "\155\79\114\110\175\181")][v210] = v209[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\12\140\161\225", "\181\56\52\185\132\209\236")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\27\133\237\21", "\154\82\44\178\200\37\201")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\188\85\72\238", "\21\21\139\98\109\222\40")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\180\249\201\106", "\90\100\140\204\236")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\67\109\137\231", "\120\204\116\94\172\215")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\234\239\77\187", "\31\99\221\216\104\139\194\16")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\248\185\73\89", "\131\85\192\138\108\105")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\252\42\70\102", "\99\86\196\31")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\108\26\184\15", "\111\48\84\47\157\63\199")][3];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\81\215\226\126", "\78\122\102\224\199")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\79\35\70\100", "\159\156\120\20\99\84\101\206")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\73\217\58\152", "\71\28\113\236\31\168\33\23")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\91\169\112\189\137", "\199\45\158\67\152\185\185\91")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\46\234\235\128", "\176\58\25\221\206\176\118\183")]];
										v210 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\73\140\67\190", "\216\82\113\185\102\142")][2];
										v207, v208 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\12\118\157\45", "\29\34\59\64\184")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\70\27\143\101", "\61\114\126\40\170\85")][v210](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\121\36\124\147", "\19\172\72\23\89\163")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\4\156\160\101", "\197\87\60\175\133\85\50")], v210 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\38\129\150\68", "\179\116\30\180")][3])));
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\145\181\196\187", "\225\139\166\141")] = (v208 + v210) - 1;
										v206 = 0;
										for v455 = v210, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\91\220\172\101\29", "\64\45\235\148")] do
											local FlatIdent_5202D = 0;
											while true do
												if (0 == FlatIdent_5202D) then
													v206 = v206 + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\9\105\167\12", "\181\22\49\90\130\60")][v455] = v207[v206];
													break;
												end
											end
										end
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\134\239\76\95", "\105\111\177\216")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\77\159\87\64", "\179\212\122\168\114\112")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\34\209\136\41", "\173\25\26\228")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\33\154\255\72", "\120\118\22\169\218")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\119\225\163\151", "\134\167\64\214")]];
										v210 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\209\171\205\153", "\168\100\233\158\232\169")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\12\74\185\34", "\156\18\52\121")][v210] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\72\136\143\212", "\191\35\112\187\170\228\213\101")][v210](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\254\47\16\110", "\31\216\207\28\53\94\124")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\127\248\74\11", "\59\65\71\203\111")], v210 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\247\36\49\219", "\84\119\192\28\20\235\108")]));
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\169\115\179\74", "\33\236\158\68\150\122\92\201")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\143\174\92\25", "\89\128\184\153\121\41\145")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\109\241\196\114", "\91\140\85\196\225\66\231\96")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\239\228\244\27", "\43\83\216\215\209")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\240\231\78\126", "\78\43\199\208\107")]];
										v210 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\208\85\91\235", "\182\18\232\96\126\219\90\165")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\6\116\237\109", "\200\93\62\71")][v210] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\21\29\159\148", "\110\38\45\46\186\164\210")][v210]();
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\233\255\83\110", "\94\24\222\200\118")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\151\113\92\77", "\121\125\160\70")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\178\110\247\163", "\210\147\138\91")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\170\155\14\96", "\115\85\157\168\43\80")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\13\208\18\220", "\169\159\58\231\55\236\169\38")]];
										v210 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\153\234\85\148", "\28\113\161\223\112\164\116")][2];
										v209 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\0\20\60\11", "\59\166\56\39\25")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\128\147\141\19", "\35\210\184\166\168")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\1\46\7\116", "\23\57\57\29\34\68")][v210 + 1] = v209;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\105\76\105\0", "\76\48\81\127")][v210] = v209[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\24\253\4\242\90", "\48\110\197\49\215\106\20\189")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\69\31\233\144", "\108\125\114\40\204\160\75\38")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\39\168\72\101", "\109\85\16\159")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\171\248\30\75", "\208\71\147\205\59\123\56")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\119\215\253\7", "\216\55\64\228")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\223\105\135\233", "\139\223\232\94\162\217\149")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\195\219\112\180\235", "\170\181\227\67\145\219\53")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\221\75\247\9", "\210\57\229\126")][2]] = {};
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\100\189\227\98", "\227\216\83\138\198\82\165")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\61\226\225\61\162", "\146\75\213\214\24")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\38\148\1\42", "\53\42\30\161\36\26\37")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\174\164\165\173", "\128\157\153\151")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\34\219\108\69", "\19\22\21\236\73\117")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\157\241\236\167", "\150\23\165\194\201\151\221\77")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\99\189\95\46", "\122\30\91\136")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\252\176\245\221", "\237\223\196\133\208")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\80\150\251\14", "\154\188\104\163\222\62")][4];
									elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\181\126\190\64", "\162\85\141\77\155\112\47")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\113\243\11\66", "\46\114\73\198")][2]] ~= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\38\35\170\126", "\42\197\30\22\143\78")][4]) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\18\8\122\35", "\95\19\37\63")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\123\240\185\33", "\103\17\76\199\156\17")] + 1;
									else
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\125\210\173\12", "\154\211\74\229\136\60\112\217")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\68\191\136\85", "\39\207\124\138\173\101")][3];
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\89\21\133\242", "\194\174\97\35\160")] <= 22) then
									if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\120\107\71\175", "\98\159\64\93")] == 21) then
										local FlatIdent_C595 = 0;
										while true do
											if (FlatIdent_C595 == 3) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\158\40\189\213", "\138\228\169\31\152\229")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\91\21\112\176", "\163\172\108\34\85\128")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\73\162\194\139", "\52\71\113\151\231\187\36\232")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\218\43\232\38", "\205\22\237\24")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\47\36\141\105", "\89\222\24\19\168")]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\1\0\242\65", "\113\149\57\51\215")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\40\158\243\178", "\160\25\16\171\214\130")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\128\98\56\45", "\235\17\184\87\29\29\178")][3];
												FlatIdent_C595 = 4;
											end
											if (FlatIdent_C595 == 5) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\33\109\141\167", "\115\171\25\94\168\151")][v223] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\234\183\100\167", "\151\108\210\132\65")][v223](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\5\90\13\150", "\52\184\52\105\40\166\33\167")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\86\158\237\106", "\172\50\110\173\200\90\180")], v223 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\226\161\9\171", "\44\155\218\148")][3]));
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\172\123\126\132", "\209\141\155\76\91\180\71")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\42\136\14\74", "\122\147\29\191\43")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\136\11\76\138", "\30\220\176\62\105\186\159\236")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\138\214\245\102", "\221\232\189\229\208\86\181\215")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\227\163\153\126", "\78\108\212\148\188")]];
												FlatIdent_C595 = 6;
											end
											if (FlatIdent_C595 == 4) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\254\46\189\160", "\144\202\201\25\152")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\140\83\59\171", "\96\89\187\100\30\155\42\135")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\149\86\15\42", "\29\77\173\99\42\26")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\181\84\63\11", "\109\228\130\103\26\59\143\151")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\47\249\156\110", "\228\227\24\206\185\94\42\79")]];
												v223 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\122\98\237\228", "\80\174\66\87\200\212\123")][2];
												FlatIdent_C595 = 5;
											end
											if (FlatIdent_C595 == 2) then
												v222 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\183\158\119\236\254", "\236\193\166\68\201\206")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\99\157\52\84", "\17\100\91\168")][3]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\254\223\169\227", "\27\58\198\236\140\211\67")][v223 + 1] = v222;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\149\159\15\217", "\139\65\173\172\42\233")][v223] = v222[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\14\36\157\148", "\40\231\54\17\184\164\23\128")][4]];
												FlatIdent_C595 = 3;
											end
											if (0 == FlatIdent_C595) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\24\227\127\77\84\86", "\68\110\209\77\127\113\102\59")] = nil;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\182\245\28\70\147", "\206\206\132\199\47\99\163")] = nil;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\154\132\55\1", "\49\150\162\183\18")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\114\238\100\74", "\120\41\74\219\65\122\128")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\94\15\95\181", "\181\58\102\60\122\133\199")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\186\137\92\42", "\26\51\130\188\121")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\218\121\92\25", "\57\136\226\76\121\41\126\151")][4]];
												FlatIdent_C595 = 1;
											end
											if (FlatIdent_C595 == 6) then
												if TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\45\72\71\103\188", "\90\91\112\116\66\140\96\219")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\15\95\73\176", "\100\165\55\106\108\128\200")][2]] then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\156\102\246\149", "\211\165\171\81")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\34\133\143\135", "\188\100\21\178\170\183")] + 1;
												else
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\64\7\246\226", "\173\30\119\48\211\210")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\129\108\127\11", "\90\59\185\89")][3];
												end
												break;
											end
											if (FlatIdent_C595 == 1) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\128\94\22\116", "\29\66\183\105\51\68\131")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\83\114\30\139\21", "\174\37\69\41")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\151\238\27\75\64", "\112\225\214\46\110")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\115\112\30\180", "\140\126\68\67\59\132\221")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\38\80\14\29", "\230\226\17\103\43\45\127")]];
												v223 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\20\145\14\215", "\231\176\44\164\43")][2];
												FlatIdent_C595 = 2;
											end
										end
									else
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\162\9\28\126\45", "\29\32\144\58\47\91")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\109\36\248\17", "\193\115\85\17\221\33")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\35\93\91\255", "\188\141\27\110\126\207")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\100\13\36\161\184", "\105\237\86\62\23\132\136")]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\17\111\8\115", "\125\217\41\92\45\67")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\230\85\12\198\11", "\59\57\212\102\63\227")]](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\176\44\66\45", "\103\29\136\31")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\124\137\121\3\78", "\38\126\78\186\74")] + 1]);
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\24\124\207\23", "\228\161\32\74\234\39")] == 23) then
									if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\220\89\240\160", "\224\94\228\106\213\144\225\84")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\176\18\133\81", "\97\208\136\39\160")][2]] == TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\113\150\195\9", "\91\150\73\163\230\57\114")][4]) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\250\229\19\160", "\63\46\205\210\54\144\107\222")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\123\163\2\140", "\188\144\76\148\39")] + 1;
									else
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\28\34\225\28", "\53\229\43\21\196\44\108\66")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\109\66\224\99", "\197\83\85\119")][3];
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\89\162\77\114\31", "\87\47\154\126")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\61\32\153\158\130", "\180\75\24\172\187\178")][2]] < TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\129\176\70\44", "\112\163\185\133\99\28\68\153")][4]) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\3\171\142\251", "\171\203\52\156")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\157\42\244\122", "\192\218\170\29\209\74\225\221")] + 1;
								else
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\139\12\69\159", "\157\227\188\59\96\175\45\73")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\146\130\83\97", "\81\223\170\183\118")][3];
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\25\250\254\169", "\113\70\33\204\219\153\82")] <= 28) then
								if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\218\105\121\174", "\208\145\226\95\92\158")] <= 26) then
									if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\185\139\9\191", "\120\222\129\189\44\143\149\207")] == 25) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\73\78\244\154", "\216\228\113\125\209\170\43\25")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\162\13\0\34", "\30\153\154\56\37\18")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\225\164\73\107", "\91\125\217\151\108")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\75\243\53\142", "\190\153\115\198\16")][3]] - TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\35\249\194\106", "\231\90\27\202")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\151\220\13\231\14", "\62\225\228\56\194")][4]];
									else
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\225\234\104\36", "\53\118\217\217\77\20")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\71\177\155\127", "\79\201\127\132\190")][2]] = v29(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\67\189\140\120", "\169\72\116\137")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\34\156\227\41", "\198\25\26\169")][3]], nil, v59);
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\43\139\99\215", "\31\41\19\189\70\231\49\27")] > 27) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\129\2\177\242\131", "\134\215\179\49")] = nil;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\166\5\190\16\67", "\115\129\148\54\134\53")] = nil;
									local v237, v239;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\213\4\27\157\88", "\115\137\231\48\43\184\104")] = nil;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\187\78\178\236\240", "\95\185\137\122\131\201\192")] = nil;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\110\148\86\117", "\69\22\86\167\115")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\220\18\196\21", "\71\56\228\39\225\37")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\185\177\108\170", "\66\208\129\132\73\154\141")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\8\129\184\26", "\157\42\63\182")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\105\126\185\159", "\175\187\94\73\156")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\103\26\101\75", "\160\70\95\47\64\123\67")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\13\39\116\142", "\81\190\58\20")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\26\225\50\211", "\83\44\45\214\23\227\73\63")]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\226\21\251\112", "\64\149\218\38\222")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\255\159\149\74", "\176\122\199\170")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\83\229\149\97", "\75\114\107\208\176\81")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\124\126\48\169", "\21\153\75\73")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\68\26\183\226", "\38\105\115\45\146\210")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\78\89\51\99", "\83\98\118\108\22")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\188\42\104\245", "\67\41\139\25\77\197\228")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\249\153\111\6", "\136\136\206\174\74\54")]];
									v241 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\171\211\192\3", "\219\68\147\230\229\51\196")][2];
									v240 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\22\165\165\86", "\123\28\46\150\128\102\39")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\17\72\18\75", "\21\101\41\125\55\123\233\91")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\179\253\182\92", "\82\226\139\206\147\108")][v241 + 1] = v240;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\94\30\244\156", "\172\145\102\45\209")][v241] = v240[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\85\89\5\219", "\30\148\109\108\32\235")][4]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\16\70\26\68", "\63\116\39\113")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\7\144\169\64", "\200\88\48\167\140\112\72")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\6\125\238\178", "\130\162\62\72\203")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\181\224\238\53\215", "\157\195\215\221\16\231\224\143")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\105\142\92\201\179", "\131\31\185\107\236")]];
									v241 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\243\31\97\251", "\68\203\203\42")][2];
									v237, v239 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\0\35\156\19", "\185\35\55\21")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\161\236\193\227", "\228\211\153\223")][v241](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\183\11\120\106", "\102\52\143\56\93\90")][v241 + 1]));
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\64\248\109\181", "\133\38\119\192\72")] = (v239 + v241) - 1;
									v238 = 0;
									for v458 = v241, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\246\44\190\167", "\155\151\193\20")] do
										v238 = v238 + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\252\83\11\43", "\27\78\196\96\46")][v458] = v237[v238];
									end
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\252\172\229\253\42", "\44\138\155\210\216\26\36")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\26\238\31\173", "\157\219\45\217\58")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\229\99\144\174", "\158\208\221\86\181")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\22\185\78\112", "\88\128\33\138\107\64\223")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\165\34\48\253", "\142\161\146\21\21\205\27")]];
									v241 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\6\162\41\70\74", "\172\112\154\28\99\122\153")][2];
									v237 = {TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\175\243\91\155", "\126\171\151\192")][v241](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\79\170\89\87", "\57\94\126\153\124\103\154")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\159\26\92\134", "\33\119\167\41\121\182")], v241 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\227\99\19\251", "\88\39\212\91\54\203\51\124")]))};
									v238 = 0;
									for v461 = v241, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\244\225\207\43", "\168\76\204\212\234\27\174")][4] do
										v238 = v238 + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\92\96\1\89", "\46\236\100\83\36\105\134")][v461] = v237[v238];
									end
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\173\208\197\209", "\111\89\154\231\224\225")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\141\81\224\124", "\177\157\186\102\197\76\153\188")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\230\117\234\242", "\207\194\222\64")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\34\132\5\216", "\179\123\21\183\32\232")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\116\155\120\227", "\98\166\67\172\93\211")]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\180\128\144\82", "\130\135\131\183\181\98\42")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\238\110\166\112", "\64\163\214\91\131")][3];
								else
									local FlatIdent_6066D = 0;
									while true do
										if (3 == FlatIdent_6066D) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\29\181\211\103\220", "\18\107\141\224\66\236\62\17")][v252] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\247\79\178\251", "\151\203\207\124")][v252](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\194\75\162\71\176", "\164\180\122\145\98\128\233\126")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\92\72\136\235", "\173\219\100\123")], v252 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\112\25\78\67", "\115\212\72\44\107")][3]));
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\184\3\55\173", "\36\236\143\52\18\157\78\206")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\22\111\10\175", "\159\48\33\88\47")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\26\76\183\227", "\87\127\34\121\146\211\129\87")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\182\214\169\117", "\20\203\129\229\140\69\94\175")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\145\3\115\191", "\130\207\166\52\86\143")]];
											v252 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\2\70\168\250", "\65\42\58\115\141\202\27")][2];
											FlatIdent_6066D = 4;
										end
										if (FlatIdent_6066D == 2) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\149\210\169\31", "\47\48\173\225\140")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\149\212\157\123", "\204\35\173\225\184\75")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\28\182\200\182", "\110\142\36\131\237\134\198")][3];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\23\228\181\104", "\88\27\32\211\144")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\252\233\121\155", "\16\237\203\222\92\171\205\59")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\233\232\205\79", "\211\129\209\221\232\127")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\24\21\97\172", "\38\105\47\38\68\156\125\208")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\215\242\1\172", "\72\236\224\197\36\156")]];
											v252 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\243\17\207\148", "\234\164\203\36")][2];
											FlatIdent_6066D = 3;
										end
										if (4 == FlatIdent_6066D) then
											v251 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\92\6\132\127", "\79\43\100\53\161")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\156\154\10\4", "\36\144\164\175\47\52\44\86")][3]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\87\168\225\47", "\31\80\111\155\196")][v252 + 1] = v251;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\1\178\145\127", "\79\51\57\129\180")][v252] = v251[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\234\101\29\137", "\185\87\210\80\56")][4]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\71\249\29\45", "\53\166\112\206\56\29\153")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\68\1\79\165", "\79\18\115\54\106\149")] + 1;
											FlatIdent_6066D = 5;
										end
										if (FlatIdent_6066D == 1) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\151\123\36\96\209", "\69\225\67\23")][v252 + 1] = v251;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\217\96\240\140", "\27\164\225\83\213\188\227\185")][v252] = v251[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\87\215\187\151", "\167\232\111\226\158")][4]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\115\120\93\75", "\209\36\68\79\120\123\61\144")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\182\4\126\80", "\96\44\129\51\91")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\3\87\89\227\163", "\147\117\111\108\198\147\136")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\225\145\17\90", "\52\106\214\162")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\88\137\225\161", "\145\101\111\190\196")]];
											FlatIdent_6066D = 2;
										end
										if (7 == FlatIdent_6066D) then
											if TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\24\22\236\116\248", "\200\110\46\223\81")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\31\105\113\114", "\34\118\39\92\84\66\178")][2]] then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\223\102\71\126", "\19\43\232\81\98\78\201\175")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\132\175\227\148", "\234\43\179\152\198\164\141")] + 1;
											else
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\13\43\155\215", "\231\197\58\28\190\231\211\173")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\138\107\105\135", "\236\51\178\94\76\183")][3];
											end
											break;
										end
										if (6 == FlatIdent_6066D) then
											v252 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\30\178\167\26\252", "\229\104\138\146\63\204\80\229")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\37\77\140\240", "\169\192\29\126")][v252] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\157\86\206\97", "\235\81\165\101")][v252](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\213\12\92\213", "\172\24\228\63\121\229\100")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\156\22\134\136\218", "\173\234\46\181")], v252 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\106\190\122\115", "\67\191\82\139\95")][3]));
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\186\16\135\188", "\139\93\141\39\162\140")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\244\94\146\78", "\126\76\195\105\183")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\16\241\52\9", "\212\63\40\196\17\57")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\156\163\191\249", "\154\201\171\144")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\185\255\136\230", "\221\226\142\200\173\214\111\223")]];
											FlatIdent_6066D = 7;
										end
										if (FlatIdent_6066D == 5) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\10\27\27\117", "\198\42\50\46\62\69\29\237")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\237\69\124\120", "\59\162\218\118\89\72\192\110")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\169\231\26\24", "\97\229\158\208\63\40\97\18")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\150\33\3\220", "\236\77\174\18\38")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\5\154\80\208", "\117\224\61\175")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\31\147\205\187", "\232\139\39\166")][3];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\6\4\0\39", "\162\131\49\51\37\23")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\46\169\111\36", "\20\63\25\158\74")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\130\9\232\47", "\217\26\186\60\205\31\176\72")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\38\85\169\139", "\140\187\17\102")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\220\243\4\124", "\33\76\235\196")]];
											FlatIdent_6066D = 6;
										end
										if (FlatIdent_6066D == 0) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\125\77\103\122\65", "\95\113\79\120\86")] = nil;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\166\117\226\195\93", "\169\203\148\64\208\230\109\95")] = nil;
											v252 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\222\79\83\247\122", "\134\168\119\102\210\74\123\92")][2];
											v251 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\86\79\28\251", "\57\203\110\124")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\139\64\108\80", "\96\206\179\117\73")][3]];
											FlatIdent_6066D = 1;
										end
									end
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\252\149\132\6\186", "\35\138\173\178")] <= 30) then
								if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\91\30\153\2", "\29\161\99\40\188\50")] > 29) then
									local FlatIdent_75331 = 0;
									while true do
										if (FlatIdent_75331 == 2) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\222\246\237\9", "\74\220\230\195\200\57")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\221\131\90\91", "\177\197\234\176\127\107")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\157\145\13\218", "\63\19\170\166\40\234\20")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\80\94\109\112", "\160\86\104\109\72\64\77")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\43\187\79\78", "\234\153\19\142\106\126")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\124\232\93\113", "\120\65\68\221")][3]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\14\226\178\249\72", "\220\120\213\133")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\121\144\21\122", "\74\56\78\167\48")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\68\126\133\90", "\88\132\124\75\160\106\106")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\97\222\2\75", "\96\116\86\237\39\123\202\80")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\67\230\56\210", "\207\65\116\209\29\226\204")]];
											FlatIdent_75331 = 3;
										end
										if (FlatIdent_75331 == 3) then
											v262 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\8\222\75\224", "\110\208\48\235")][2];
											v261 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\241\208\200\245", "\237\197\201\227")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\123\74\59\245", "\26\219\67\127\30\197\83")][3]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\64\141\63\64", "\153\149\120\190\26\112")][v262 + 1] = v261;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\77\153\229\122", "\119\108\117\170\192\74\144\158")][v262] = v261[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\113\212\100\183", "\65\135\73\225")][4]];
											FlatIdent_75331 = 4;
										end
										if (FlatIdent_75331 == 9) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\78\117\20\210", "\226\163\118\64\49")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\155\108\251\77", "\125\153\172\95\222")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\145\180\136\189", "\131\27\166\131\173\141\186")]];
											v262 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\43\18\98\163", "\71\147\19\39")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\98\181\232\227", "\66\101\90\134\205\211\138\154")][v262] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\10\20\42\233\213", "\71\124\44\25\204\229")][v262](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\171\122\1\146", "\217\114\154\73\36\162")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\253\233\232\81", "\96\92\197\218\205\97\232")], v262 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\82\233\200\175", "\159\94\106\220\237")][3]));
											break;
										end
										if (0 == FlatIdent_75331) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\120\246\182\75\106", "\140\25\74\192\135\110\90\106")] = nil;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\3\18\160\239\242", "\194\66\49\36\146\202")] = nil;
											v262 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\105\152\71\149", "\165\235\81\173\98")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\61\221\250\115\233", "\132\75\229\201\86\217")][v262] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\42\246\224\210", "\197\226\18\197")][v262](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\10\128\82\20\76", "\49\124\177\97")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\101\147\251\208", "\222\224\93\160")], v262 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\165\39\100\104", "\88\139\157\18\65")][3]));
											FlatIdent_75331 = 1;
										end
										if (FlatIdent_75331 == 8) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\155\107\49\156", "\172\80\172\92\20")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\45\134\93\32", "\232\126\26\177\120\16\169\163")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\190\228\54\18", "\214\140\134\209\19\34\175")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\112\251\239\4", "\202\52\71\200")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\31\34\194\190", "\231\142\40\21")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\102\106\150\79\2", "\180\16\82\165\106\50\99")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\13\42\187\83", "\99\95\53\31\158")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\228\114\37\20\162", "\49\146\74\16")][3];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\6\221\31\210", "\226\132\49\234\58")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\47\231\161\74", "\56\186\24\208\132\122\153\114")] + 1;
											FlatIdent_75331 = 9;
										end
										if (FlatIdent_75331 == 5) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\25\11\108\18", "\34\156\33\62\73")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\30\37\189\20\88", "\49\104\18\142")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\178\43\78\161", "\107\145\133\28")]];
											v262 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\6\230\251\146", "\222\162\62\211")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\181\41\93\94\97", "\170\195\17\110\123\81\227")][v262] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\108\179\133\173", "\157\212\84\128\160")][v262](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\34\179\0\118", "\163\233\19\128\37\70\232\142")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\13\111\92\179", "\121\131\53\92")], v262 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\148\30\197\46", "\224\30\172\43")][3]));
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\240\40\155\189", "\141\101\199\31\190")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\16\84\130\138", "\207\59\39\99\167\186\217")] + 1;
											FlatIdent_75331 = 6;
										end
										if (FlatIdent_75331 == 7) then
											v262 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\16\83\192\102", "\86\173\40\102\229")][2];
											v261 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\252\28\200\84", "\237\100\196\47")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\20\222\239\103", "\116\44\44\235\202\87\232")][3]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\143\5\96\82", "\146\99\183\54\69\98\210")][v262 + 1] = v261;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\167\230\224\108", "\215\135\159\213\197\92")][v262] = v261[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\253\189\169\227", "\140\211\197\136")][4]];
											FlatIdent_75331 = 8;
										end
										if (FlatIdent_75331 == 4) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\4\6\229\68", "\116\127\51\49\192")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\87\4\184\190", "\98\123\96\51\157\142\126")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\166\243\139\118", "\70\173\158\198\174")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\104\28\171\160", "\142\144\95\47")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\122\7\75\71", "\110\119\77\48")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\103\119\16\180", "\132\139\95\68\53")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\112\168\112\172", "\85\156\72\157")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\106\40\100\138", "\234\27\82\29\65\186\72")][3];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\152\190\251\83", "\99\144\175\137\222")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\35\219\68\105", "\209\48\20\236\97\89\37")] + 1;
											FlatIdent_75331 = 5;
										end
										if (FlatIdent_75331 == 1) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\77\69\84\155", "\171\42\122\114\113")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\255\155\167\221", "\130\237\200\172")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\136\251\75\118", "\110\70\176\206")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\71\110\174\106", "\90\21\112\93\139")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\140\35\243\240", "\192\97\187\20\214")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\3\96\141\208", "\224\106\59\83\168")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\189\87\190\30", "\41\199\133\98\155\46\232")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\10\254\178\3\237", "\134\124\198\129\38\221\111")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\183\228\101\168", "\64\152\143\209")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\17\144\73\26", "\103\87\41\165\108\42\77\28")][4]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\132\67\178\38", "\128\194\179\116\151\22")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\101\84\226\140", "\230\103\82\99\199\188\84")] + 1;
											FlatIdent_75331 = 2;
										end
										if (6 == FlatIdent_75331) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\30\238\23\24", "\139\103\38\219\50\40\157\192")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\239\101\135\182", "\162\134\216\86")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\184\0\28\96", "\207\94\143\55\57\80\34\145")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\137\112\63\224", "\217\66\177\67\26\208\59\119")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\134\159\239\0", "\152\67\190\170\202\48\138")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\113\0\181\139", "\144\187\73\53")][3]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\236\109\146\242", "\211\118\219\90\183\194")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\250\223\174\10", "\145\152\205\232\139\58")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\170\235\250\11", "\110\211\146\222\223\59\200")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\3\177\74\18", "\34\51\52\130\111")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\98\111\134\82", "\55\174\85\88\163\98\92")]];
											FlatIdent_75331 = 7;
										end
									end
								else
									local FlatIdent_84ED3 = 0;
									while true do
										if (0 == FlatIdent_84ED3) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\72\83\16\232\74", "\35\205\122\100")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\1\82\2\242", "\39\194\57\103")][2];
											do
												return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\170\111\20\86", "\174\194\155\92\49\102\204")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\208\10\50\215", "\142\164\232\57\23\231\170")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\248\139\174\87\231", "\114\215\202\188\157")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\242\170\21\226", "\229\81\197\146\48\210\227\139")]);
											end
											break;
										end
									end
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\10\13\63\131", "\54\226\50\59\26\179\155\61")] <= 31) then
								local FlatIdent_40FD3 = 0;
								local v274;
								local v276;
								while true do
									if (FlatIdent_40FD3 == 5) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\137\208\168\64", "\139\34\177\229\141\112")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\186\43\241\128", "\176\67\141\24\212")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\197\142\19\175\127", "\141\179\185\36\138\79\52")]];
										v278 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\99\10\230\171", "\195\155\91\63")][2];
										v274 = {TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\27\156\185\157", "\57\182\35\175\156\173\179")][v278](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\203\243\234\154\95", "\216\189\194\217\191\111\100")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\22\18\49\96", "\42\205\46\33\20\80")], v278 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\71\95\113\242\1", "\215\49\104\73")]))};
										v275 = 0;
										FlatIdent_40FD3 = 6;
									end
									if (FlatIdent_40FD3 == 0) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\220\108\111\12\90\154", "\127\170\94\88\56")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\149\227\151\253\109", "\198\128\167\212\162\216\93\153")] = nil;
										v274, v276 = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\104\179\137\239\106", "\190\202\90\132")] = nil;
										FlatIdent_40FD3 = 1;
									end
									if (FlatIdent_40FD3 == 3) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\24\75\121\214", "\32\233\47\124\92\230")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\22\213\254\236", "\153\235\33\226\219\220\174")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\151\5\14\87\209", "\114\225\61\59")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\36\119\200\140", "\237\188\19\68")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\191\185\93\176", "\128\157\136\142\120")]];
										v278 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\93\208\27\254", "\157\210\101\229\62\206\169\50")][2];
										v274, v276 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\91\113\25\247\73", "\173\45\70\47\210\121\200\121")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\231\214\20\97", "\49\81\223\229")][v278](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\222\234\176\98", "\149\82\230\217")][v278 + 1]));
										FlatIdent_40FD3 = 4;
									end
									if (FlatIdent_40FD3 == 1) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\139\36\143\231\118", "\70\231\185\19\183\194")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\152\183\225\227", "\211\187\160\132\196")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\216\186\184\24", "\146\76\224\143\157\40\220")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\39\227\55\246", "\158\59\31\214\18\198\89")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\94\16\79\13", "\106\61\105\39")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\233\108\170\83", "\18\133\222\91\143\99\162")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\103\249\27\137", "\178\23\95\204\62\185\92\35")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\161\140\179\13", "\61\65\150\191\150")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\130\222\252\135", "\170\42\181\233\217\183\97")]];
										FlatIdent_40FD3 = 2;
									end
									if (FlatIdent_40FD3 == 4) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\5\34\239\104", "\202\88\50\26")] = (v276 + v278) - 1;
										v275 = 0;
										for v464 = v278, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\46\190\146\213", "\55\85\25\134\183\229")] do
											local FlatIdent_79729 = 0;
											while true do
												if (0 == FlatIdent_79729) then
													v275 = v275 + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\108\70\234\182", "\72\27\84\117\207\134")][v464] = v274[v275];
													break;
												end
											end
										end
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\145\3\120\93", "\95\207\166\52\93\109\55\229")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\203\148\113\199\184", "\205\189\163\70\226\136\86")] + 1;
										FlatIdent_40FD3 = 5;
									end
									if (FlatIdent_40FD3 == 6) then
										for v467 = v278, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\76\83\77\134", "\104\182\116\102")][4] do
											local FlatIdent_FBDE = 0;
											while true do
												if (FlatIdent_FBDE == 0) then
													v275 = v275 + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\176\175\164\238", "\222\70\136\156\129\222\88")][v467] = v274[v275];
													break;
												end
											end
										end
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\211\211\252\146", "\217\162\228\228")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\138\152\157\254", "\184\206\189\175")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\22\172\242\156", "\188\60\46\153\215\172\57")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\166\110\23\105", "\68\116\145\93\50\89")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\15\253\230\166", "\51\207\56\202\195\150")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\171\31\172\6\209", "\195\221\40\155\35\225\230\158")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\37\147\28\168", "\98\166\29\166\57\152")][3];
										break;
									end
									if (FlatIdent_40FD3 == 2) then
										v278 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\35\186\144\34", "\43\172\27\143\181\18")][2];
										v277 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\197\113\244\252\45", "\29\179\73\199\217")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\249\40\136\41", "\173\25\193\29")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\40\4\90\253", "\24\58\16\55\127\205\106\182")][v278 + 1] = v277;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\95\132\28\112", "\64\199\103\183\57")][v278] = v277[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\23\6\28\163", "\147\68\47\51\57")][4]];
										FlatIdent_40FD3 = 3;
									end
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\74\215\143\109", "\93\201\114\225\170")] == 32) then
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\181\171\177\48\231", "\142\140\128\155\136\21\215\165")] = nil;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\248\87\14\165\123", "\218\33\205\102\62\128\75\152")] = nil;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\46\15\149\179\164", "\150\148\27\62\164")] = nil;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\177\185\133\114", "\160\66\137\138")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\155\119\250\111", "\16\96\163\66\223\95\138\42")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\140\132\75\138", "\105\224\180\177\110\186")][3];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\183\93\245\7\112", "\199\193\106\194\34\64\60\91")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\225\91\227\111", "\198\95\214\108")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\101\255\197\185", "\85\122\93\202\224\137\108\154")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\7\1\238\147", "\204\228\48\50\203\163")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\224\30\226\95", "\88\190\215\41\199\111\47\181")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\111\31\12\32", "\190\52\87\44\41\16\161")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\78\82\241\75", "\124\35\118\103\212\123\65")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\179\255\250\46", "\60\92\139\204\223\30")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\69\186\200\149", "\165\70\125\143\237")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\99\160\1\0", "\48\212\91\149\36")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\73\109\65\20", "\100\36\126\90")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\147\128\24\70", "\82\113\164\183\61\118\113\82")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\26\164\242\244", "\138\155\34\145\215\196\175")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\174\93\135\89", "\160\212\153\110\162\105\91\61")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\111\253\154\240", "\191\192\88\202")]];
								v511 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\149\188\91\88", "\172\17\173\137\126\104")][3];
								v510 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\203\36\126\114\134", "\120\189\28\77\87\182\131")][v511];
								for v583 = v511 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\117\68\181\66", "\183\172\77\113\144\114\152")][4] do
									v510 = v510 .. TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\32\107\172\18", "\109\157\24\88\137\34\165")][v583];
								end
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\25\239\5\226", "\231\200\33\220\32\210\93")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\0\19\168\103", "\87\60\56\38\141")][2]] = v510;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\242\93\127\144", "\90\160\197\106")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\226\125\51\18", "\34\131\213\74\22")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\225\67\117\96", "\80\80\217\118")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\31\88\56\85", "\29\101\40\107")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\162\135\246\77", "\125\165\149\176\211")]];
								v509 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\91\127\164\213", "\229\41\99\74\129")][2];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\93\178\110\99", "\75\83\101\129")][v509](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\228\19\18\149\162", "\176\146\43\33")][v509 + 1]);
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\138\166\84\254", "\27\200\189\145\113\206")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\220\5\238\31", "\47\192\235\50\203")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\54\159\79\148\188", "\233\64\167\122\177\140\188\212")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\89\35\165\5\187", "\144\47\20\150\32\139\220")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\117\234\188\138", "\132\80\66\221\153\186\224")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\247\119\82\235", "\219\38\207\68\119")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\78\95\116\69", "\236\109\118\106\81\117")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\107\149\106\254", "\206\141\83\166\79")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\241\136\143\174", "\158\141\201\189\170")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\232\172\254\29", "\45\119\208\153\219")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\194\14\243\80\67", "\115\180\57\196\117")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\43\7\177\0", "\160\82\28\48\148\48\164\74")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\136\232\99\106", "\109\163\176\221\70\90")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\22\100\17\35", "\82\178\33\87\52\19")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\245\191\63\44", "\28\44\194\136\26")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\33\20\67\38", "\174\28\25\39\102\22\234\59")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\223\17\69\157\158", "\230\169\41\112\184\174")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\220\156\38\251\66", "\47\170\164\21\222\114\116\179")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\223\216\147\173", "\182\157\231\237")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\162\89\229\165", "\192\149\154\108")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\174\176\101\109", "\97\153\153\135\64\93\86")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\16\9\133\109\169", "\185\102\62\178\72\153\73\235")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\98\226\126\247\36", "\210\20\218\75")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\170\84\54\12", "\84\232\157\103\19\60\121")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\10\36\37\6\76", "\35\124\19\18")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\11\71\131\7", "\55\132\51\116\166")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\222\100\232\49\84", "\157\168\92\221\20\100\94")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\222\137\166\90\74", "\22\168\177\149\127\122\185")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\255\111\15\175", "\159\215\199\90\42")][3]] - TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\151\157\99\163", "\147\82\175\174\70")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\218\88\121\17", "\33\119\226\109\92")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\209\45\188\171", "\155\218\230\26\153")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\69\76\134\70", "\163\118\114\123")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\244\190\165\245\229", "\213\130\134\144\208")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\107\78\113\21", "\73\155\92\125\84\37\25\61")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\149\186\150\30", "\46\33\162\141\179")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\244\254\120\120", "\72\60\204\205\93")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\156\151\241\24", "\78\196\164\162\212\40")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\149\154\27\162", "\199\59\173\169\62\146\169\192")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\253\233\230\103", "\195\87\197\220")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\169\244\246\133", "\84\209\145\193\211\181\28\156")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\180\121\205\151", "\167\177\131\78\232")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\90\220\2\84", "\165\200\109\235\39\100\40\110")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\34\180\109\67", "\115\233\26\129\72")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\89\132\194\180", "\132\24\110\183\231")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\38\87\246\10", "\35\206\17\96\211\58\212\22")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\150\218\124\216", "\169\83\174\233\89\232\216\200")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\74\14\120\232", "\118\60\114\59\93\216\171\137")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\145\17\161\236", "\220\50\169\36\132")][3]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\208\91\244\161", "\209\145\231\108")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\118\95\72\136", "\66\57\65\104\109\184\165")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\171\83\175\27\181", "\133\221\107\154\62")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\73\230\164\23", "\81\187\126\213\129\39\162")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\230\122\177\244", "\196\229\209\77\148")]];
								v509 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\141\36\89\13", "\173\39\181\17\124\61\146")][2];
								v511 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\132\160\103\216", "\232\26\188\147\66")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\3\185\179\94\35", "\19\117\129\134\123")][3]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\91\154\83\100", "\67\67\99\169\118\84")][v509 + 1] = v511;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\114\182\10\3", "\214\98\74\133\47\51\214\153")][v509] = v511[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\22\37\49\35", "\55\106\46\16\20\19")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\236\229\117\102", "\115\41\219\210\80\86\94")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\30\190\95\130", "\91\192\41\137\122\178")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\125\159\173\7", "\136\55\69\170")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\170\67\127\134", "\173\131\157\112\90\182\147\77")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\65\119\66\74", "\103\122\118\64")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\176\67\129\160", "\221\144\136\112\164\144")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\101\44\225\9", "\196\57\93\25")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\220\20\227\192\31", "\47\170\44\208\229")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\26\235\95\75", "\87\40\34\222\122\123\135")][3]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\106\214\112\145", "\176\33\93\225\85\161")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\78\218\145\41", "\25\194\121\237\180")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\239\108\106\86", "\42\212\215\89\79\102")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\6\119\85\159", "\151\215\49\68\112\175\46\39")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\42\225\9\221", "\237\38\29\214\44")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\126\36\67\35", "\225\118\70\23\102\19\38\213")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\54\2\8\103\9", "\208\64\58\61\66\57\148")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\230\243\1\185", "\36\137\222\198")][3]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\163\181\103\152", "\41\129\148\130\66\168\194\98")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\125\214\85\19", "\204\113\74\225\112\35\72\16")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\70\84\101\180", "\128\17\126\97\64\132\223\211")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\209\110\77\234", "\104\218\230\93")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\107\133\51\35", "\22\19\92\178")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\83\16\107\237", "\209\190\107\35\78\221")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\118\131\164\134", "\182\224\78\182\129")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\85\246\75\134", "\36\141\109\197\110\182\80\31")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\82\67\194\78", "\92\131\106\118\231\126")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\171\27\107\224\115", "\67\221\35\94\197")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\83\235\119\31\21", "\58\37\220\64")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\219\163\73\228", "\204\188\236\148\108\212")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\132\10\182\164", "\210\190\188\63\147\148\114\97")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\145\246\193\65", "\113\213\166\197\228")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\105\149\22\26", "\129\173\94\162\51\42\229\99")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\108\65\116\230", "\214\61\84\114\81")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\187\73\0\157", "\182\39\131\124\37\173")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\69\239\81\249", "\20\90\125\218\116\201")][3]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\94\76\194\122", "\61\69\105\123\231\74\78")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\250\237\78\135", "\183\177\205\218\107")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\104\216\58\156", "\86\101\80\237\31\172")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\111\253\17\42", "\189\51\88\206\52\26\169")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\148\28\16\118", "\53\70\163\43")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\250\244\93\38", "\42\161\194\199\120\22\83")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\164\13\119\34", "\94\192\156\56\82\18")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\227\87\8\45", "\226\61\219\100\45\29\109")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\251\117\5\170", "\32\154\195\64")][3]] / TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\66\9\154\142", "\65\145\122\58\191\190")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\79\177\60\147", "\163\145\119\132\25")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\86\157\131\8", "\56\111\97\170\166")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\40\209\124\127", "\23\235\31\230\89\79\236\141")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\4\150\230\158", "\143\178\60\163\195\174\79")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\80\178\130\40", "\85\114\103\129\167\24\97")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\45\132\229\201\159", "\103\91\179\210\236\175\99")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\173\1\189\0", "\226\57\149\50\152\48\217\192")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\244\127\235\171", "\155\35\204\74\206")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\154\46\98\151", "\167\215\162\27\71")][3]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\212\156\103\109", "\93\93\227\171\66")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\158\155\235\110", "\225\72\169\172\206\94\71\174")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\91\10\1\162\164", "\40\45\50\52\135\148\80")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\244\78\181\199\178", "\226\130\121\134")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\110\148\62\216", "\27\232\89\163")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\241\147\134\164", "\163\148\201\160")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\221\189\163\237", "\101\62\229\136\134\221")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\23\165\170\78", "\126\18\47\150\143")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\150\157\57\98", "\127\212\174\168\28\82\17")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\242\9\146\90", "\183\106\202\60")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\117\165\15\143", "\98\58\66\146\42\191\118")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\167\43\157\28", "\186\228\144\28\184\44\174")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\16\70\79\83\86", "\118\102\126\122")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\92\219\162\248", "\200\188\107\232\135")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\171\246\14\107", "\159\76\156\193\43\91")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\116\93\48\245", "\138\25\76\110\21\197\41\35")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\164\103\16\96", "\222\46\156\82\53\80\52")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\45\136\76\173\36", "\20\91\176\127\136")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\168\125\224\90", "\196\151\144\72\197\106")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\150\213\23\68", "\50\116\174\224")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\195\47\87\130\81", "\165\181\24\96\167\97")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\122\107\1\252", "\36\204\77\92")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\31\110\152\81", "\97\94\39\91\189")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\38\168\83\244", "\153\85\17\155\118\196\114")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\162\140\130\235", "\81\167\149\187\167\219")]];
								v509 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\84\125\132\162", "\146\153\108\72\161")][2];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\76\190\162\123", "\94\101\116\141\135\75\91")][v509] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\248\80\129\21", "\118\82\192\99\164\37\155\143")][v509](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\234\24\106\114", "\79\66\219\43")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\24\160\84\77", "\113\125\32\147")], v509 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\138\156\6\27", "\212\188\178\169\35\43")][3]));
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\188\42\111\238", "\74\222\139\29")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\146\254\65\242", "\136\39\165\201\100\194\104\18")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\183\25\51\131", "\178\19\143\44\22\179\134\79")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\214\248\80\24", "\228\125\225\203\117\40\177\151")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\254\157\49\218", "\71\136\201\170\20\234\96")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\124\47\141\150", "\196\115\68\28\168\166\144")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\11\185\57\85", "\49\184\51\140\28\101\148")][2]] = {};
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\185\222\142\144", "\234\148\142\233\171\160\141\39")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\71\79\221\50\221", "\37\49\120\234\23\237\146")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\171\26\46\240\123", "\92\221\34\27\213\75\197")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\106\189\63\116", "\68\83\93\142\26")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\249\153\72\92", "\207\226\206\174\109\108\101")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\20\124\182\180", "\52\212\44\79\147\132\40\154")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\248\155\156\191", "\185\143\192\174")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\171\29\107\146\168", "\129\221\37\88\183\152")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\191\133\87\96", "\92\63\135\176\114\80")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\168\0\65\111", "\43\86\144\53\100\95")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\162\145\117\120", "\60\220\149\166\80\72\151")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\127\232\183\220", "\146\236\72\223")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\161\17\134\139", "\112\222\153\36\163\187")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\164\190\21\116", "\197\164\147\141\48\68")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\183\14\94\78\111", "\126\193\57\105\107\95")]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\69\147\83\111", "\85\17\125\160\118\95\205")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\79\181\190\184", "\155\136\119\128")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\147\78\165\167", "\34\59\171\123\128\151\202\226")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\189\47\134\25", "\88\24\133\28\163\41")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\243\165\142\88", "\104\147\203\144\171")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\69\11\248\27", "\221\43\114\60")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\46\44\0\174", "\164\161\25\27\37\158")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\29\153\242\79", "\127\83\37\172\215")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\137\148\80\26", "\131\182\190\167\117\42\106\170")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\212\173\251\9", "\188\66\227\154\222\57\229")]];
								v509 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\107\14\16\160", "\144\24\83\59\53")][2];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\216\230\136\75", "\123\76\224\213\173")][v509] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\146\154\225\127", "\196\79\170\169")][v509](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\106\118\56\211", "\29\227\91\69")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\151\237\247\244", "\87\191\175\222\210\196\38")], v509 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\176\34\167\147", "\174\51\136\23\130\163")][3]));
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\66\101\79\178", "\149\93\117\82\106\130")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\234\74\163\155", "\171\134\221\125\134")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\124\172\51\160", "\144\208\68\153\22")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\77\118\73\149", "\174\129\122\69\108\165\54\119")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\138\141\172\169", "\137\153\189\186")]];
								v509 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\150\72\0\65", "\37\113\174\125")][2];
								v511 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\71\28\23\236\1", "\201\49\36\36")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\118\255\53\84", "\16\100\78\202")][3]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\171\228\35\179\211", "\203\221\220\16\150\227\34\43")][v509 + 1] = v511;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\124\40\61\171", "\24\155\68\27")][v509] = v511[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\8\133\23\234", "\50\218\48\176")][4]];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\5\131\181\11", "\52\46\50\180\144\59")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\102\114\50\86", "\154\109\81\69\23\102\89")] + 1;
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\147\137\17\17", "\89\154\171\188\52\33")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\67\95\115\166", "\86\150\116\108")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\232\123\235\145", "\38\23\223\76\206\161")]];
								v509 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\145\13\126\243", "\166\184\169\56\91\195\202")][2];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\232\34\97\146", "\162\199\208\17\68")][v509](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\190\12\68\188", "\123\177\134\63\97\140\110\48")][v509 + 1]);
							else
								local FlatIdent_73F66 = 0;
								local v526;
								local v528;
								while true do
									if (3 == FlatIdent_73F66) then
										v529 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\170\111\69\29", "\36\201\146\92\96\45")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\158\168\0\148", "\145\137\166\157\37\164\151\156")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\24\65\20\57\139", "\20\110\121\39\28\187")][v530 + 1] = v529;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\24\169\87\98\4", "\194\110\145\100\71\52\124")][v530] = v529[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\177\17\235\148", "\118\18\137\36\206\164\121\59")][4]];
										FlatIdent_73F66 = 4;
									end
									if (FlatIdent_73F66 == 5) then
										v526, v528 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\127\125\64\148", "\164\144\72\75\101")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\211\28\159\143", "\62\156\235\47\186\191")][v530](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\178\189\100\156", "\140\109\138\142\65\172\199\76")][v530 + 1]));
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\9\239\88\185", "\212\151\62\215\125\137\161")] = (v528 + v530) - 1;
										v527 = 0;
										FlatIdent_73F66 = 6;
									end
									if (FlatIdent_73F66 == 0) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\1\166\149\183\75", "\137\80\52\148\163\146\123\21")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\149\241\169\70\168", "\99\152\160\195\158")] = nil;
										v526, v528 = nil;
										FlatIdent_73F66 = 1;
									end
									if (2 == FlatIdent_73F66) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\136\111\230\117", "\69\166\191\88\195")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\45\121\7\214", "\234\217\26\78\34\230\214\78")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\71\189\18\26", "\42\208\127\136\55")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\15\154\108\246", "\47\17\56\169\73\198\140")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\98\11\6\253", "\224\66\85\60\35\205")]];
										v530 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\98\41\30\98", "\179\152\90\28\59\82\45")][2];
										FlatIdent_73F66 = 3;
									end
									if (FlatIdent_73F66 == 4) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\142\180\81\28", "\44\158\185\131\116")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\221\138\50\139", "\17\44\234\189\23\187\199")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\38\139\79\103", "\106\87\30\190")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\187\95\57\154", "\188\182\140\108\28\170\55\34")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\227\191\166\140", "\131\188\212\136")]];
										v530 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\83\36\99\6", "\54\233\107\17\70")][2];
										FlatIdent_73F66 = 5;
									end
									if (FlatIdent_73F66 == 9) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\197\187\11\122\131", "\95\179\140\60")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\54\162\118\179\140", "\176\64\154\67\150\188\122\196")][3];
										break;
									end
									if (FlatIdent_73F66 == 6) then
										for v584 = v530, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\241\87\201\101", "\236\85\198\111")] do
											v527 = v527 + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\105\36\176\12", "\60\126\81\23\149")][v584] = v526[v527];
										end
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\83\221\129\207\32", "\137\37\234\182\234\16")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\92\14\118\92", "\195\153\107\57\83\108\34\237")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\67\208\134\217", "\159\28\123\229\163\233\225")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\67\102\80\215", "\117\231\116\85")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\13\17\126\44", "\28\76\58\38\91")]];
										FlatIdent_73F66 = 7;
									end
									if (7 == FlatIdent_73F66) then
										v530 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\246\116\242\177", "\143\216\206\65\215\129\179")][2];
										v526 = {TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\42\90\185\242", "\156\194\18\105")][v530](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\253\119\175\119", "\71\128\204\68\138")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\10\250\117\34", "\198\141\50\201\80\18\137")], v530 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\25\213\25\17", "\146\141\46\237\60\33\95")]))};
										v527 = 0;
										FlatIdent_73F66 = 8;
									end
									if (8 == FlatIdent_73F66) then
										for v587 = v530, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\241\164\86\237", "\191\190\201\145\115\221")][4] do
											local FlatIdent_42B8B = 0;
											while true do
												if (FlatIdent_42B8B == 0) then
													v527 = v527 + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\45\75\190\2\45", "\84\91\115\141\39\29\174\61")][v587] = v526[v527];
													break;
												end
											end
										end
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\180\4\184\70", "\157\118\131\51")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\9\106\238\1", "\30\142\62\93\203\49")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\181\251\98\206\247", "\126\195\195\87\235\199")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\209\9\243\169", "\30\105\230\58\214\153\203")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\69\161\247\80", "\203\115\114\150\210\96")]];
										FlatIdent_73F66 = 9;
									end
									if (FlatIdent_73F66 == 1) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\98\132\103\88\111", "\95\231\87\182\94\125")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\156\171\100\76\44", "\115\56\169\152\84\105\28")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\189\210\10\230", "\37\94\133\225\47\214")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\140\3\27\7", "\62\55\180\54")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\162\125\131\18", "\123\155\154\72\166\34\36\206")][3]];
										FlatIdent_73F66 = 2;
									end
								end
							end
						elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\17\114\200\30", "\157\69\41\68\237\46")] <= 50) then
							if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\162\177\181\190", "\165\76\154\135\144\142\176")] <= 41) then
								if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\117\17\66\67", "\217\68\77\39\103\115\32")] <= 37) then
									if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\212\250\152\130", "\191\199\236\204\189\178\145")] <= 35) then
										if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\222\11\10\38", "\47\22\230\61")] == 34) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\235\114\93\105", "\89\98\211\65\120")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\154\88\23\77", "\119\223\162\109\50\125\206")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\90\88\7\81", "\97\127\98\109\34")][3];
										else
											local FlatIdent_2B4B0 = 0;
											local v291;
											local v292;
											while true do
												if (FlatIdent_2B4B0 == 2) then
													v293 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\102\144\115\112\183", "\173\16\168\64\85\135\156\223")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\3\15\161\180\184", "\37\117\55\148\145\136\59\85")][3]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\79\224\99\103", "\70\87\119\211")][v294 + 1] = v293;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\142\80\123\247", "\83\209\182\99\94\199")][v294] = v293[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\143\213\28\136", "\57\184\183\224")][4]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\136\180\234\116", "\226\152\191\131\207\68\148\117")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\28\234\151\5", "\53\122\43\221\178")] + 1;
													FlatIdent_2B4B0 = 3;
												end
												if (FlatIdent_2B4B0 == 4) then
													v294 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\98\6\116\75", "\214\164\90\51\81\123\145")][2];
													v293 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\243\240\133\75", "\160\123\203\195")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\68\33\201\97", "\85\232\124\20\236\81")][3]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\147\230\99\46", "\30\33\171\213\70")][v294 + 1] = v293;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\152\100\156\40", "\24\232\160\87\185")][v294] = v293[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\104\164\188\118", "\70\190\80\145\153")][4]];
													FlatIdent_2B4B0 = 5;
												end
												if (1 == FlatIdent_2B4B0) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\82\115\189\138", "\95\220\106\64\152\186\151\211")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\222\231\250\169", "\177\17\230\210\223\153\182")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\234\191\205\97", "\111\74\210\138\232\81\182")][3]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\73\96\198\144", "\39\125\126\87\227\160")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\232\233\200\4", "\237\52\223\222")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\163\213\149\226", "\119\213\155\224\176\210")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\180\209\118\34", "\142\216\131\226\83\18\200\105")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\83\172\135\159", "\134\79\100\155\162\175\129\77")]];
													v294 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\223\24\240\174\153", "\139\169\32\197")][2];
													FlatIdent_2B4B0 = 2;
												end
												if (3 == FlatIdent_2B4B0) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\240\75\91\248", "\70\142\200\126\126\200\115\101")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\121\20\135\188", "\140\51\78\39\162")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\24\149\140\177\161", "\171\110\162\187\148\145\131\149")]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\85\120\11\18", "\34\209\109\75\46")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\161\238\249\170", "\154\115\153\219\220")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\73\220\91\114", "\222\73\113\233\126\66\114")][3]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\75\246\71\71", "\172\228\124\193\98\119\28\118")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\135\209\11\105", "\46\89\176\230")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\82\13\98\212", "\108\155\106\56\71\228")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\13\128\116\138", "\173\162\58\179\81\186\52\64")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\23\169\130\27", "\37\94\32\158\167\43\100")]];
													FlatIdent_2B4B0 = 4;
												end
												if (FlatIdent_2B4B0 == 8) then
													v294 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\33\156\11\149", "\46\165\25\169")][2];
													do
														return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\177\228\136\214", "\183\84\137\215\173\230\93")][v294](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\33\166\97\29", "\28\74\16\149\68\45\101\112")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\189\71\25\229", "\138\109\133\116\60\213")], v294 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\71\240\20\93", "\49\109\112\200")]));
													end
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\137\40\27\142", "\206\188\190\31\62\190")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\17\39\68\238", "\206\41\38\16\97\222\135\99")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\250\83\171\161", "\181\228\194\102\142\145\43")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\189\94\74\134", "\51\84\138\109\111\182\79")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\12\76\101\182", "\130\126\59\123\64\134")]];
													FlatIdent_2B4B0 = 9;
												end
												if (FlatIdent_2B4B0 == 6) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\134\15\54\75", "\211\34\190\58\19\123")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\93\184\175\140", "\158\35\106\139\138\188\170")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\16\158\176\15\21", "\37\102\169\135\42")]];
													v294 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\150\75\179\109", "\192\235\174\126\150\93\87\231")][2];
													v291, v292 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\19\40\116\139", "\184\61\36\30\81\187\170")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\144\232\130\65", "\233\127\168\219\167\113")][v294](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\37\216\55\103", "\61\62\20\235\18\87\173\124")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\29\19\143\154", "\170\34\37\32\170")], v294 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\157\108\186\109", "\46\83\165\89\159\93")][3])));
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\175\80\233\157", "\174\105\152\104\204\173")] = (v292 + v294) - 1;
													FlatIdent_2B4B0 = 7;
												end
												if (FlatIdent_2B4B0 == 0) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\88\41\96\232\74", "\122\87\106\16\80\205")] = nil;
													v291, v292 = nil;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\90\176\165\166\188", "\168\128\104\137\150\131\140\144")] = nil;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\238\129\163\237\29", "\103\211\220\184\151\200\45\106")] = nil;
													FlatIdent_2B4B0 = 1;
												end
												if (FlatIdent_2B4B0 == 7) then
													v290 = 0;
													for v470 = v294, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\30\178\74\239", "\111\223\41\138")] do
														v290 = v290 + 1;
														TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\96\105\193\64", "\80\103\88\90\228\112\27\174")][v470] = v291[v290];
													end
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\145\173\239\190", "\97\62\166\154\202\142\96\101")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\179\130\91\109", "\93\192\132\181\126")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\64\216\81\248", "\98\151\120\237\116\200\185")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\93\32\225\214", "\136\68\106\19\196\230\174\214")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\106\12\197\140", "\157\155\93\59\224\188")]];
													FlatIdent_2B4B0 = 8;
												end
												if (FlatIdent_2B4B0 == 5) then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\161\176\187\126", "\108\55\150\135\158\78\87")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\83\165\191\152", "\64\190\100\146\154\168")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\253\211\86\235", "\35\139\197\230\115\219\222\114")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\135\185\168\142", "\137\88\176\138\141\190\21")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\167\29\141\225", "\209\70\144\42\168")]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\181\250\21\120", "\112\108\141\201\48\72")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\25\66\22\115", "\30\171\33\119\51\67")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\64\246\78\151\221", "\152\54\206\123\178\237")][3]];
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\140\252\74\136", "\86\140\187\203\111\184\235\174")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\95\33\65\23", "\39\173\104\22\100")] + 1;
													FlatIdent_2B4B0 = 6;
												end
												if (10 == FlatIdent_2B4B0) then
													do
														return;
													end
													break;
												end
												if (FlatIdent_2B4B0 == 9) then
													v294 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\183\71\121\70", "\92\118\143\114")][2];
													do
														return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\181\144\167\77", "\108\52\132\163\130\125")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\74\229\104\145", "\119\155\114\214\77\161")], v294, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\116\184\252\231", "\217\215\67\128")]);
													end
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\79\251\74\107", "\97\196\120\204\111\91")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\234\66\251\220", "\106\63\221\117\222\236\46\165")] + 1;
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\237\236\250\221", "\237\190\213\217\223")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\23\165\249\246", "\198\216\32\150\220")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\27\31\193\0", "\28\154\44\40\228\48\32\157")]];
													FlatIdent_2B4B0 = 10;
												end
											end
										end
									elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\96\172\7\10", "\85\36\88\154\34\58\135\54")] > 36) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\218\211\238\12\231", "\215\46\233\227\218\41")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\39\220\187\177\77", "\148\125\20\236\142")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\36\109\183\240", "\199\109\28\94\146\192\92")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\47\124\141\153", "\204\30\23\73\168\169\140\78")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\138\185\137\141", "\50\78\178\140\172\189\204\38")][3];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\104\151\57\175", "\19\186\95\160\28\159\100")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\185\133\176\133", "\74\217\142\178\149\181")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\24\215\143\113", "\136\27\32\226\170\65\109\190")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\153\249\101\174", "\158\208\174\202\64")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\112\229\184\13", "\157\61\71\210")]];
										v305 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\4\36\64\227", "\144\152\60\17\101\211\49")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\18\185\162\232", "\161\174\42\138\135\216")][v305](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\224\89\133\157", "\160\173\216\106")][v305 + 1]);
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\46\38\31\239", "\147\233\25\17\58\223")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\123\87\94\128", "\86\46\76\96\123\176")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\171\244\43\169\245", "\70\221\204\30\140\197\32\236")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\98\4\176\179", "\149\131\85\55")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\15\234\100\238\86", "\59\121\221\83\203\102\58\148")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\76\105\237\97", "\59\197\116\90\200\81")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\240\186\135\110", "\94\157\200\143\162")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\99\166\231\174", "\194\158\91\147")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\69\76\247\136", "\149\204\114\123\210\184")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\107\42\187\106", "\42\163\92\29\158\90\186")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\126\18\95\117", "\95\161\70\39\122\69\170")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\77\166\104\23", "\71\211\122\149\77\39\164")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\208\164\147\213", "\229\71\231\147\182")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\146\130\136\208", "\173\224\170\177")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\105\216\88\243", "\155\24\81\237\125\195\18")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\30\123\27\19\232", "\48\104\67\40\54\216\38")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\11\108\176\87", "\149\103\51\89")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\29\83\201\45", "\236\29\37\102")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\116\213\118\7", "\55\215\67\226\83")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\40\154\193\228", "\182\133\31\173\228\212")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\61\90\177\241\130", "\191\75\98\132\212\178\47\193")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\16\187\162\88", "\159\223\39\136\135\104\170")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\160\26\190\24", "\233\59\151\45\155\40\127")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\176\88\173\1\246", "\36\198\96\158")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\151\95\68\46", "\103\68\175\106\97\30\159\119")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\181\73\68\119", "\97\71\141\124")][3];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\142\229\123\97", "\81\203\185\210\94")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\143\123\232\4", "\112\177\184\76\205\52\50\208")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\132\7\232\240", "\192\217\188\50\205")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\26\5\124\154", "\170\101\45\54\89")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\181\255\87\16\243", "\53\195\200\96")]];
										v305 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\5\107\125\210", "\46\205\61\94\88\226")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\156\74\230\89", "\195\105\164\121")][v305](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\225\143\10\83", "\139\60\217\188\47\99")][v305 + 1]);
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\170\39\176\70", "\120\106\157\16\149\118")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\98\136\125\254\238", "\172\20\191\74\219\222\217")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\155\210\82\37", "\21\83\163\231\119")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\67\162\101\239", "\187\93\116\145\64\223\144\231")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\71\84\243\3", "\76\21\112\99\214\51")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\238\152\96\218", "\205\150\214\171\69\234")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\177\178\11\135", "\46\183\137\135")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\17\0\252\6", "\54\150\41\53\217")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\15\90\65\180", "\171\29\56\109\100\132")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\181\114\151\165", "\178\149\130\69")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\20\177\81\44", "\138\19\44\132\116\28")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\137\106\159\159", "\186\175\190\89")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\80\98\229\248", "\200\165\103\85\192")]];
										v305 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\189\230\30\21", "\50\206\133\211\59\37\86\111")][2];
										v304 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\185\86\90\82", "\98\161\129\101\127")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\188\26\133\2", "\76\237\132\47\160\50\29\36")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\138\227\158\235", "\187\219\178\208")][v305 + 1] = v304;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\139\211\155\80", "\173\44\179\224\190\96")][v305] = v304[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\253\35\24\211", "\227\165\197\22\61")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\30\9\237\156", "\200\172\41\62")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\187\145\244\248", "\200\109\140\166\209")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\29\140\21\146", "\48\162\37\185")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\86\71\239\23", "\39\78\97\116\202")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\185\162\11\178", "\69\219\142\149\46\130")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\16\65\11\103", "\87\172\40\114\46")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\181\183\253\85", "\101\22\141\130\216")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\113\184\229\27", "\23\22\73\141\192\43")][3];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\186\176\135\169", "\153\141\141\135\162")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\64\12\184\240", "\55\84\119\59\157\192\169")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\12\40\142\180", "\69\94\52\29\171\132\208\99")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\64\34\230\184", "\136\185\119\17\195")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\139\77\247\230", "\233\94\188\122\210\214")]];
										v305 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\75\156\193\236", "\183\52\115\169\228\220\220")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\6\180\154\150", "\221\176\62\135\191\166\37\127")][v305] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\30\125\14\176\88", "\149\104\69\61")][v305](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\132\81\153\11", "\188\59\181\98")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\246\101\225\34", "\123\202\206\86\196\18\124\148")], v305 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\181\215\80\181", "\151\18\141\226\117\133\152\25")][3]));
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\244\227\233\71", "\119\19\195\212\204")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\151\191\151\86", "\211\122\160\136\178\102\72")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\83\72\222\59\89", "\146\37\112\235\30\105\104\133")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\83\226\18\50\17", "\33\37\213\33\23")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\92\133\197\125", "\190\166\107\178\224\77")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\212\5\85\34", "\18\148\236\54\112")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\151\232\163\122\111", "\95\225\208\150\95")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\45\180\204\252", "\233\204\21\135")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\216\154\151\143", "\157\206\224\175\178\191")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\46\229\245\102", "\151\203\22\208\208\86\162\85")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\254\218\243\215", "\68\35\201\237\214\231\29")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\75\177\123\15", "\94\63\124\134")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\129\26\62\164", "\27\148\185\47")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\108\174\107\243", "\37\34\91\157\78\195\23\140")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\10\22\190\199\42", "\83\124\33\137\226\26")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\1\180\133\133", "\181\185\57\135\160")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\88\183\119\94", "\192\185\96\130\82\110\148")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\137\71\169\115", "\111\39\177\116\140\67\89")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\222\111\65\135", "\194\21\230\90\100\183")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\191\73\189\100", "\77\163\135\124\152\84\201")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\89\120\170\124", "\149\63\110\79\143\76")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\209\247\244\85", "\129\150\230\192\209\101\94")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\39\26\67\244", "\102\196\31\47")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\97\99\61\18", "\51\143\86\80\24\34\34\205")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\76\163\160\27", "\224\233\123\148\133\43\69")]];
										v305 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\96\44\196\135", "\225\183\88\25")][2];
										v304 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\169\224\119\237", "\96\97\145\211\82\221")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\177\1\247\92", "\49\165\137\52\210\108")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\126\78\243\30", "\214\46\70\125")][v305 + 1] = v304;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\155\216\255\134", "\218\182\163\235")][v305] = v304[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\122\248\109\125", "\77\205\66\205\72")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\236\168\27\211", "\85\197\219\159\62\227\173\50")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\161\124\74\102", "\51\78\150\75\111\86\175")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\213\158\0\108", "\37\92\237\171")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\91\142\153\70\30", "\46\45\185\170\99")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\156\152\242\166", "\150\115\171\175\215")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\221\137\224\209", "\68\93\229\186\197\225\111\35")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\23\93\169\221", "\22\155\47\104\140\237\139")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\112\0\62\151", "\44\128\72\53\27\167\189")][3];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\70\189\127\70", "\130\143\113\138\90\118\141\173")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\128\107\104\88", "\59\230\183\92\77\104")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\31\181\188\97", "\151\137\39\128\153\81")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\154\189\27\175", "\76\26\173\142\62\159\156\56")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\101\85\206\183", "\55\213\82\98\235\135\99")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\6\231\82\51\241", "\29\112\223\97\22\193")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\144\185\90\253", "\205\39\168\140\127")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\121\139\16\79", "\77\73\65\184\53\127")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\37\253\55\98", "\214\95\29\200\18\82\144")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\168\21\16\182", "\233\22\144\32\53\134")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\67\114\98\103", "\56\95\116\69\71\87")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\40\145\6\232", "\38\229\31\166\35\216\156")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\176\47\130\178\246", "\151\198\23\183")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\16\109\148\113", "\172\99\39\94\177\65\223")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\75\110\60\249", "\33\39\124\89\25\201\32\207")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\106\4\109\238", "\222\72\82\55\72")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\7\144\157\105", "\184\89\63\165")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\128\43\73\253", "\215\108\184\24\108\205\179\195")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\45\83\239\21", "\37\129\21\102\202")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\107\46\232\161", "\205\145\92\25")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\100\226\174\15", "\139\63\83\213")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\76\121\121\36", "\116\127\116\76\92\20\130")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\149\111\86\235", "\39\232\162\92\115\219")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\160\9\0\122", "\37\74\151\62")]];
										v305 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\98\118\99\6", "\66\218\90\67\70\54")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\115\155\13\224", "\53\150\75\168\40\208\72\229")][v305] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\225\19\200\127", "\79\135\217\32\237")][v305](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\81\179\11\95", "\78\208\96\128\46\111")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\173\22\92\186", "\231\81\149\37\121\138\136\52")], v305 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\67\47\105\196\37", "\21\53\23\92\225")][3]));
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\252\78\12\198\249", "\79\138\121\59\227\201\195\177")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\128\171\82\224", "\45\109\183\156\119\208\179")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\165\221\169\101", "\140\85\157\232")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\156\94\54\87", "\19\103\171\109")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\132\46\59\177", "\30\129\179\25")]];
										if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\168\247\50\208", "\134\113\144\196\23\224\121")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\224\208\22\189", "\51\141\216\229")][2]] ~= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\147\104\228\234", "\193\218\171\93")][4]) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\14\32\100\245\29", "\45\120\23\83\208")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\74\178\186\182", "\134\34\125\133\159")] + 1;
										else
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\19\140\101\10", "\63\229\36\187\64\58\212")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\83\26\100\137\21", "\172\37\34\81")][3];
										end
									else
										do
											return;
										end
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\35\109\253\177", "\106\56\27\91\216\129")] <= 39) then
									if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\174\184\188\114", "\174\65\150\142\153\66")] > 38) then
										if TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\218\64\196\83", "\99\77\226\115\225\99")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\233\123\180\159", "\94\224\209\78\145\175")][2]] then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\32\82\150\248", "\80\145\23\101\179\200\118\20")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\228\35\5\51\220", "\180\146\20\50\22\236")] + 1;
										else
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\220\174\165\179", "\131\50\235\153\128")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\23\238\57\44", "\184\159\47\219\28\28\70")][3];
										end
									else
										local FlatIdent_511F5 = 0;
										while true do
											if (FlatIdent_511F5 == 0) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\140\151\43\114\143", "\29\87\191\166")] = nil;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\11\226\95\13\174", "\158\143\56\211\104\40")] = nil;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\246\238\101\240", "\192\62\206\221\64")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\102\25\182\111", "\95\145\94\44\147")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\254\80\118\177", "\83\129\198\101")][3];
												FlatIdent_511F5 = 1;
											end
											if (FlatIdent_511F5 == 3) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\211\68\48\141", "\223\132\235\119\21\189\27\51")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\15\6\172\185\40", "\36\121\62\153\156\24\191")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\80\181\16\113", "\23\72\104\128\53\65")][3]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\148\243\98\145", "\71\161\163\196")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\220\219\94\127", "\212\83\235\236\123\79")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\79\112\21\111", "\196\40\119\69\48\95")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\150\8\86\142", "\190\62\161\59\115")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\105\103\30\90", "\84\159\94\80\59\106\185")]];
												FlatIdent_511F5 = 4;
											end
											if (FlatIdent_511F5 == 4) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\90\25\96\213", "\229\63\98\42\69")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\67\10\11\109", "\182\191\123\63\46\93\150")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\43\116\21\252", "\118\142\19\71\48\204\112\197")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\19\24\97\210", "\118\63\43\45\68\226")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\187\25\233\231", "\192\33\131\44\204\215\36")][4]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\184\218\252\174", "\217\158\143\237")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\17\21\124\9", "\113\28\38\34\89\57\190")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\227\228\21\210", "\226\73\219\209\48")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\30\162\164\250", "\218\216\41\145\129\202\190")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\78\28\169\73", "\29\200\121\43\140\121")]];
												FlatIdent_511F5 = 5;
											end
											if (FlatIdent_511F5 == 8) then
												v317 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\103\109\184\28", "\44\196\95\88\157")][2];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\92\209\201\218", "\47\147\100\226\236\234")][v317] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\197\139\37\75\131", "\110\179\179\22")][v317](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\134\16\63\0", "\25\187\183\35\26\48\87\140")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\135\13\51\45", "\22\29\191\62")], v317 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\162\154\113\92", "\212\232\154\175\84\108")][3]));
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\75\155\188\147", "\42\90\124\172\153\163\76\236")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\221\239\61\120", "\24\72\234\216")] + 1;
												FlatIdent_511F5 = 9;
											end
											if (FlatIdent_511F5 == 5) then
												v317 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\117\69\1\2", "\92\128\77\112\36\50\105\41")][2];
												v316 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\12\93\231\43", "\194\27\52\110")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\112\153\107\8", "\197\149\72\172\78\56\63\191")][3]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\216\39\56\2", "\29\50\224\20")][v317 + 1] = v316;
												FlatIdent_511F5 = 6;
											end
											if (FlatIdent_511F5 == 2) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\183\43\254\53\163", "\17\193\19\205\16\147\49")][v317](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\45\24\3\158", "\76\148\21\43\38\174")][v317 + 1]);
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\195\176\176\93\133", "\120\181\135\135")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\164\80\140\182", "\169\134\147\103")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\183\72\49\213", "\229\194\143\125\20")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\228\155\166\212", "\131\228\211\168")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\134\18\100\86", "\196\34\177\37\65\102\136\148")]];
												FlatIdent_511F5 = 3;
											end
											if (FlatIdent_511F5 == 9) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\33\140\27\149", "\165\118\25\185\62")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\30\182\5\85", "\32\101\41\133")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\18\5\228\35", "\179\140\37\50\193\19")]];
												if not TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\229\66\110\85", "\152\40\221\113\75\101")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\181\238\201\243", "\123\27\141\219\236\195")][2]] then
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\9\181\180\212", "\84\32\62\130\145\228\37\107")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\211\30\246\22", "\178\65\228\41\211\38\54")] + 1;
												else
													TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\98\240\86\154\95", "\94\20\199\97\191\111\68\58")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\219\181\82\26", "\89\177\227\128\119\42\176")][3];
												end
												break;
											end
											if (FlatIdent_511F5 == 6) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\6\169\112\84", "\75\150\62\154\85\100\149\183")][v317] = v316[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\78\181\154\16", "\112\28\118\128\191\32\189")][4]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\185\114\103\112", "\166\96\142\69\66\64")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\145\189\86\15", "\78\80\166\138\115\63")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\81\254\85\1", "\49\46\105\203\112")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\46\117\56\213", "\110\205\25\70\29\229")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\146\89\138\124", "\159\197\165\110\175\76\149\122")]];
												FlatIdent_511F5 = 7;
											end
											if (FlatIdent_511F5 == 7) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\33\86\155\107", "\115\184\25\101\190\91")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\107\91\137\43", "\172\27\83\110")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\30\210\253\103", "\216\87\38\225")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\255\98\114\7", "\57\23\199\87\87\55\75")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\160\125\236\139", "\187\119\152\72\201")][4]];
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\183\167\159\189\241", "\152\193\144\168")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\244\20\237\106", "\194\26\195\35\200\90\59")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\140\72\170\74", "\134\163\180\125\143\122\33")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\127\24\168\145", "\141\161\72\43")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\36\229\76\67", "\187\235\19\210\105\115")]];
												FlatIdent_511F5 = 8;
											end
											if (FlatIdent_511F5 == 1) then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\93\139\119\246", "\198\187\106\188\82")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\77\161\120\141", "\75\66\122\150\93\189\90")] + 1;
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\10\222\172\163", "\147\128\50\235\137")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\220\147\153\134\248", "\64\170\164\170\163\200\223")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\237\242\31\208", "\169\98\218\197\58\224\28")]];
												v317 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\69\176\182\154", "\171\144\125\133\147\170\180")][2];
												FlatIdent_511F5 = 2;
											end
										end
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\10\236\168\26\45", "\111\124\212\158\63\29\89")] == 40) then
									local FlatIdent_32708 = 0;
									while true do
										if (FlatIdent_32708 == 9) then
											if TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\99\139\73\107", "\59\41\91\184\108\91\110\16")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\31\247\30\67", "\115\232\39\194\59")][2]] then
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\156\176\115\242", "\194\123\171\135\86")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\213\46\129\100", "\21\63\226\25\164\84\159\124")] + 1;
											else
												TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\159\232\148\113", "\122\142\168\223\177\65\158")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\123\68\64\138", "\72\163\67\113\101\186\54")][3];
											end
											break;
										end
										if (FlatIdent_32708 == 8) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\31\22\124\99", "\131\127\39\37\89\83")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\223\79\186\6\10", "\165\169\119\143\35\58")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\160\123\240\184", "\182\131\152\72\213\136\113")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\72\224\237\22", "\200\38\112\213")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\87\154\15\129", "\84\132\111\175\42\177\191")][4]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\222\122\140\95", "\98\136\233\77\169\111\37\83")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\226\106\235\185", "\185\17\213\93\206\137")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\98\223\80\234", "\218\220\90\234\117")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\70\151\101\1", "\17\162\113\164\64\49\74")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\94\130\65\216", "\116\96\105\181\100\232\157")]];
											FlatIdent_32708 = 9;
										end
										if (FlatIdent_32708 == 3) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\102\31\233\177\93", "\109\16\40\222\148")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\195\130\8\244\133", "\209\181\181\63")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\104\162\253\144", "\45\144\80\151\216\160")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\106\233\96\14", "\62\68\93\218\69")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\76\100\128\108", "\114\127\123\83\165\92\95")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\133\173\246\150", "\211\166\189\158")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\249\141\120\98", "\140\93\193\184\93\82")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\246\161\184\219", "\143\19\206\146\157\235")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\73\221\249\128", "\220\176\113\232")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\67\16\171\190", "\184\118\123\37\142\142")][4]];
											FlatIdent_32708 = 4;
										end
										if (FlatIdent_32708 == 4) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\181\112\77\253", "\104\205\130\71")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\69\19\192\91", "\129\230\114\36\229\107\121\16")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\87\171\243\147", "\196\32\111\158\214\163\167")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\69\159\85\125", "\112\77\114\172")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\23\127\103\228", "\212\237\32\72\66")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\183\47\105\231", "\76\215\143\28")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\157\188\5\212", "\229\33\165\137\32\228\85")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\218\80\57\68", "\232\215\226\101\28\116\165\216")][3];
											FlatIdent_32708 = 5;
										end
										if (FlatIdent_32708 == 2) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\250\179\162\93", "\100\211\205\132\135\109\108")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\183\67\158\181\233", "\217\193\116\169\144")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\15\22\124\59\224", "\72\121\46\73\30\208")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\131\167\197\81", "\228\211\180\148\224\97")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\165\232\174\32", "\140\51\146\223\139\16")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\68\209\232\175", "\159\143\124\226\205")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\165\17\20\65", "\37\26\157\36\49\113\211")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\123\234\128\229", "\213\196\67\223\165")][3]];
											FlatIdent_32708 = 3;
										end
										if (FlatIdent_32708 == 7) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\7\186\190\172", "\156\143\63\137\155")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\115\40\121\216", "\232\114\75\29\92")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\9\172\19\153", "\170\105\49\153\54\169")][3]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\9\44\139\65", "\212\127\62\27\174\113\134\232")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\86\228\251\166", "\219\147\97\211\222\150\62")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\24\163\200\213", "\209\160\32\150\237\229")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\109\22\7\40", "\236\211\90\37\34\24\151")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\243\228\197\4", "\224\52\196\211")]];
											FlatIdent_32708 = 8;
										end
										if (FlatIdent_32708 == 1) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\203\224\4\145\17", "\33\189\216\49\180")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\237\100\106\235", "\219\204\218\87\79")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\195\45\234\12\17", "\229\181\26\221\41\33")]];
											v328 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\169\177\75\34", "\37\186\145\132\110\18\123\76")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\73\187\76\211", "\105\227\113\136")][v328](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\70\82\198\76", "\20\99\126\97\227\124\237\135")][v328 + 1]);
											FlatIdent_32708 = 2;
										end
										if (FlatIdent_32708 == 6) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\144\117\98\28", "\71\44\168\70")][v328](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\95\136\137\82", "\172\98\103\187")][v328 + 1]);
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\16\215\105\104", "\217\71\39\224\76\88\118\207")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\238\172\236\221", "\201\237\217\155")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\27\14\137\234", "\203\23\35\59\172\218\232\105")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\254\243\62\114", "\27\66\201\192")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\114\172\48\154", "\58\66\69\155\21\170")]];
											FlatIdent_32708 = 7;
										end
										if (FlatIdent_32708 == 5) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\114\244\30\112", "\64\108\69\195\59")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\36\155\29\18", "\34\114\19\172\56")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\125\38\135\129", "\177\174\69\19\162")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\25\27\95\214", "\196\236\46\40\122\230\122")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\160\35\228\187", "\98\223\151\20\193\139\80")]];
											v328 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\253\209\159\250", "\167\50\197\228\186\202\146\38")][2];
											FlatIdent_32708 = 6;
										end
										if (FlatIdent_32708 == 0) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\12\103\115\125\11", "\88\59\63\85\75")] = nil;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\137\190\194\217", "\100\210\177\141\231\233")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\208\98\251\170", "\130\158\232\87\222\154")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\115\19\102\69", "\117\78\75\38\67")][3];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\103\11\11\68", "\116\152\80\60\46")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\64\115\49\227", "\126\52\119\68\20\211\101\190")] + 1;
											FlatIdent_32708 = 1;
										end
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\223\167\196\121", "\225\73\231\148")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\110\27\19\150", "\166\113\86\46\54")][2]] < TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\141\36\152\177", "\103\175\181\23\189\129\166\231")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\64\0\17\141", "\109\209\120\53\52\189")][4]]) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\95\170\87\139", "\210\35\104\157\114\187")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\146\226\126\241", "\176\26\165\213\91\193\45\97")] + 1;
								else
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\113\221\165\171", "\138\87\70\234\128\155\115")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\183\131\135\5\143", "\173\193\187\178\32\191\194\112")][3];
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\122\133\162\69", "\68\140\66\179\135\117")] <= 45) then
								if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\98\210\30\191\107", "\200\20\234\40\154\91\53")] <= 43) then
									if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\227\253\254\43", "\27\32\219\203\219")] > 42) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\165\74\251\174", "\223\70\157\121\222\158\16\50")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\77\251\168\191", "\73\208\117\206\141\143\46")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\162\2\54\255", "\19\207\154\49")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\45\106\87\185\79", "\158\91\82\98\156\127")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\220\183\131\98", "\237\209\228\130\166\82\85")][4]];
									else
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\246\170\146\71\121", "\73\151\197\153\165\98")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\67\66\160\143\235", "\69\53\122\149\170\219\18")][2];
										do
											return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\174\71\179\98", "\234\81\159\116\150\82\54\140")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\152\86\90\74", "\127\122\160\101")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\120\122\190\228\90", "\225\55\75\73\137\193\106\26")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\232\21\77\12\235", "\122\41\219\38")] + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\251\140\240\39", "\213\23\195\185")][3]);
										end
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\120\32\233\157", "\231\232\64\22\204\173\80\34")] == 44) then
									local FlatIdent_61057 = 0;
									while true do
										if (0 == FlatIdent_61057) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\8\156\252\15\11", "\196\42\59\175")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\106\108\85\104", "\88\66\82\89\112")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\216\124\16\14", "\62\126\224\79\53")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\42\151\208\140\12", "\169\60\25\164\232")]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\84\211\149\1", "\175\163\108\224\176\49\109")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\109\119\237\106\120", "\72\175\94\68\213\79")]](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\232\160\142\191", "\143\187\217\147\171")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\203\64\36\250\87", "\103\189\120\23\223")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\23\42\92\236\94", "\129\19\36\25\100\201\110\121")] + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\16\72\9\249\86", "\220\102\127\49")]));
											break;
										end
									end
								else
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\69\28\137\88", "\211\40\125\47\172\104\212\223")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\25\121\75\30", "\110\46\33\76")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\217\237\154\103", "\87\212\225\216\191")][3]];
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\11\147\205\233", "\217\134\51\165\232")] <= 47) then
								if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\181\100\150\64\70", "\118\195\92\160\101")] == 46) then
									local FlatIdent_5E6B6 = 0;
									while true do
										if (FlatIdent_5E6B6 == 3) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\191\66\109\122", "\126\57\135\113\72\74\68")][v343] = v342[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\37\38\57\93", "\65\230\29\19\28\109\142")][4]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\242\226\92\47", "\50\27\197\213\121\31\232\24")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\18\243\161\8", "\132\56\37\196")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\132\98\242\142", "\135\56\188\87\215\190")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\126\6\77\10", "\58\203\73\53\104")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\153\188\156\178", "\100\123\174\139\185\130")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\120\98\115\95", "\199\96\64\81\86\111")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\138\20\10\79", "\127\111\178\33\47")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\235\113\151\180", "\156\111\211\68\178\132\189\144")][3];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\135\23\161\164", "\62\139\176\32\132\148\139\81")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\127\142\18\213", "\109\144\72\185\55\229\123\17")] + 1;
											FlatIdent_5E6B6 = 4;
										end
										if (7 == FlatIdent_5E6B6) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\23\5\23\88", "\61\60\32\50\50\104\194\169")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\114\39\92\226", "\121\210\69\16")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\69\38\4\173", "\157\78\125\19\33")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\35\163\148\137", "\177\185\20\144")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\3\153\96\212", "\228\60\52\174\69")]];
											v343 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\4\187\72\41", "\25\122\60\142\109")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\89\34\246\176", "\128\113\97\17\211")][v343](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\131\189\148\174", "\214\126\178\142\177\158")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\113\103\11\65", "\94\33\73\84\46\113")], v343 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\3\14\91\225", "\126\209\59\59")][3]));
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\24\255\157\241", "\232\210\47\200\184\193\192")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\156\167\154\8\235", "\219\234\144\173\45")] + 1;
											FlatIdent_5E6B6 = 8;
										end
										if (FlatIdent_5E6B6 == 0) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\79\123\125\124\66", "\114\192\124\79\79\89")] = nil;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\163\227\151\163\216", "\134\232\144\215\164")] = nil;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\30\1\16\217", "\83\141\38\50\53\233\123\174")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\218\240\16\100", "\16\93\226\197\53\84\223\33")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\139\169\95\248", "\119\25\179\156\122\200")][3];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\184\127\177\168", "\148\152\143\72")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\74\140\129\105", "\89\156\125\187\164")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\15\144\253\152", "\96\160\55\165\216\168\144\191")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\14\3\38\127\72", "\90\120\52\21")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\71\172\16\148", "\214\235\112\155\53\164")]];
											FlatIdent_5E6B6 = 1;
										end
										if (FlatIdent_5E6B6 == 6) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\155\165\7\3", "\34\51\163\144")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\221\46\4\6", "\54\134\234\29\33")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\119\107\174\104", "\139\88\64\92")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\105\118\69\56\71", "\119\31\78\118\29")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\162\26\187\117", "\193\76\154\47\158\69\136")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\15\93\23\190", "\237\171\55\104\50\142")][3]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\159\157\98\15", "\21\106\168\170\71\63")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\2\41\21\232", "\216\72\53\30\48")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\175\254\198\129", "\177\50\151\203\227")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\16\212\123\163\80", "\96\102\227\72\134")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\21\89\70\66", "\114\132\34\110\99")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\162\65\135\163", "\29\188\154\114\162\147\186\196")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\90\221\170\20", "\148\98\98\232\143\36")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\28\111\86\243", "\195\203\36\90\115")][3]];
											FlatIdent_5E6B6 = 7;
										end
										if (FlatIdent_5E6B6 == 5) then
											v343 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\42\45\96\215", "\69\231\18\24")][2];
											v342 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\102\135\97\111\32", "\74\16\191\82")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\194\77\21\93\47", "\25\180\117\32\120\31\210")][3]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\37\18\140\97", "\169\81\29\33")][v343 + 1] = v342;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\229\129\54\64", "\112\157\221\178\19")][v343] = v342[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\67\94\97\129", "\64\147\123\107\68\177\73")][4]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\117\115\104\126", "\194\207\66\68\77\78\22")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\74\78\30\113", "\126\79\125\121\59\65\213\83")] + 1;
											FlatIdent_5E6B6 = 6;
										end
										if (FlatIdent_5E6B6 == 4) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\128\29\29\37", "\144\177\184\40\56\21")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\162\74\226\117", "\218\227\149\121\199\69")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\6\148\171\118", "\233\207\49\163\142\70\217")]];
											v343 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\129\151\168\145", "\225\46\185\162\141\161\208")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\136\47\24\235", "\219\183\176\28\61")][v343] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\83\91\153\181\167", "\60\37\99\170\144\151\159\227")][v343](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\250\127\242\37", "\46\55\203\76\215\21\82\218")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\134\170\121\179", "\140\230\190\153\92\131\118")], v343 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\144\154\2\8", "\25\171\168\175\39\56\134\44")][3]));
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\229\148\116\214", "\28\79\210\163\81\230\236")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\135\83\195\171", "\155\122\176\100\230")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\221\72\97\168", "\152\203\229\125\68")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\250\119\180\134", "\145\182\205\68")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\125\17\50\220", "\141\226\74\38\23\236\84")]];
											FlatIdent_5E6B6 = 5;
										end
										if (FlatIdent_5E6B6 == 2) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\126\240\137\141", "\20\141\73\199\172\189\237\155")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\84\77\64\107", "\184\140\99\122\101\91\128\43")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\84\237\67\171", "\102\155\108\216")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\222\6\224\184", "\219\78\233\53\197\136\144")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\45\102\164\239\103", "\49\91\81\147\202\87\145")]];
											v343 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\15\13\171\210", "\46\97\55\56\142\226\64")][2];
											v342 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\208\137\190\21", "\41\103\232\186\155\37\131\106")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\177\132\158\108", "\187\92\137\177")][3]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\90\218\78\39", "\56\34\98\233\107\23\57")][v343 + 1] = v342;
											FlatIdent_5E6B6 = 3;
										end
										if (FlatIdent_5E6B6 == 8) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\25\188\64\73", "\79\44\33\137\101\121\131\57")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\203\1\45\8\117", "\72\189\54\30\45\69\209\157")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\238\161\147\6", "\54\97\217\150\182")]];
											do
												return;
											end
											break;
										end
										if (FlatIdent_5E6B6 == 1) then
											v343 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\182\84\105\25", "\76\41\142\97")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\156\157\80\42", "\118\137\164\174\117\26\126\121")][v343](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\248\29\63\44", "\110\106\192\46\26\28")][v343 + 1]);
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\27\68\172\145", "\169\172\44\115\137\161\108")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\162\218\145\12", "\60\207\149\237\180")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\108\222\163\167", "\134\151\84\235")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\88\225\72\39", "\23\43\111\210\109")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\79\167\184\76", "\137\21\120\144\157\124\42")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\83\66\254\80", "\105\145\107\113\219\96\195")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\171\71\124\177", "\89\129\147\114")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\237\244\89\1", "\178\123\213\193\124\49")][3]];
											FlatIdent_5E6B6 = 2;
										end
									end
								else
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\236\91\163\68\78", "\231\187\223\110\151\97\126")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\10\46\72\103", "\54\80\50\27\109\87")][3];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\141\222\225\63\161", "\176\42\190\235\212\26\145\178")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\101\104\162\138", "\232\26\93\91\135\186\224")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\29\188\173\188\0\160", "\99\107\143\152\136\37\144")]];
									for v473 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\35\137\221\31\136", "\184\67\16\188\233\58")] + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\75\114\15\168", "\85\111\115\71\42\152")][4] do
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\43\126\65\168\36", "\153\101\24\75\116\141\20\51")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\75\144\95\120\72", "\106\93\120\165")] .. TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\0\39\144\10", "\181\58\56\20")][v473];
									end
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\252\162\193\71", "\119\44\196\145\228")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\32\236\6\178", "\190\147\24\217\35\130\197")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\9\165\183\154\10", "\130\191\58\144")];
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\71\163\100\175", "\159\18\127\149\65")] <= 48) then
								local FlatIdent_90DF8 = 0;
								while true do
									if (FlatIdent_90DF8 == 7) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\180\120\146\123", "\218\231\131\79\183\75\50\206")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\95\164\165\237", "\157\149\104\147\128\221\136\219")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\172\175\132\208", "\161\224\148\154")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\172\20\186\138", "\54\95\155\39\159\186")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\64\224\187\155", "\158\171\119\215")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\17\242\71\157", "\178\90\41\193\98\173\63")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\186\172\143\153", "\165\71\130\153\170\169\99\100")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\127\101\69\82", "\96\98\71\80")][3];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\28\4\165\19", "\92\222\43\51\128\35")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\233\157\243\10", "\237\215\222\170\214\58\61")] + 1;
										FlatIdent_90DF8 = 8;
									end
									if (FlatIdent_90DF8 == 1) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\5\11\225\185", "\175\58\61\62\196\137\106\104")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\16\166\190\77", "\128\145\39\149\155\125\99\66")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\80\5\12\113", "\41\65\103\50")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\104\173\4\233", "\56\81\80\158\33\217")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\78\69\31\128", "\119\26\118\112\58\176\143\188")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\168\117\55\137", "\227\78\144\64\18\185")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\61\174\217\3\123", "\38\75\150\234")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\22\64\236\176", "\201\128\46\117")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\237\179\252\104", "\182\21\218\132\217\88")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\176\168\17\64", "\215\24\135\159\52\112")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\172\1\196\245", "\193\115\148\52\225\197\224")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\14\81\92\237", "\108\39\57\98\121\221")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\96\222\190\216", "\156\135\87\233\155\232\138\208")]];
										FlatIdent_90DF8 = 2;
									end
									if (FlatIdent_90DF8 == 10) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\152\210\107\247", "\199\213\160\225\78")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\220\209\244\77", "\145\232\228\228\209\125\206")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\238\172\72\239", "\109\223\214\159")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\93\134\99\38", "\169\139\101\179\70\22\117\199")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\54\92\7\142\24", "\80\64\100\50\171\40")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\215\136\137\118", "\210\43\224\191\172\70\191\61")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\14\211\132\77", "\125\85\57\228\161")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\101\244\234\125", "\207\77\93\193")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\94\233\227\242", "\114\50\105\218\198\194\24")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\152\247\144\6", "\180\143\175\192\181\54\136")]];
										v358 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\7\71\159\7", "\227\205\63\114\186\55\121\183")][2];
										FlatIdent_90DF8 = 11;
									end
									if (FlatIdent_90DF8 == 14) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\93\238\9\103", "\44\87\106\217")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\40\91\243\160", "\214\144\16\110")][3];
										break;
									end
									if (FlatIdent_90DF8 == 3) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\240\162\113\180", "\84\132\199\149")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\227\209\126\177", "\61\79\212\230\91\129\132\149")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\222\232\72\33", "\102\172\230\221\109\17\190\131")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\224\154\139\188", "\157\132\215\169\174\140\108\22")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\172\68\234\170", "\64\215\155\115\207\154\87\173")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\225\189\82\167", "\233\116\217\142\119\151\21")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\114\90\229\98", "\82\202\74\111\192")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\2\21\207\142", "\190\174\58\32\234")][3];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\190\99\189\99", "\142\87\137\84\152\83")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\252\108\179\158", "\55\224\203\91\150\174\80")] + 1;
										FlatIdent_90DF8 = 4;
									end
									if (FlatIdent_90DF8 == 2) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\27\101\63\212", "\26\228\35\86")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\231\253\236\8", "\65\136\223\200\201\56\139\68")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\162\98\178\10", "\58\158\154\87\151")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\251\185\204\89", "\90\134\204\142\233\105\16\87")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\112\166\230\240", "\195\192\71\145")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\137\172\81\10", "\41\235\177\153\116\58")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\169\135\69\88", "\72\136\158\180\96\104")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\38\150\8\106", "\45\90\17\161")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\186\20\166\106", "\28\175\130\39\131\90\142\65")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\98\32\234\205\133", "\181\20\24\223\232")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\227\35\245\92", "\66\61\219\16\208\108\70")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\240\172\206\14", "\235\62\200\153")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\244\247\230\10", "\195\58\204\194")][4]];
										FlatIdent_90DF8 = 3;
									end
									if (FlatIdent_90DF8 == 9) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\143\230\103\102", "\86\192\183\211\66")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\12\34\15\165", "\228\227\59\17\42\149")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\254\32\134\252", "\163\204\201\23")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\154\73\3\74", "\38\122\162\122")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\255\178\186\227", "\211\73\199\135\159")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\91\250\111\140", "\18\151\99\201\74\188")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\92\234\111\97", "\127\61\100\223\74\81\166")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\149\136\138\249", "\201\56\173\189\175")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\190\213\178\179", "\131\87\137\226\151")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\174\94\205\100", "\126\209\153\105\232\84\109\57")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\131\225\5\132", "\180\185\187\212\32")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\3\12\68\248", "\200\185\52\63\97")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\23\30\157\237", "\25\26\32\41\184\221\75\124")]];
										FlatIdent_90DF8 = 10;
									end
									if (FlatIdent_90DF8 == 5) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\250\20\13\245", "\197\59\194\33\40")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\28\238\175\183", "\219\237\43\221\138\135\157")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\233\42\228\45", "\29\148\222\29\193")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\26\124\136\134", "\182\128\34\79\173")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\80\188\165\12", "\60\95\104\137\128")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\46\224\12\102", "\41\86\22\213")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\94\210\23\230", "\214\111\105\229\50")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\127\171\16\126", "\78\153\72\156\53")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\126\99\175\116", "\138\68\70\86")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\31\177\68\128", "\156\84\40\130\97\176\137")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\91\190\72\103", "\149\143\108\137\109\87")]];
										FlatIdent_90DF8 = 6;
									end
									if (FlatIdent_90DF8 == 13) then
										v358 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\118\30\72\171", "\109\155\78\43")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\237\44\95\239", "\127\68\213\31\122\223")][v358](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\189\94\249\99", "\220\83\140\109")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\89\74\133\84", "\200\213\97\121\160\100\219\200")], v358 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\112\142\27\176", "\155\159\72\187\62\128\115\124")][3]));
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\170\89\89\97", "\124\81\157\110")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\40\84\88\212", "\67\144\31\99\125\228\178\205")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\197\105\136\114\148", "\108\179\81\189\87\164\186\70")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\229\160\185\96", "\80\182\210\147\156")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\24\153\71\21\123", "\75\110\174\112\48")]];
										FlatIdent_90DF8 = 14;
									end
									if (FlatIdent_90DF8 == 11) then
										v357 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\236\27\123\22", "\76\209\212\40\94\38\194")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\15\151\154\51\215", "\100\121\175\175\22\231\216\61")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\132\176\82\151", "\119\167\188\131")][v358 + 1] = v357;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\89\234\75\29", "\189\40\97\217\110\45")][v358] = v357[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\158\149\30\213", "\229\74\166\160\59")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\167\82\93\234", "\223\50\144\101\120\218")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\240\18\248\228", "\97\171\199\37\221\212\85\68")] + 1;
										FlatIdent_90DF8 = 12;
									end
									if (FlatIdent_90DF8 == 6) then
										v358 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\47\174\77\6", "\54\90\23\155\104")][2];
										v357 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\250\151\81\163", "\147\81\194\164\116")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\243\97\111\152", "\22\76\203\84\74\168\126")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\141\182\137\253", "\175\188\181\133\172\205\105")][v358 + 1] = v357;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\39\251\112\253", "\157\208\31\200\85\205")][v358] = v357[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\160\233\119\40", "\63\61\152\220\82\24\19\84")][4]];
										FlatIdent_90DF8 = 7;
									end
									if (FlatIdent_90DF8 == 12) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\208\9\237\19", "\173\192\232\60\200\35\187")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\146\186\73\14", "\115\166\165\137\108\62\25")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\208\44\236\92", "\201\108\231\27")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\247\168\5\17", "\33\63\207\155\32\33")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\191\240\15\124", "\76\233\135\197\42")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\158\217\138\186", "\138\212\166\236\175")][3];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\215\136\97\108", "\100\201\224\191\68\92\226\125")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\79\108\29\30", "\23\36\120\91\56\46\156")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\128\39\89\72", "\41\143\184\18\124\120")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\88\25\132\2", "\47\206\111\42\161\50")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\220\27\146\140\250", "\202\170\44\165\169")]];
										FlatIdent_90DF8 = 13;
									end
									if (FlatIdent_90DF8 == 4) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\39\40\117\147", "\31\216\31\29\80\163\123\73")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\90\186\239\131", "\186\119\109\137\202\179")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\12\7\135\232", "\138\90\59\48\162\216\149")]];
										v358 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\244\101\80\78", "\51\217\204\80\117\126\161\175")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\252\25\54\154", "\137\174\196\42\19\170")][v358](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\223\180\20\227", "\34\29\231\135\49\211\50\91")][v358 + 1]);
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\123\181\21\5", "\53\191\76\130\48")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\30\224\16\99", "\53\83\41\215")] + 1;
										FlatIdent_90DF8 = 5;
									end
									if (FlatIdent_90DF8 == 8) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\122\80\139\138", "\69\78\66\101\174\186\221\202")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\81\245\78\211", "\107\227\102\198")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\83\151\96\24\219", "\91\37\160\87\61\235\56")]];
										v358 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\19\2\128\110", "\63\60\43\55\165\94\146")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\14\188\156\17", "\193\127\54\143\185\33\47\207")][v358] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\27\26\147\186", "\184\109\35\41\182\138")][v358](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\189\250\63\190", "\217\95\140\201\26\142\234")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\39\38\111\170", "\154\141\31\21\74")], v358 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\112\23\178\68", "\37\142\72\34\151\116")][3]));
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\125\212\155\118", "\70\210\74\227\190")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\19\188\83\144", "\114\142\36\139\118\160\110")] + 1;
										FlatIdent_90DF8 = 9;
									end
									if (FlatIdent_90DF8 == 0) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\177\71\186\97\94", "\110\128\130\114\141\68")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\2\135\250\103\234", "\66\218\49\178\194")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\155\212\204\120", "\33\145\163\231\233\72\221\213")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\7\190\189\233", "\106\50\63\139\152\217")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\189\160\206\11", "\59\229\133\147\235")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\61\9\76\129\245", "\55\75\49\121\164\197")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\133\222\64\233", "\217\218\189\235\101")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\47\180\120\97", "\168\233\24\131\93\81")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\83\104\117\52\170", "\214\37\95\66\17\154\95")] + 1;
										FlatIdent_90DF8 = 1;
									end
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\253\255\61\234", "\39\187\197\201\24\218\176\43")] == 49) then
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\230\111\131\23", "\102\69\222\92\166\39\157\225")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\125\103\136\134", "\40\30\69\82\173\182\80")][2]] = not TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\1\136\28\117", "\213\210\57\187\57\69")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\31\142\228\121", "\109\158\39\187\193\73\94\171")][3]];
							else
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\255\12\204\129", "\152\183\200\59\233\177")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\250\227\122\171", "\126\227\194\214\95\155\195\30")][3];
							end
						elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\45\250\173\170", "\136\154\21\204")] <= 59) then
							if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\40\218\248\39", "\27\60\16\236\221\23\16\207")] <= 54) then
								if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\89\150\167\135", "\130\183\97\160")] <= 52) then
									if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\29\70\22\16", "\227\219\37\112\51\32\169")] == 51) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\162\136\249\61\156", "\101\92\145\191\200\24\172\72")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\145\187\185\237\13", "\89\205\162\140\139\200\61")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\183\164\241\143\241", "\170\193\156\194")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\209\30\12\30", "\46\235\233\43\41")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\247\137\86\10", "\115\58\207\188")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\153\94\8\115", "\67\197\161\107\45")][4];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\225\228\75\214", "\230\51\214\211\110")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\80\21\243\83", "\235\43\103\34\214\99")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\43\17\27\163", "\76\28\19\36\62\147")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\189\241\87\71", "\173\220\138\194\114\119\33\108")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\64\136\235\89\132", "\180\54\191\220\124")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\82\158\95\219", "\120\218\106\173\122\235\16\175")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\178\80\74\174\244", "\139\196\104\127")][2]] = {};
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\68\242\101\128", "\64\176\115\197")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\160\20\84\78", "\126\25\151\35\113")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\249\135\148\252\22", "\112\143\191\161\217\38\117\232")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\159\77\12\246", "\145\38\168\126\41\198")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\112\172\58\191", "\61\122\71\155\31\143\67")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\223\167\54\129", "\19\177\231\148")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\255\210\147\41", "\192\207\199\231\182\25\108\62")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\102\88\22\68", "\51\116\94\109")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\32\214\176\25", "\149\41\24\227")][4];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\253\27\236\243", "\127\191\202\44\201\195\213")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\169\15\9\255", "\91\166\158\56\44\207\234\159")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\141\42\79\77", "\77\175\181\31\106\125\47")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\151\178\185\241", "\193\76\160\129\156")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\124\19\24\211", "\233\187\75\36\61\227\178\235")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\24\181\235\8", "\206\56\32\134")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\69\68\72\226", "\232\88\125\113\109\210")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\164\16\116\154", "\86\61\156\37\81\170\195\24")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\149\147\135\90", "\69\93\173\166\162\106")][4];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\158\219\106\187", "\186\188\169\236\79\139\213\213")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\107\78\152\212", "\228\176\92\121\189")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\11\151\171\20", "\36\183\51\162\142")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\126\239\198\170", "\237\217\73\220\227\154\152")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\143\185\83\128", "\96\206\184\142\118\176\162\177")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\110\134\156\106", "\138\184\86\181\185\90\232\119")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\113\209\167\221", "\183\22\73\228\130\237")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\232\90\58\105", "\67\187\208\111\31\89\223\76")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\221\137\195\22", "\230\38\229\188")][4];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\252\87\231\57\186", "\28\138\96\208")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\226\116\171\127", "\215\71\213\67\142\79\117")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\183\95\121\225", "\209\145\143\106\92")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\213\140\119\244", "\177\67\226\191\82\196\64")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\222\247\115\54\152", "\25\168\192\68\19\168\138\170")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\225\22\183\108", "\214\35\217\37\146\92")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\160\212\59\152", "\81\48\152\225\30\168")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\4\47\153\23", "\140\184\60\26\188\39")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\93\19\27\12", "\30\27\101\32\62\60\112")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\241\3\2\124", "\76\186\201\54\39")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\6\148\24\240\90", "\87\112\163\47\213\106\125")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\142\104\25\125", "\60\77\185\95")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\252\171\97\74", "\68\122\196\158")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\255\36\166\37", "\146\175\200\23\131\21\100")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\229\252\13\213", "\40\229\210\203")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\251\118\240\161", "\213\145\195\69")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\237\158\111\183", "\135\217\213\171\74")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\109\249\53\11", "\205\40\85\204\16\59\205\117")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\228\93\254\56\162", "\29\146\101\203")][4];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\143\129\119\234", "\218\157\184\182\82")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\2\230\158\86", "\77\95\53\209\187\102")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\138\225\241\68", "\50\77\178\212\212\116\220\56")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\25\233\2\93", "\174\133\46\218\39\109")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\12\209\198\91", "\26\83\59\230\227\107\215")]];
										v372 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\138\168\11\89", "\46\105\178\157")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\25\171\25\155", "\225\113\33\152\60\171")][v372] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\64\147\237\77\6", "\104\54\171\222")][v372](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\236\113\189\85", "\39\126\221\66\152\101\110\206")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\168\93\60\133", "\43\142\144\110\25\181\100")], v372 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\136\122\141\72", "\182\123\176\79\168\120")][3]));
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\153\93\96\68", "\116\132\174\106\69")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\125\46\233\225", "\209\150\74\25\204")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\188\38\113\141", "\231\220\132\19\84\189\205\197")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\5\208\229\244", "\126\58\50\227\192\196\110\63")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\33\151\153\173", "\157\108\22\160\188")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\160\100\128\35", "\165\19\152\87")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\92\14\237\214", "\230\86\100\59\200")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\55\64\89\165\249", "\162\65\120\108\128\201")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\110\187\81\66", "\105\228\89\140\116\114\128")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\93\88\241\103", "\102\28\106\111\212\87")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\104\1\85\108", "\112\92\80\52")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\15\240\193\27", "\142\217\56\195\228\43")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\130\247\8\1", "\49\60\181\192\45")]];
										v372 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\253\141\12\188", "\100\71\197\184\41\140")][2];
										v371 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\183\121\224\242", "\197\194\143\74")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\27\183\154\28", "\185\226\35\130\191\44\43\91")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\131\176\176\18", "\34\126\187\131\149")][v372 + 1] = v371;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\126\172\108\44", "\28\94\70\159\73")][v372] = v371[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\39\109\128\252", "\204\127\31\88\165")][4]];
									else
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\149\138\124\129", "\177\237\173\185\89")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\15\102\184\91", "\201\58\55\83\157\107\153\164")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\142\41\97\177", "\77\82\182\26\68\129\67")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\230\37\82\188", "\119\140\222\16")][3]] / TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\43\10\12\231", "\219\114\19\57\41\215\103")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\13\248\141\164", "\148\86\53\205\168")][4]];
									end
								elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\151\254\48\163", "\49\183\175\200\21\147")] == 53) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\101\118\68\139\191", "\143\61\86\78\113\174")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\5\93\249\29", "\213\70\61\104\220\45")][2];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\64\106\134\150\127", "\179\79\115\82\176")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\209\162\31\67", "\115\166\233\145\58")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\103\131\151\233", "\39\33\95\182\178\217")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\124\153\252\149", "\64\92\68\170\217\165")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\109\17\226\81\110", "\215\116\94\41")] + 1] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\30\84\65\110\181", "\223\139\45\108\119\75\133")];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\238\114\150\103", "\87\23\214\65\179")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\95\189\224\178\92", "\213\151\108\133")]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\178\227\232\91\72", "\120\125\129\219\222\126")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\176\87\200\104", "\135\154\136\98\237\88")][4]];
								else
									for v474 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\212\210\134\229", "\197\73\236\231\163\213\122\60")][2], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\75\39\192\245", "\35\56\115\18\229\197\189")][3] do
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\246\173\104\93", "\122\220\206\158\77\109")][v474] = nil;
									end
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\234\135\252\137", "\60\219\210\177\217\185\226")] <= 56) then
								if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\227\254\171\111", "\142\95\219\200")] == 55) then
									local FlatIdent_65A72 = 0;
									while true do
										if (FlatIdent_65A72 == 8) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\170\23\119\32", "\47\98\157\32\82\16")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\197\177\156\251\215", "\169\179\134\171\222\231\149\224")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\72\39\127\213", "\88\217\112\18\90\229\235\149")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\135\119\225\74", "\230\40\176\68\196\122")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\183\112\102\89", "\122\164\128\71\67\105\57")]];
											v390 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\140\215\245\230", "\126\140\180\226\208\214\208")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\32\64\55\28", "\237\131\24\115\18\44\48\56")][v390](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\107\229\17\39", "\23\145\90\214\52")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\209\64\119\21", "\221\27\233\115\82\37")], v390 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\136\132\164\139", "\158\220\176\177\129\187\65")][3]));
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\18\5\150\164", "\179\148\37\50")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\32\154\123\179", "\174\187\23\173\94\131\88")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\176\244\240\127\23", "\59\198\204\197\90\39\196\215")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\250\103\247\25", "\114\141\205\84\210\41\177\79")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\106\101\207\116", "\99\228\93\82\234\68\179")]];
											FlatIdent_65A72 = 9;
										end
										if (FlatIdent_65A72 == 3) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\106\29\26\173", "\19\116\82\40\63\157\194\141")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\91\87\185\171", "\156\155\108\100")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\22\69\59\85", "\30\101\33\114")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\184\150\89\122", "\74\209\128\165\124")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\98\133\7\24", "\34\40\90\176")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\160\3\231\89", "\85\215\152\54\194\105")][3]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\190\98\142\64", "\141\151\137\85\171\112\208")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\108\45\232\28", "\205\44\91\26")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\17\95\205\176", "\115\156\41\106\232\128\188\195")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\64\248\164\102", "\44\133\119\203\129\86\177\194")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\173\182\236\108", "\92\162\154\129\201")]];
											v390 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\67\39\246\71\97", "\226\53\31\195\98\81\228\187")][2];
											v392 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\158\141\24\133", "\181\38\166\190\61")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\219\163\116\170", "\81\154\227\150")][3]];
											FlatIdent_65A72 = 4;
										end
										if (FlatIdent_65A72 == 1) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\34\16\29\141", "\180\67\26\35\56\189\132")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\37\154\132\191", "\237\92\29\175\161\143\102")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\18\167\135\159", "\175\87\42\148\162")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\237\3\82\23", "\39\182\213\54\119")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\28\243\143\113", "\65\50\36\198\170")][4]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\39\13\76\245", "\132\182\16\58\105\197\84\220")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\68\26\57\72", "\151\233\115\45\28\120\197")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\150\29\9\238", "\44\222\174\40")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\11\33\115\120", "\43\82\60\18\86\72")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\114\35\228\42", "\203\71\69\20\193\26")]];
											v392 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\228\102\117\131", "\90\132\220\83\80\179\136")][3];
											v391 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\32\89\228\90", "\186\113\24\106\193\106")][v392];
											for v476 = v392 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\209\131\195\229", "\230\213\233\182")][4] do
												v391 = v391 .. TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\212\85\190\156", "\155\172\236\102")][v476];
											end
											FlatIdent_65A72 = 2;
										end
										if (FlatIdent_65A72 == 0) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\173\42\124\240\93", "\158\183\158\19\76\213\109\178")] = nil;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\131\243\214\243\76", "\124\155\176\202\231\214")] = nil;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\180\240\74\103\183", "\120\66\135\201")] = nil;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\195\43\133\116\138", "\186\181\19\182\81")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\235\148\60\219", "\47\48\211\161\25\235\212\222")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\89\80\200\233", "\78\202\97\101\237\217\175")][3];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\41\136\62\213", "\70\17\30\191\27\229")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\219\191\9\84", "\44\100\236\136")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\115\220\62\126", "\18\154\75\233\27\78\145\149")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\211\42\17\143", "\146\178\228\25\52\191\156\206")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\45\98\236\67", "\201\115\26\85")]];
											FlatIdent_65A72 = 1;
										end
										if (FlatIdent_65A72 == 2) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\237\83\145\94", "\27\123\213\96\180\110")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\67\166\27\34", "\18\200\123\147\62")][2]] = v391;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\235\172\160\136", "\110\98\220\155\133\184\231")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\244\120\120\41", "\117\23\195\79\93\25\26\235")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\189\247\190\182", "\155\134\133\194")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\26\37\54\120", "\72\160\45\22\19")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\235\69\157\123", "\104\230\220\114\184\75\139")]];
											v390 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\14\118\73\31", "\47\237\54\67\108")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\26\19\66\85", "\148\115\34\32\103\101")][v390](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\246\46\131\36", "\20\197\206\29\166")][v390 + 1]);
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\124\74\90\133", "\57\41\75\125\127\181\75\128")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\178\22\94\148", "\41\96\133\33\123\164")] + 1;
											FlatIdent_65A72 = 3;
										end
										if (FlatIdent_65A72 == 6) then
											v392 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\69\10\70\35", "\46\101\125\57\99\19\25")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\86\142\72\165\236", "\220\32\182\125\128")][3]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\160\88\152\164", "\148\141\152\107\189")][v390 + 1] = v392;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\188\14\23\183", "\222\23\132\61\50\135")][v390] = v392[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\74\171\20\252", "\49\204\114\158")][4]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\183\188\75\254\24", "\18\193\139\124\219\40")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\219\2\59\16", "\93\105\236\53\30\32\131")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\14\23\83\4", "\32\103\54\34\118\52\48")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\103\36\239\231", "\38\206\80\23\202\215\213")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\123\77\136\73", "\121\111\76\122\173")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\184\169\85\39", "\40\160\128\154\112\23\224")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\164\141\60\136", "\117\44\156\184\25\184\166\96")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\41\65\115\224", "\86\208\17\116")][3]];
											FlatIdent_65A72 = 7;
										end
										if (7 == FlatIdent_65A72) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\213\68\164\169", "\155\33\226\115\129\153\170")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\40\120\106\179", "\194\24\31\79\79\131\144")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\245\113\76\4", "\178\41\205\68\105\52\104\33")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\220\31\116\198\168", "\45\170\40\71\227\152\171\89")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\146\221\166\102", "\21\111\165\234\131\86")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\171\155\227\103", "\198\87\147\168")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\134\110\180\135", "\120\50\190\91\145\183\49")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\158\226\182\114", "\66\119\166\209\147")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\93\248\75\237", "\221\145\101\205\110")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\181\70\4\17\211", "\227\195\126\49\52")][4]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\40\167\239\242", "\147\134\31\144\202\194\102")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\111\237\134\184", "\163\136\88\218")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\17\125\169\255", "\207\137\41\72\140")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\7\84\183\64", "\194\103\48\103\146\112\120")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\148\150\115\242", "\86\194\163\161")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\12\170\21\144", "\54\201\52\153\48\160\154")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\10\149\80\109\73", "\122\124\173\101\72\121\123\141")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\231\93\69\110", "\201\139\223\104\96\94\114\46")][3]];
											FlatIdent_65A72 = 8;
										end
										if (4 == FlatIdent_65A72) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\245\238\172\86", "\20\203\205\221\137\102")][v390 + 1] = v392;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\93\109\248\221", "\221\237\101\94")][v390] = v392[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\78\247\85\215", "\193\81\118\194\112\231\112\164")][4]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\17\93\157\7", "\184\55\38\106")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\38\45\61\149", "\225\148\17\26\24\165\217")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\109\5\108\241", "\193\38\85\48\73")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\139\235\67\4", "\70\23\188\216\102\52\211\124")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\151\181\250\100", "\103\207\160\130\223\84\74")]];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\244\225\65\81\235", "\183\130\217\114\116\219\226")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\74\72\122\151", "\167\21\114\125\95")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\76\88\11\218", "\80\174\116\109\46\234")][3];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\143\67\233\158", "\174\69\184\116\204")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\4\208\60\183", "\57\101\51\231\25\135\112")] + 1;
											FlatIdent_65A72 = 5;
										end
										if (5 == FlatIdent_65A72) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\191\138\12\247", "\156\93\135\191\41\199")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\89\71\223\67\232", "\172\47\112\236\102\216")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\182\1\104\86", "\224\29\129\54\77\102")]];
											v390 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\71\212\163\105\1", "\76\49\236\150")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\188\40\77\136", "\184\229\132\27\104")][v390] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\153\83\255\172", "\220\222\161\96\218\156\21\50")][v390](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\102\70\83\158", "\17\38\87\117\118\174\152")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\233\122\63\179", "\37\118\209\73\26\131")], v390 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\1\241\59\12", "\60\137\57\196\30")][3]));
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\47\47\93\215", "\56\35\24\24\120\231")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\228\7\14\147", "\143\48\211\48\43\163\22\53")] + 1;
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\89\170\5\167\95", "\134\47\146\48\130\111\147\133")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\101\7\68\66", "\209\106\82\52\97\114\63")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\36\120\11\247", "\46\199\19\79")]];
											v390 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\194\147\228\199\160", "\236\180\171\209\226\144")][2];
											FlatIdent_65A72 = 6;
										end
										if (FlatIdent_65A72 == 9) then
											do
												return;
											end
											break;
										end
									end
								else
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\71\43\127\0\141", "\180\49\19\76\37\189")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\30\228\252\7", "\198\115\38\209\217\55\163")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\9\181\118\91", "\46\205\49\134\83\107")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\86\134\21\81", "\162\83\110\179\48\97\131\215")][3]];
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\84\238\86\134\227", "\152\34\214\96\163\211\151\93")] <= 57) then
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\10\87\32\235\83", "\35\124\111\19\206\99\112")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\74\253\137\64", "\137\62\114\200\172\112\22")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\244\106\185\88", "\125\174\204\95\156\104\83\137")][3]];
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\118\100\144\120", "\72\199\78\82\181")] > 58) then
								local FlatIdent_23B4 = 0;
								while true do
									if (FlatIdent_23B4 == 0) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\128\11\234\99\242", "\70\194\181\63\221")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\34\102\84\245", "\158\115\26\83\113\197")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\225\147\245\69", "\117\17\217\160\208")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\67\141\223\6\141\5", "\53\53\184\235\49\168")]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\173\186\241\135", "\212\183\149\137")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\214\8\93\231\211", "\106\194\227\60")]]();
										break;
									end
								end
							else
								local FlatIdent_1351F = 0;
								while true do
									if (0 == FlatIdent_1351F) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\54\19\75\221\101\22", "\228\64\38\127")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\183\36\14\181\220", "\74\193\28\59\144\236\36\71")][2];
										do
											return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\243\188\6\7", "\55\108\203\143\35")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\176\135\187\241\244", "\196\148\133\179\130\212")]](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\71\39\32\123\120", "\126\49\22\19\94\72\233\227")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\146\111\235\193\239", "\185\228\87\216\228\223")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\76\245\75\113\71\131", "\39\58\192\127\72\98\179\141")] + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\8\88\141\224", "\208\174\63\96\168")]));
										end
										break;
									end
								end
							end
						elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\85\100\252\218", "\234\230\109\82\217")] <= 63) then
							if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\241\122\168\174", "\141\158\201\76")] <= 61) then
								if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\236\126\29\133", "\181\160\212\72\56")] > 60) then
									local FlatIdent_82BF = 0;
									while true do
										if (FlatIdent_82BF == 0) then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\89\184\137\65\227", "\211\158\109\136\176\100")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\29\79\138\89\184", "\44\107\119\191\124\136")][2];
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\195\80\212\122\75", "\146\181\104\231\95\123\162")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\190\213\135\173\186", "\190\136\138\229")]](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\26\149\194\254", "\206\155\34\166\231")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\132\122\255\111\161", "\58\89\176\74\198\74\145")] + 1]);
											break;
										end
									end
								else
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\152\138\1\116\79", "\54\125\172\187\49\81\127\195")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\239\158\245\253", "\72\218\215\171\208\205\206\211")][2];
									local v411, v412 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\71\133\72\124\142", "\184\49\178\126\89\190\197\194")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\66\188\136\65", "\113\208\122\143\173")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\178\19\138\77\148", "\161\123\134\34\186\104\164")]](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\249\138\58\218", "\27\155\200\185\31\234\87")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\241\76\85\21", "\207\101\201\127\112\37")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\208\108\209\59\208", "\52\220\228\93\225\30\224")] + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\19\44\64\103", "\166\61\43\25\101\87")][3])));
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\228\19\84\131\224", "\40\146\36\108\166\208\126")] = (v412 + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\33\215\133\224\37", "\181\197\21\230")]) - 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\194\9\106\23\145\13", "\36\180\61\91")] = 0;
									for v477 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\7\245\43\149\242", "\194\98\51\196\27\176")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\6\180\196\208", "\40\39\49\140\225\224\224")] do
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\114\91\16\105\118", "\35\76\70\106")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\181\151\230\95\230\147", "\108\195\163\215")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\30\211\75\182", "\134\219\38\224\110")][v477] = v411[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\79\161\209\189\98", "\237\190\123\144\226\152\82\135")]];
									end
								end
							elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\129\107\80\134", "\182\141\185\93\117")] > 62) then
								local FlatIdent_7B2EE = 0;
								while true do
									if (FlatIdent_7B2EE == 2) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\108\209\187\182", "\134\224\84\226\158")][v415] = v414[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\118\223\237\190", "\142\40\78\234\200")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\71\172\244\164", "\62\77\112\155\209\148\142\86")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\43\7\249\100", "\220\84\28\48")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\188\227\182\142", "\147\190\132\214")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\242\34\101\213", "\64\229\197\17")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\47\125\28\183", "\220\50\24\74\57\135\51\106")]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\112\46\160\175", "\159\158\72\29\133")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\144\115\178\171", "\85\164\168\70\151\155\72")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\133\167\67\244", "\133\177\189\146\102\196\151\20")][3];
										FlatIdent_7B2EE = 3;
									end
									if (1 == FlatIdent_7B2EE) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\94\243\117\210", "\80\226\102\198")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\122\2\234\216", "\207\232\77\49")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\155\31\159\80", "\186\96\172\40")]];
										v415 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\118\146\92\17", "\229\43\78\167\121\33\117")][2];
										v414 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\129\112\2\151", "\56\136\185\67\39\167\145\184")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\36\169\233\181", "\113\103\28\156\204\133\125")][3]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\125\34\180\233", "\145\217\69\17")][v415 + 1] = v414;
										FlatIdent_7B2EE = 2;
									end
									if (FlatIdent_7B2EE == 0) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\247\234\242\91\241", "\210\35\195\219\198\126\193\88")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\126\167\216\136\122", "\237\173\74\150")] = nil;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\251\14\148\26\188", "\195\141\54\167\63\140")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\5\76\80\80", "\117\96\61\121")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\114\255\63\102", "\172\24\74\204\26\86\113\106")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\44\163\87\12", "\200\80\20\150\114\60\117")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\102\159\49\161", "\145\69\94\170\20")][4]];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\22\25\242\174", "\57\103\33\46\215\158")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\70\251\229\136", "\177\150\113\204\192\184")] + 1;
										FlatIdent_7B2EE = 1;
									end
									if (3 == FlatIdent_7B2EE) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\154\152\174\123", "\75\150\173\175\139")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\142\224\236\28", "\44\145\185\215\201")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\136\216\18\254", "\121\90\176\237\55\206")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\248\80\8\129\111", "\77\142\103\59\164\95")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\213\141\182\167", "\134\105\226\186\147\151")]];
										v415 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\156\76\243\200\135", "\70\234\116\198\237\183\95")][2];
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\137\95\119\44", "\163\204\177\108\82\28")][v415] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\6\208\56\45", "\29\147\62\227\29")][v415](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\91\43\122\42", "\198\209\106\24\95\26\188")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\107\114\244\114", "\156\237\83\65\209\66\94")], v415 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\31\15\149\6", "\54\56\39\58\176")][3]));
										FlatIdent_7B2EE = 4;
									end
									if (4 == FlatIdent_7B2EE) then
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\14\112\43\80\31", "\137\120\71\28\117\47\92\95")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\228\90\13\42", "\158\137\211\109\40\26")] + 1;
										TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\169\253\50\252", "\157\173\145\200\23\204\109")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\47\140\74\247", "\111\199\24\191")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\231\34\254\103", "\21\204\208\21\219\87")]];
										if TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\170\175\65\124", "\190\83\146\156\100\76\113\163")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\125\116\67\185", "\235\194\69\65\102\137\103")][2]] then
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\157\45\57\171", "\213\210\170\26\28\155\155")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\178\136\174\208", "\139\224\133\191")] + 1;
										else
											TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\137\16\200\105", "\206\128\190\39\237\89\42")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\83\141\166\65", "\115\184\107\184\131\113\20\192")][3];
										end
										break;
									end
								end
							else
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\76\122\8\41", "\21\122\116\73\45\25")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\158\208\160\247", "\214\177\166\229\133\199\89")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\21\103\81\25", "\210\236\45\82\116\41\103\63")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\17\122\117\146", "\162\114\41\79\80")][4];
							end
						elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\108\221\254\43", "\57\150\84\235\219\27")] <= 65) then
							if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\78\5\26\93", "\109\176\118\51\63")] == 64) then
								if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\85\169\75\145", "\161\51\109\154\110")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\107\133\121\68", "\211\132\83\176\92\116")][2]] ~= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\172\154\248\107", "\74\55\148\169\221\91\150")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\120\252\89\110", "\124\94\64\201")][4]]) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\184\93\239\96", "\206\135\143\106\202\80")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\30\114\224\153", "\42\140\41\69\197\169\190\106")] + 1;
								else
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\209\176\246\228", "\211\212\230\135")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\254\34\163\142", "\190\50\198\23\134")][3];
								end
							else
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\0\241\11\155\33", "\151\35\52\195\60\190\17\159")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\160\236\46\172\210", "\226\214\212\27\137")][2];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\107\227\124\174\156", "\172\30\95\209\68\139")] = {TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\64\123\16\166", "\53\150\120\72")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\105\80\132\84\8\47", "\45\31\100\182\99")]]()};
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\35\90\109\93\97", "\120\81\23\104\84")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\222\23\40\50\152", "\23\168\47\29")][4];
								TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\102\239\216\218\53\235", "\234\16\219\235")] = 0;
								for v480 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\66\6\101\110\90", "\34\36\118\52\82\75\106")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\213\73\235\170\213", "\139\90\225\123\210\143\229\60")] do
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\124\73\99\157\160", "\144\144\72\122\83\184")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\252\88\29\22\236\186", "\201\138\108\46\38")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\45\109\108\207\96", "\119\91\85\95\234\80\79")][v480] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\224\24\242\52\13", "\17\61\212\42\202")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\247\190\22\245\71", "\36\137\195\141\38\208\119\109")]];
								end
							end
						elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\132\108\10\131", "\179\81\188\90\47")] <= 66) then
							local FlatIdent_88CAD = 0;
							while true do
								if (FlatIdent_88CAD == 0) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\120\247\238\147\253", "\182\205\76\196\223")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\64\186\167\128\234", "\150\54\130\146\165\218\84\143")][2];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\79\141\103\81", "\97\95\119\190\66")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\44\119\3\145\252", "\180\204\24\68\50")]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\38\13\53\160", "\16\144\30\62")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\124\110\166\118\233", "\48\212\72\93\151\83\217\38")]](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\217\93\198\3", "\99\81\232\110\227\51")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\231\102\172\234", "\229\97\223\85\137\218\24\18")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\136\244\117\181\140", "\68\144\188\199")] + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\92\154\159\93", "\148\115\100\175\186\109\86")][3]));
									break;
								end
							end
						elseif (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\179\158\146\44", "\183\28\139\168")] > 67) then
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\228\162\124\200\11", "\218\114\209\151\78\237\59")] = nil;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\238\89\27\28", "\62\44\214\106")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\101\86\149\251", "\203\70\93\99\176")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\132\248\104\228", "\77\212\188\203")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\139\176\250\167", "\173\57\179\133\223\151")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\13\30\168\28", "\183\206\53\43\141\44\154\82")][4]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\82\96\89\100", "\155\140\101\87\124\84\135")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\83\110\74\90", "\32\166\100\89\111\106")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\118\237\0\122", "\46\149\78\216\37\74\163\39")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\190\46\138\151", "\71\46\137\29\175\167\64")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\168\96\66\180", "\110\93\159\87\103\132\39")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\77\122\103\144", "\160\51\117\73\66")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\109\222\192\252", "\87\116\85\235\229\204")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\245\222\65\152\47", "\61\131\230\116\189\31\93")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\184\81\66\191\232", "\121\206\102\117\154\216\34")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\195\22\1\165\66", "\134\181\33\54\128\114\39")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\148\240\0\252", "\204\98\172\197\37")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\86\43\100\247", "\177\175\97\24\65\199\167")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\143\169\19\98", "\151\116\184\158\54\82\30\193")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\145\143\99\228", "\158\69\169\188\70\212\166")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\29\128\163\79\136", "\184\107\184\150\106")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\137\31\128\182", "\134\162\177\44\165")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\112\20\183\151", "\146\167\72\33")][3]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\91\248\105\242", "\45\154\108\207\76\194\46")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\184\93\159\45", "\186\29\143\106")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\145\243\82\92", "\123\201\169\198\119\108\220\74")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\222\65\19\19", "\35\66\233\114\54")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\210\221\178\157", "\173\19\229\234\151")]];
							v552 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\63\114\104\13\121", "\40\73\74\93")][2];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\179\173\118\212", "\151\154\139\158\83\228")][v552] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\242\91\156\136", "\184\159\202\104\185")][v552](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\88\236\162\250", "\202\51\105\223\135")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\163\135\241\248", "\212\200\155\180")], v552 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\170\244\232\134", "\182\38\146\193\205")][3]));
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\78\222\231\191", "\143\111\121\233\194")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\137\124\148\157", "\173\140\190\75\177")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\108\125\144\0", "\133\139\84\72\181\48\115")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\23\68\132\217", "\55\176\32\119\161\233\211")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\86\67\252\229", "\213\60\97\116\217")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\104\112\50\122", "\74\231\80\67\23")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\143\233\23\0", "\170\99\183\220\50\48\38\57")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\74\110\91\111", "\126\95\114\93")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\187\103\39\31\253", "\58\205\95\18")][3]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\74\147\180\247", "\199\108\125\164\145")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\202\127\102\126\213", "\77\188\72\81\91\229\129\40")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\223\4\113\176", "\19\194\231\49\84\128")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\80\248\248\22", "\170\56\103\203\221\38\185\34")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\238\9\86\12", "\152\78\217\62\115\60")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\235\81\233\230", "\53\21\211\98\204\214\170")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\130\25\67\227", "\203\89\186\44\102\211")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\218\154\113\155", "\171\197\226\175\84")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\14\38\16\131", "\179\231\54\19\53")][4];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\208\162\224\11\244", "\176\166\149\215\46\196\37\193")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\33\245\75\30", "\110\46\22\194")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\171\111\185\154", "\206\237\147\90\156\170")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\230\19\121\148\230", "\107\144\36\74\177\214")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\155\105\131\34", "\111\27\172\94\166\18")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\87\168\112\96", "\206\69\111\155\85\80\34\32")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\227\243\73\151", "\167\220\219\198\108")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\92\76\123\101", "\100\202\100\121\94\85\38")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\228\150\68\17", "\157\106\220\163\97\33")][4];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\43\247\181\53\135", "\189\93\192\130\16\183\52")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\69\109\113\91", "\87\105\114\90\84\107\91")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\145\144\245\216", "\31\19\169\165\208\232\61\161")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\247\114\67\171", "\183\178\192\65\102\155\174")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\185\28\118\92", "\138\215\142\43\83\108\233\64")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\105\225\218\57\47", "\28\31\217\233")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\172\248\133\149", "\38\81\148\205\160\165\106")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\89\22\250\99\37", "\194\47\46\207\70\21\97\122")][3]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\108\128\164\139", "\187\177\91\183\129\187\169\185")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\3\133\236\8\133", "\173\117\178\219\45\181")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\70\174\162\217", "\229\155\126\155\135\233\25")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\89\217\87\6", "\170\36\110\234\114\54")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\28\101\29\173", "\204\160\43\82\56\157\24\147")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\85\35\214\198\27", "\216\35\27\229\227\43")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\0\123\77\225", "\18\103\56\78\104\209\205\103")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\36\95\121\156", "\168\182\28\108\92\172\87")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\25\245\236\189", "\183\151\33\192\201\141")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\223\133\248\40", "\221\24\231\176")][4]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\170\184\24\92", "\221\33\157\143\61\108")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\188\223\228\130", "\73\213\139\232\193\178")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\162\210\3\29\12", "\125\212\234\54\56\60")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\75\107\42\1\6", "\155\61\92\25\36\54\200")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\239\27\122\80", "\95\96\216\44")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\17\73\26\237", "\209\150\41\122\63\221\41\30")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\234\117\40\127\47", "\60\156\77\29\90\31")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\185\135\177\197\255", "\224\207\191\132")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\102\178\13\117", "\81\210\81\133\40\69\184")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\23\147\163\11", "\134\59\32\164")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\131\74\192\120", "\156\213\187\127\229\72\35")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\154\138\50\250", "\36\17\173\185\23\202\184")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\31\161\109\191", "\108\126\40\150\72\143\178\198")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\102\209\53\32", "\38\167\94\226\16\16\140\151")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\93\69\253\156", "\172\56\101\112\216")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\5\229\180\137", "\113\235\61\208\145\185")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\27\30\76\221", "\105\237\44\41")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\178\43\23\210", "\229\29\133\28\50\226\139")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\143\17\53\0", "\142\178\183\36\16\48\50\183")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\222\160\181\166", "\144\150\233\147")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\61\85\248\97\8", "\53\75\98\207\68\56")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\254\231\107\110", "\78\94\198\212")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\141\170\48\165", "\149\137\181\159\21")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\222\153\102\24", "\211\26\230\172\67\40")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\96\125\72\179", "\112\151\87\74\109\131\46\38")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\159\103\136\230", "\214\74\168\80\173")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\91\234\27\249", "\201\80\99\223\62")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\37\79\174\5", "\137\151\18\124\139\53\37")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\32\125\53\241", "\152\119\23\74\16\193")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\231\97\144\13", "\171\19\223\82\181\61")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\221\135\148\145", "\161\123\229\178\177")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\96\103\242\5", "\63\165\88\82\215\53")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\139\248\123\40", "\16\85\188\207\94\24\139\187")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\24\103\238\229\29", "\66\110\80\217\192\45")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\78\72\125\66", "\114\157\118\125\88")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\240\65\183\106", "\133\133\199\114\146\90\224\46")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\237\184\67\117", "\96\201\218\143\102\69\31")]];
							v552 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\75\119\108\182", "\173\159\115\66\73\134\113\197")][2];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\236\144\85\149", "\33\105\212\163\112\165\140")][v552] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\32\233\152\118", "\189\70\24\218")][v552](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\97\79\56\69", "\65\201\80\124\29\117")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\194\46\81\140\135", "\65\180\22\98\169\183\203\211")], v552 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\93\175\244\120", "\76\236\101\154\209\72\134")][3]));
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\4\106\161\47", "\31\222\51\93\132")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\32\126\75\168", "\237\23\23\73\110\152\223")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\254\72\127\82", "\120\233\198\125\90\98\130")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\145\100\164\119", "\167\199\166\87\129\71\161\79")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\46\90\8\98", "\230\82\25\109\45\82")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\91\47\104\135\78", "\171\45\23\91\162\126\109")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\188\92\228\142", "\190\128\132\105\193")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\69\138\16\98\235", "\219\51\178\37\71")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\29\134\65\148", "\164\60\37\181\100")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\0\109\227\121\107", "\166\118\85\214\92\91\167")][4]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\108\0\229\12", "\192\60\91\55")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\92\177\52\8", "\56\106\107\134\17")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\4\47\11\100", "\71\123\60\26\46\84\88")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\158\73\43\106\213", "\230\232\126\24\79\229\218\197")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\160\4\15\149\171", "\228\214\51\56\176\155\146\174")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\203\38\237\108\147", "\139\189\30\222\73\163\36\20")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\83\3\108\74", "\73\122\107\54")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\151\9\116\4", "\20\116\175\60\81\52")][3]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\31\86\68\101\89", "\64\105\97\115")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\191\178\235\168", "\158\203\136\133\206\152")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\176\243\61\102", "\86\183\136\198\24")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\151\124\251\132\107", "\200\225\75\200\161\91\137")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\89\133\39\74\96", "\83\47\178\16\111\80\138")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\146\73\231\37", "\90\99\170\122\194\21\71")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\30\247\20\235\249", "\149\104\207\33\206\201")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\66\68\100\142", "\155\167\122\119\65\190")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\239\144\127\134", "\182\22\215\165\90")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\87\109\152\185", "\195\132\111\88\189\137\108")][4]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\237\244\9\187", "\44\139\218\195")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\127\78\82\237", "\191\66\72\121\119\221\120")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\218\242\124\218", "\39\87\226\199\89\234\226")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\26\155\173\147", "\164\145\45\168\136\163\33")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\36\99\91\113\79", "\135\82\84\108\84\127\44\142")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\11\78\175\95", "\132\236\51\125\138\111\182")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\4\78\91\68", "\25\172\60\123\126\116\140\119")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\132\31\20\27", "\117\231\188\42\49\43")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\2\175\106\208", "\79\224\53\152")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\13\84\123\165", "\94\149\58\99")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\135\24\231\220", "\194\236\191\45")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\240\76\20\85", "\49\101\199\127")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\47\252\147\210", "\210\122\24\203\182\226\187\25")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\91\227\154\183", "\191\135\99\208")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\114\24\27\168", "\62\152\74\45")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\81\42\27\124\175", "\168\39\18\40\89\159\141\166")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\95\100\186\4", "\91\197\103\81\159\52")][3]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\96\248\2\242", "\194\215\87\207\39")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\166\172\74\27", "\139\24\145\155\111\43")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\237\114\54\244", "\221\127\213\71\19\196\205")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\12\11\105\81", "\98\172\59\56\76\97\172\90")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\156\132\76\118", "\70\177\171\179\105")]];
							v552 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\148\18\172\216", "\224\76\172\39\137\232\132")][2];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\224\73\239\238", "\64\114\216\122\202\222\48")][v552] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\82\67\31\249", "\201\85\106\112\58")][v552](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\14\254\130\248", "\167\200\63\205")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\148\93\60\180", "\57\100\172\110\25\132\191")], v552 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\149\102\243\251", "\232\84\173\83\214\203\16\233")][3]));
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\248\93\98\214", "\97\213\207\106\71\230\213")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\180\243\182\104", "\88\231\131\196\147")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\220\116\110\114\177", "\213\170\76\91\87\129\19\207")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\159\2\212\14\33", "\27\233\53\231\43\17\130\146")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\64\111\21\208", "\48\224\119\88")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\84\247\50\158", "\80\223\108\196\23\174\139\75")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\6\253\162\64\64", "\101\112\197\151")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\79\133\165\239", "\127\167\119\176\128\223\196")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\130\80\225\84", "\34\237\186\101\196\100")][4];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\93\186\137\148", "\164\160\106\141\172")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\156\221\21\88", "\106\217\171\234\48\104\189\203")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\80\226\6\176", "\134\84\104\215\35\128\166")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\16\0\227\233\212", "\228\102\55\208\204")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\224\1\250\71", "\26\160\215\54\223\119")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\49\224\174\0\140", "\22\71\216\157\37\188\186")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\46\165\118\70", "\96\134\22\144\83\118\118")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\254\217\85\68", "\219\81\198\236\112\116\55\133")][3]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\10\150\109\169\76", "\140\124\161\90")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\189\83\45\165\114", "\66\203\100\26\128")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\211\135\88\122", "\125\74\235\178")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\250\3\106\185", "\122\147\205\48\79\137\227\146")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\30\78\119\191", "\234\211\41\121\82\143\32")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\240\119\27\76\179", "\131\134\79\40\105")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\79\4\124\113\9", "\84\57\60\73")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\153\96\1\17", "\105\125\161\83\36\33\228\206")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\42\179\58\85", "\101\199\18\134\31")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\138\236\144\238", "\75\92\178\217\181\222\234")][4]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\68\246\145\68", "\180\116\115\193")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\210\20\94\184", "\123\136\229\35")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\13\109\170\220", "\236\56\53\88\143")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\152\133\66\108", "\103\92\175\182")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\129\46\151\251", "\169\132\182\25\178\203\230\116")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\85\80\255\177", "\129\22\109\99\218")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\59\236\86\152\94", "\159\77\212\99\189\110\180\176")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\216\142\139\177", "\212\127\224\187\174\129")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\28\44\251\154", "\63\67\43\27\222\170")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\167\183\229\140", "\91\157\144\128\192\188\230")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\137\86\12\70", "\191\108\177\99\41\118\91")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\246\13\22\115", "\142\227\193\62\51\67\217\58")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\243\14\98\255", "\189\40\196\57\71\207\219")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\139\14\254\209", "\132\136\179\61\219\225\226\143")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\34\111\136\180", "\173\132\26\90")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\115\190\0\208", "\224\209\75\139\37")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\16\133\89\164", "\124\148\39\178")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\148\6\181\138", "\186\18\163\49\144")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\181\86\166\254\165", "\138\195\110\147\219\149")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\250\174\61\180", "\160\17\205\157\24\132\100")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\16\2\215\76\86", "\105\102\53\224")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\134\69\251\65", "\170\186\190\118\222\113\17\197")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\85\189\251\126", "\222\78\109\136")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\225\244\205\116", "\232\68\217\193")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\239\20\105\79", "\76\127\216\35")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\253\166\106\97\253", "\205\139\145\93\68")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\6\151\238\170", "\154\125\62\162\203")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\148\73\177\210", "\21\230\163\122\148\226\128")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\73\104\171\15", "\142\63\126\95")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\3\129\92", "\218\126\146\48\164\108")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\175\87\232\145", "\166\127\151\98\205\161\144")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\6\230\114\9", "\83\190\62\211\87\57\63")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\146\189\77\34", "\46\136\165\138\104\18\174\157")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\151\111\231\103\209", "\66\225\88\208")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\125\41\120\184", "\93\136\69\28")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\41\103\169\166\111", "\131\95\80\154")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\140\138\52\168", "\97\176\187\189\17\152\23\64")]];
							v552 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\173\216\245\87", "\139\115\149\237\208\103\164")][2];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\163\157\109\234", "\232\86\155\174\72\218\75")][v552] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\114\17\140\161", "\164\158\74\34\169\145")][v552](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\8\150\97\238", "\220\178\57\165\68\222\156\113")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\109\161\149\171", "\176\155\85\146")], v552 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\155\68\148\85", "\136\99\163\113\177\101\232")][3]));
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\95\244\183\121\106", "\66\41\195\128\92\90\231\187")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\145\162\144\53\215", "\16\231\149\167")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\87\250\126\150", "\166\175\111\207\91")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\173\166\131\153", "\113\236\154\149\166\169\43\75")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\11\230\248\176", "\158\230\60\209\221\128\32")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\105\75\72\161", "\178\145\81\120\109\145\155\91")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\146\212\52\224", "\30\78\170\225\17\208\25\37")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\10\6\242\133\15", "\68\124\62\199\160\63")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\32\137\148\135", "\53\125\24\186\177\183\184")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\220\117\47\79\36", "\206\170\77\26\106\20\106")][4]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\223\173\252\171\145", "\73\169\154\203\142\161\157\37")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\124\166\153\81", "\188\97\75\145")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\25\140\98\19", "\217\222\33\185\71\35\146")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\179\23\6\100", "\73\84\132\36\35\84")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\223\176\255\88\210", "\236\169\135\200\125\226")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\22\177\51\82", "\22\98\46\130")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\219\83\89\36", "\224\150\227\102\124\20\60\191")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\131\99\79\214", "\230\158\187\86\106")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\110\79\168\104", "\111\86\86\122\141\88\129")][4];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\70\19\7\248", "\34\200\113\36")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\154\172\151\115", "\187\216\173\155\178\67\160")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\47\42\241\179", "\84\220\23\31\212\131\70\21")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\21\121\156\177", "\185\129\34\74")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\150\213\163\95", "\173\27\161\226\134\111\113")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\108\230\77\49\65", "\139\26\222\126\20\113\73\19")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\206\136\30\6\136", "\35\184\176\43")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\28\159\246\110\127", "\79\106\167\195\75")][3]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\233\38\61\46", "\24\30\222\17")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\150\208\152\155", "\31\59\161\231\189\171")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\7\89\223\11\180", "\132\113\97\234\46")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\142\37\148\78", "\126\194\185\22\177")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\167\97\159\119", "\88\135\144\86\186\71")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\105\251\89\128", "\176\52\81\200\124")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\218\115\248\43", "\221\27\226\70")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\62\94\180\30\152", "\26\72\102\135\59\168\22")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\108\67\65\123", "\75\80\84\118\100")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\246\158\237\126\176", "\91\128\166\216")][4]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\163\135\181\205\44", "\210\213\176\130\232\28")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\248\8\126\166", "\150\210\207\63\91")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\210\77\50\142", "\139\52\234\120\23\190")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\64\218\204\230", "\214\80\119\233\233")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\173\240\6\189\119", "\171\219\199\49\152\71")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\150\107\83\82", "\118\98\174\88")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\13\222\20\20\64", "\107\123\230\33\49\112\28")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\7\33\244\72", "\184\217\63\20\209\120\213\140")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\27\131\176\169\110", "\145\109\180\135\140\94")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\112\210\31\141", "\189\177\71\229\58")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\154\135\28\68", "\57\116\162\178")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\243\28\51\236", "\83\100\196\47\22\220\21")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\244\122\21\111", "\192\171\195\77\48\95\146")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\38\169\14\232\28", "\190\80\145\61\205\44\160\82")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\128\144\138\137", "\57\36\184\165\175\185")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\170\2\152\31", "\47\204\146\55\189")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\182\238\169\167", "\103\197\129\217\140\151")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\161\161\103\88", "\115\38\150\150\66\104\52\33")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\64\137\183\138\251", "\186\54\177\130\175\203")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\156\23\211\86\30", "\75\234\32\224\115\46\81\186")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\45\225\142\140\210", "\33\91\214\185\169\226")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\223\17\89\2", "\24\88\231\34\124\50")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\227\118\173\7\91", "\86\149\78\152\34\107")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\177\222\99\237", "\75\177\137\235\70\221")][3];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\98\245\236\11", "\165\132\85\194\201\59")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\61\98\255\56\123", "\29\75\85\200")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\223\1\128\157\108", "\151\169\57\181\184\92\40\135")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\67\179\12\122\212", "\90\53\132\63\95\228\195")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\68\34\4\80", "\92\187\115\21\33\96\194")]];
							v552 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\220\103\108\106", "\78\160\228\82\73\90\230")][2];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\180\128\18\204\143", "\75\194\184\33\233\191\159")][v552] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\99\108\64\130", "\101\178\91\95")][v552](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\116\104\87\236", "\147\122\69\91\114\220\135")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\243\96\86\7\143", "\191\133\88\101\34")], v552 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\125\72\53\12", "\169\50\69\125\16\60")][3]));
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\252\12\134\184\187", "\226\138\59\177\157\139\44")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\34\68\244\173", "\157\92\21\115\209")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\220\240\78\95", "\53\174\228\197\107\111\104")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\6\157\229\112\211", "\76\112\170\214\85\227")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\50\109\5\63\175", "\48\68\90\50\26\159\221\26")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\83\45\23\8", "\194\96\107\30\50\56\83")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\188\68\107\150", "\62\191\132\113\78\166\146\187")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\56\128\34\145\73", "\121\78\184\23\180")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\45\68\27\141\6", "\54\91\124\40\168")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\125\145\120\247", "\199\25\69\164\93")][4]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\101\109\97\62\35", "\27\19\90\86")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\159\180\8\135", "\45\183\168\131")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\166\180\131\64\155", "\136\208\140\182\101\171")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\184\45\186\127", "\159\79\143\30")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\198\148\23\97\128", "\68\176\163\32")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\142\125\159\238", "\160\100\182\78\186\222\163")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\10\15\190\125", "\183\17\50\58\155\77")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\194\249\175\149\132", "\176\180\193\154")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\20\228\177\85", "\224\216\44\209\148\101")][4];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\138\160\132\35", "\226\222\189\151\161\19\130")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\6\140\118\139", "\83\187\49\187")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\164\156\54\68", "\214\62\156\169\19\116\161\82")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\234\42\77\77", "\104\125\221\25")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\195\127\229\130\85", "\166\181\72\210\167\101")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\208\91\138\167", "\175\151\232\104")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\14\130\199\163", "\55\40\54\183\226\147")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\137\126\141\145", "\168\161\177\75")][3]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\134\78\197\181", "\206\48\177\121\224\133")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\238\75\253\122\152", "\168\152\124\202\95")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\94\137\243\71", "\214\119\102\188")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\102\178\176\146", "\149\162\81\129")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\127\68\253\184", "\136\44\72\115\216")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\167\218\73\227\36", "\94\209\226\122\198\20\135\161")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\87\144\155\240\153", "\188\33\168\174\213\169\76")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\20\174\255\73", "\172\27\44\157\218\121\43\151")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\0\105\121\226", "\92\210\56\92")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\134\124\188\229", "\33\101\190\73\153\213\211")][4]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\133\19\77\226", "\210\222\178\36\104")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\231\173\166\105\101", "\231\145\154\145\76\85")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\114\71\66\247", "\104\187\74\114\103\199")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\211\148\74\127\21", "\168\165\163\121\90\37\237\83")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\105\83\233\95\6", "\155\31\100\222\122\54\59\217")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\165\184\149\96", "\32\148\157\139\176\80\217\23")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\188\240\130\167", "\167\151\132\197")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\176\15\110\46", "\30\18\136\60\75")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\188\145\132\135", "\183\83\132\164\161")][3]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\160\92\21\100\160", "\129\214\100\32\65\144\94\154")][4]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\26\212\71\114", "\66\67\45\227\98")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\97\157\76\244", "\83\230\86\170\105\196")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\216\210\251\144", "\86\220\224\231\222\160\29\187")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\134\143\194\231", "\231\215\177\188")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\65\33\133\44", "\160\28\118\22")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\241\143\31\234", "\58\218\201\188")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\160\145\70\126\14", "\71\214\169\115\91\62")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\157\165\83\30", "\71\55\165\144\118\46\71\159")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\10\121\102\114", "\141\137\50\74\67\66\147")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\245\150\97\170", "\161\217\205\163\68\154")][4]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\89\179\135\61\212", "\122\47\132\176\24\228\151\111")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\190\16\84\9", "\16\159\137\39\113\57\220\63")] + 1;
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\236\89\146\167\70", "\118\154\97\167\130")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\24\243\48\99", "\21\83\47\192")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\36\188\145\21", "\94\83\19\139\180\37")]];
							TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\175\134\198\167", "\151\132\151\181\227")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\169\147\117\122", "\80\74\145\166")][2]][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\14\210\171\104\140", "\40\120\234\158\77\188")][3]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\182\162\104\142\131", "\141\192\154\93\171\179\197\197")][4];
						else
							local FlatIdent_5C3A6 = 0;
							while true do
								if (FlatIdent_5C3A6 == 5) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\32\43\128\34", "\165\18\24\30")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\84\253\14\213", "\43\229\99\206")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\3\160\149\133\69", "\160\117\151\162")]];
									v566 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\85\221\108\40", "\73\24\109\232")][2];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\92\9\20\232\37", "\21\42\49\39\205")][v566](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\139\21\167\38", "\208\21\186\38\130\22\140")](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\68\225\240\11\137", "\160\50\217\195\46\185\146")], v566 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\25\242\89\162\248", "\102\111\202\108\135\200\129\217")][3]));
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\177\221\175\255", "\67\201\134\234\138\207")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\127\215\179\136", "\62\114\72\224\150\184\162\153")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\103\226\107\103\127", "\234\17\218\94\66\79\63\191")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\217\124\66\151\159", "\178\175\75\113")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\248\189\50\177", "\23\129\207\138")]];
									do
										return;
									end
									break;
								end
								if (FlatIdent_5C3A6 == 0) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\220\169\221\85\126\224", "\128\170\156\235\97\91\208\85")] = nil;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\144\113\83\109\163", "\188\174\165\71\102\72\147")] = nil;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\97\109\66\152\224\39", "\197\23\88\116\174")] = nil;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\14\96\97\188", "\68\140\54\83")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\234\235\11\26", "\73\199\210\222\46\42\190")][2]] = v58[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\222\18\143\176\148", "\227\168\42\186\149\164")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\107\111\97\79\82", "\127\29\88\86\106\98\183\95")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\11\191\247\129\87", "\190\125\136\192\164\103\111\58")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\247\237\16\43", "\53\27\207\216")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\161\155\187\145", "\135\44\150\168\158\161\170")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\203\143\179\18\128", "\176\189\184\132\55")]];
									FlatIdent_5C3A6 = 1;
								end
								if (2 == FlatIdent_5C3A6) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\66\166\68\70", "\118\236\122\149\97")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\193\154\44\25\102", "\86\183\162\25\60")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\73\44\32\190\15", "\155\63\20\21")][3];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\111\129\108\17\208", "\162\25\182\91\52\224\171")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\58\125\189\195\124", "\230\76\74\138")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\89\66\255\134", "\218\182\97\119")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\16\9\161\160\171", "\155\102\62\146\133")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\190\81\118\208", "\83\224\137\102")]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\6\161\227\240\181", "\31\112\153\208\213\133\204\76")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\133\180\76\210", "\81\27\189\129\105\226\27\60")][2]] = v59[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\134\6\196\86", "\45\115\190\51\225\102\157")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\244\133\32\103\86", "\31\130\178\23\66\102")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\254\168\141\7", "\55\215\201\159\168")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\29\181\65\232", "\100\216\37\128")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\224\157\10\181\214", "\143\150\170\57\144\230\39\86")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\90\237\74\103\115", "\224\44\218\125\66\67")]];
									FlatIdent_5C3A6 = 3;
								end
								if (FlatIdent_5C3A6 == 1) then
									v566 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\96\181\82\254", "\206\215\88\128\119")][2];
									v565 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\183\223\243\187", "\48\158\143\236\214\139\72\222")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\239\28\161\104\142", "\112\153\36\148\77\190\57")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\94\147\114\161\139", "\167\40\171\65\132\187\185\23")][v566 + 1] = v565;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\97\28\101\12", "\64\60\89\47")][v566] = v565[TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\17\218\171\243\187", "\137\103\226\158\214\139\152\191")][4]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\178\103\77\137", "\104\185\133\80")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\171\224\69\134\237", "\163\221\215\114")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\232\95\143\151\170", "\37\158\103\186\178\154\209")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\109\47\177\163", "\228\182\90\28\148\147\146\31")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\225\171\28\229", "\160\157\214\156\57\213\21")]];
									FlatIdent_5C3A6 = 2;
								end
								if (FlatIdent_5C3A6 == 3) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\176\238\59\69", "\117\90\136\221\30")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\184\29\79\177", "\119\90\128\40\106\129\120")][2]] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\223\153\213\225\38", "\137\169\161\230\196\22\202")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\207\229\236\204\82", "\223\185\221\217\233\98\26\234")][3]];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\2\247\234\168\93", "\109\116\192\221\141")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\237\25\69\151", "\144\218\218\46\96\167")] + 1;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\244\151\66\65", "\140\148\204\162\103\113")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\29\10\177\170\181", "\133\107\61\130\143")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\4\144\0\127", "\188\237\51\167\37\79")]];
									v566 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\36\144\226\217", "\186\235\28\165\199\233")][2];
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\239\230\5\44", "\32\28\215\213")][v566] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\5\106\57\102", "\61\119\61\89\28\86")][v566](TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\253\34\98\126", "\151\177\197\17\71\78\94\53")][v566 + 1]);
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\117\46\5\3", "\144\182\66\25\32\51\171")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\65\254\91\119\8", "\135\55\201\108\82\56")] + 1;
									FlatIdent_5C3A6 = 4;
								end
								if (FlatIdent_5C3A6 == 4) then
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\32\32\84\250\191", "\129\86\24\97\223\143")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\30\149\154\210", "\38\97\41\166\191\226\233")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\15\243\87\91\99", "\102\121\196\96\126\83\165\203")]];
									v565 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\163\245\247\75", "\25\186\155\192\210\123")][3];
									v564 = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\100\78\250\118", "\84\137\92\125\223\70")][v565];
									for v590 = v565 + 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\226\170\234\238", "\67\60\218\159\207\222\103\97")][4] do
										v564 = v564 .. TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\199\135\108\176\239", "\147\177\191\95\149\223\168")][v590];
									end
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\15\164\107\239\73", "\202\121\156\88")][TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\164\122\225\196\226", "\225\210\66\212")][2]] = v564;
									TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\48\161\75\247\0", "\98\70\150\124\210\48")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\66\166\150\230\234", "\144\52\145\161\195\218")] + 1;
									FlatIdent_5C3A6 = 5;
								end
							end
						end
						TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\99\169\18\117\11", "\59\21\158\37\80")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\223\183\151\67\171", "\148\169\128\160\102\155\187\64")] + 1;
						break;
					end
				end
			end
		end;
	end
	return v29(v28(), {}, v17)(...);
end
return v15("LOL!363Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q7470476574031C3Q00682Q7470733A2Q2F7369726975732E6D656E752F7261796669656C64030C3Q0043726561746557696E646F7703043Q004E616D65030F3Q00467275697420536E69706572207631030C3Q004C6F6164696E675469746C6503173Q00412Q6C206578656375746F7220636F6D70617469626C65030F3Q004C6F6164696E675375627469746C6503083Q0043612Q745374617203133Q00436F6E66696775726174696F6E536176696E6703073Q00456E61626C65642Q01030A3Q00466F6C6465724E616D6503133Q004672756974536E697065725F436F6E6669677303083Q0046696C654E616D65030D3Q0043612Q74537461725F4D61696E03093Q004B657953797374656D0100030A3Q004765745365727669636503073Q00506C6179657273030B3Q004C6F63616C506C61796572030C3Q0054772Q656E53657276696365030B3Q00482Q747053657276696365025Q00406F40022Q00A053AD84E44103023Q005F4703093Q004175746F467275697403083Q00467275697445535003093Q0043726561746554616203093Q004175746F204661726D022Q00A0E9AAB3F04103073Q0056697375616C73030B3Q004372656174654C6162656C030C3Q005374617475733A2049444C45030C3Q00437265617465546F2Q676C6503143Q004175746F20436F2Q6C65637420262053746F7265030C3Q0043752Q72656E7456616C756503043Q00466C6167030F3Q004175746F4672756974546F2Q676C6503083Q0043612Q6C6261636B030C3Q00546F2Q676C654755493A204B03093Q00467275697420455350030E3Q004672756974455350546F2Q676C6503043Q00456E756D03073Q004B6579436F646503013Q004B03103Q0055736572496E70757453657276696365030A3Q00496E707574426567616E03073Q00436F2Q6E65637403043Q007461736B03053Q00737061776E03113Q004C6F6164436F6E66696775726174696F6E006B3Q0012133Q00013Q00122Q000100023Q00202Q00010001000300122Q000300046Q000100039Q0000026Q0001000200202Q00013Q00054Q00033Q000500302Q00030006000700303E0003000800090030330003000A000B4Q00043Q000300302Q0004000D000E00302Q0004000F001000302Q00040011001200102Q0003000C000400302Q0003001300144Q00010003000200122Q000200023Q00202Q000200020015001222000400164Q001E00020004000200202Q00020002001700122Q000300023Q00202Q00030003001500122Q000500186Q00030005000200122Q000400023Q00202Q00040004001500122Q000600196Q0004000600020012220005001A3Q00120F0006001B3Q00122Q0007001C3Q00302Q0007001D001400122Q0007001C3Q00302Q0007001E001400202Q00070001001F00122Q000900203Q00122Q000A00216Q0007000A000200202Q00080001001F001222000A00223Q002Q12000B00216Q0008000B000200202Q00090007002300122Q000B00246Q0009000B0002000607000A3Q000100012Q00383Q00093Q000607000B0001000100042Q00383Q000A4Q00383Q00064Q00383Q00044Q00383Q00023Q00021A000C00023Q00202Q000D000700254Q000F3Q000400302Q000F0006002600302Q000F0027001400302Q000F0028002900060700100003000100012Q00383Q000A3Q00100C000F002A00104Q000D000F000100202Q000D0007002300122Q000F002B6Q000D000F000100202Q000D000800254Q000F3Q000400302Q000F0006002C00302Q000F0027001400302Q000F0028002D00021A001000043Q00100D000F002A00104Q000D000F000100122Q000D002E3Q00202Q000D000D002F00202Q000D000D003000122Q000E00023Q00202Q000E000E001500122Q001000316Q000E0010000200202Q000F000E0032002035000F000F003300060700110005000100012Q00383Q000D4Q0009000F0011000100122D000F00343Q00202B000F000F003500060700100006000100062Q00383Q000C4Q00383Q00024Q00383Q000A4Q00383Q00034Q00383Q00054Q00383Q000B4Q003D000F0002000100122D000F00343Q00202B000F000F003500060700100007000100012Q00383Q00024Q003D000F00020001002035000F3Q00362Q003D000F000200012Q00243Q00013Q00083Q00033Q002Q033Q0053657403083Q005374617475733A2003083Q00746F737472696E6701094Q004300015Q00202Q00010001000100122Q000300023Q00122Q000400036Q00058Q0004000200024Q0003000300044Q0001000300016Q00017Q00113Q00031B3Q00536561726368696E6720666F72204E6577205365727665723Q2E03223Q00682Q7470733A2Q2F67616D65732E726F626C6F782E636F6D2F76312F67616D65732F03283Q002F736572766572732F5075626C69633F736F72744F726465723D44657363266C696D69743D312Q3003053Q007063612Q6C03043Q006461746103053Q00706169727303023Q00696403043Q0067616D6503053Q004A6F62496403073Q00706C6179696E67030A3Q006D6178506C617965727303193Q00436F2Q6E656374696E6720746F205365727665722049443A20030A3Q0047657453657276696365030F3Q0054656C65706F72745365727669636503173Q0054656C65706F7274546F506C616365496E7374616E6365031C3Q0041504920452Q726F722E20466F7263696E672052656A6F696E3Q2E03083Q0054656C65706F7274003B4Q00037Q00122Q000100018Q0002000100124Q00026Q000100013Q00122Q000200039Q00000200122Q000100043Q00060700023Q000100022Q00393Q00024Q00388Q00040001000200020006270001002F00013Q0004323Q002F000100202B0003000200050006270003002F00013Q0004323Q002F000100122D000300063Q00202B0004000200052Q00040003000200050004323Q002D000100202B00080007000700122D000900083Q00202B0009000900090006400008002D000100090004323Q002D000100202B00080007000A00202B00090007000B0006290008002D000100090004323Q002D00012Q003900085Q0012370009000C3Q00202Q000A000700074Q00090009000A4Q00080002000100122Q000800083Q00202Q00080008000D00122Q000A000E6Q0008000A000200202Q00080008000F4Q000A00013Q00202Q000B000700074Q000C00036Q0008000C00016Q00013Q00060500030015000100020004323Q001500012Q003900035Q00122E000400106Q00030002000100122Q000300083Q00202Q00030003000D00122Q0005000E6Q00030005000200202Q0003000300114Q000500016Q000600036Q0003000600016Q00013Q00013Q00033Q00030A3Q004A534F4E4465636F646503043Q0067616D6503073Q00482Q747047657400094Q00237Q00206Q000100122Q000200023Q00202Q0002000200034Q000400016Q000200049Q009Q008Q00017Q000D3Q0003053Q00706169727303093Q00776F726B7370616365030B3Q004765744368696C6472656E2Q033Q0049734103043Q00542Q6F6C03053Q004D6F64656C03043Q004E616D6503043Q0066696E6403053Q004672756974030E3Q0046696E6446697273744368696C6403063Q0048616E646C6503153Q0046696E6446697273744368696C644F66436C612Q7303043Q005061727400283Q00121C3Q00013Q00122Q000100023Q00202Q0001000100034Q000100029Q00000200044Q00230001002035000500040004001222000700054Q004200050007000200060E00050016000100010004323Q00160001002035000500040004001222000700064Q00420005000700020006270005002300013Q0004323Q0023000100202B000500040007002035000500050008001222000700094Q00420005000700020006270005002300013Q0004323Q0023000100203500050004000A0012220007000B4Q004200050007000200060E0005001E000100010004323Q001E000100203500050004000C0012220007000D4Q00420005000700020006270005002300013Q0004323Q002300012Q0038000600044Q0038000700054Q000B000600033Q0006053Q0006000100020004323Q000600012Q00363Q00014Q000B3Q00034Q00243Q00017Q00033Q0003023Q005F4703093Q004175746F467275697403043Q0049444C4501083Q00122D000100013Q001001000100023Q00060E3Q0007000100010004323Q000700012Q003900015Q001222000200034Q003D0001000200012Q00243Q00017Q00073Q0003023Q005F4703083Q00467275697445535003053Q00706169727303093Q00776F726B7370616365030B3Q004765744368696C6472656E030E3Q0046696E6446697273744368696C6403073Q0044657374726F7901153Q00122D000100013Q001001000100023Q00060E3Q0014000100010004323Q0014000100122D000100033Q001221000200043Q00202Q0002000200054Q000200036Q00013Q000300044Q00120001002035000600050006001222000800024Q00420006000800020006270006001200013Q0004323Q0012000100202B0006000500020020350006000600072Q003D0006000200010006050001000A000100020004323Q000A00012Q00243Q00017Q00073Q0003073Q004B6579436F646503043Q0067616D65030A3Q004765745365727669636503073Q00436F7265477569030E3Q0046696E6446697273744368696C6403183Q005261796669656C6420496E7465726661636520537569746503073Q00456E61626C656402143Q0006270001000300013Q0004323Q000300012Q00243Q00013Q00202B00023Q00012Q003900035Q00060800020013000100030004323Q0013000100122D000200023Q00201B00020002000300122Q000400046Q00020004000200202Q00020002000500122Q000400066Q00020004000200062Q0002001300013Q0004323Q0013000100202B0003000200072Q0031000300033Q0010010002000700032Q00243Q00017Q00263Q0003043Q007461736B03043Q0077616974026Q00E03F03023Q005F4703093Q004175746F467275697403093Q00436861726163746572030E3Q0046696E6446697273744368696C6403103Q0048756D616E6F6964522Q6F745061727403083Q005461726765743A2003043Q004E616D6503083Q00506F736974696F6E03093Q004D61676E697475646503063Q0043726561746503093Q0054772Q656E496E666F2Q033Q006E657703043Q00456E756D030B3Q00456173696E675374796C6503063Q004C696E65617203063Q00434672616D6503043Q00506C617903063Q00506172656E74026Q00204003133Q00436F2Q6C656374696E672046727569743Q2E03043Q0067616D65030A3Q004765745365727669636503113Q005265706C69636174656453746F7261676503073Q0052656D6F74657303063Q00436F2Q6D465F030C3Q00496E766F6B65536572766572030A3Q0053746F7265467275697403043Q0046752Q6C010003193Q0053746F726167652046752Q6C212044726F2Q70696E673Q2E03083Q004261636B7061636B03093Q0044726F704672756974031A3Q0046727569742053746F7265642053752Q63652Q7366752Q6C7921031C3Q004E6F20467275697420466F756E642E2052656A6F696E696E673Q2E026Q00084000883Q00122D3Q00013Q00202B5Q0002001222000100034Q00163Q000200020006273Q008700013Q0004323Q0087000100122D3Q00043Q00202B5Q00050006275Q00013Q0004325Q00012Q00398Q00413Q000100010006273Q007900013Q0004323Q007900010006270001007900013Q0004323Q007900012Q0039000200013Q00203F00020002000600202Q00020002000700122Q000400086Q00020004000200062Q00023Q00013Q0004325Q00012Q0039000300023Q001220000400093Q00202Q00053Q000A4Q0004000400054Q00030002000100202Q00030002000B00202Q00040001000B4Q00030003000400202Q00030003000C4Q000400033Q00202Q00040004000D4Q000600023Q00122Q0007000E3Q00202Q00070007000F4Q000800046Q00080003000800122Q000900103Q00202Q00090009001100202Q0009000900124Q0007000900024Q00083Q000100202Q00090001001300102Q0008001300094Q00040008000200202Q0005000400144Q00050002000100122D000500013Q00202B0005000500022Q000200050001000100202B00053Q00150006270005003D00013Q0004323Q003D000100202B00050002000B00202B00060001000B2Q001900050005000600202B00050005000C00261800050031000100160004323Q003100012Q0039000500023Q001225000600176Q00050002000100122Q000500013Q00202Q00050005000200122Q000600036Q00050002000100122Q000500183Q00202Q00050005001900122Q0007001A6Q00050007000200202Q00050005001B00202Q00050005001C00202Q00050005001D00122Q0007001E3Q00202Q00083Q000A4Q00098Q00050009000200262Q000500530001001F0004323Q0053000100261700050075000100200004323Q007500012Q0039000600023Q001226000700216Q0006000200014Q000600013Q00202Q00060006002200202Q00060006000700202Q00083Q000A4Q00060008000200062Q00060062000100010004323Q006200012Q0039000600013Q00202B00060006000600203500060006000700202B00083Q000A2Q004200060008000200062700063Q00013Q0004325Q00012Q0039000700013Q00203000070007000600102Q00060015000700122Q000700013Q00202Q00070007000200122Q000800036Q00070002000100122Q000700183Q00202Q00070007001900122Q0009001A6Q00070009000200202Q00070007001B00202Q00070007001C00202Q00070007001D00122Q000900236Q00070009000100046Q00012Q0039000600023Q001222000700244Q003D0006000200010004325Q00012Q0039000200023Q001228000300256Q00020002000100122Q000200013Q00202Q00020002000200122Q000300266Q00020002000100122Q000200043Q00202Q00020002000500062Q00023Q00013Q0004325Q00012Q0039000200054Q00020002000100010004325Q00012Q00243Q00017Q00323Q0003043Q007461736B03043Q0077616974029A5Q99C93F03023Q005F4703083Q00467275697445535003053Q00706169727303093Q00776F726B7370616365030B3Q004765744368696C6472656E2Q033Q0049734103043Q00542Q6F6C03043Q004E616D6503043Q0066696E6403053Q004672756974030E3Q0046696E6446697273744368696C6403063Q0048616E646C6503153Q0046696E6446697273744368696C644F66436C612Q7303043Q005061727403083Q00496E7374616E63652Q033Q006E6577030C3Q0042692Q6C626F617264477569030B3Q00416C776179734F6E546F702Q0103043Q0053697A6503053Q005544696D32028Q00025Q00C06240025Q0080514003093Q00546578744C6162656C03053Q004C6162656C026Q00F03F03163Q004261636B67726F756E645472616E73706172656E6379030A3Q0054657874436F6C6F723303063Q00436F6C6F723303073Q0066726F6D524742025Q00E06F4003163Q00546578745374726F6B655472616E73706172656E637903043Q00466F6E7403043Q00456E756D030A3Q00476F7468616D426F6C6403083Q005465787453697A65026Q002C4003093Q0043686172616374657203103Q0048756D616E6F6964522Q6F745061727403083Q00506F736974696F6E03093Q004D61676E697475646503043Q005465787403023Q000A5B03043Q006D61746803053Q00666C2Q6F7203073Q002053747564735D00743Q00122D3Q00013Q00202B5Q0002001222000100034Q00163Q000200020006273Q007300013Q0004323Q0073000100122D3Q00043Q00202B5Q00050006275Q00013Q0004325Q000100122D3Q00063Q001221000100073Q00202Q0001000100084Q000100029Q00000200044Q007000010020350005000400090012220007000A4Q004200050007000200060E0005001B000100010004323Q001B000100202B00050004000B00203500050005000C0012220007000D4Q00420005000700020006270005007000013Q0004323Q0070000100203500050004000E0012220007000F4Q004200050007000200060E00050023000100010004323Q00230001002035000500040010001222000700114Q00420005000700020006270005007000013Q0004323Q0070000100203500060004000E001222000800054Q004200060008000200060E00060056000100010004323Q0056000100122D000700123Q00204400070007001300122Q000800146Q000900046Q0007000900024Q000600073Q00302Q0006000B000500302Q00060015001600122Q000700183Q00202Q00070007001300122Q000800193Q00122Q0009001A3Q00122Q000A00193Q00122Q000B001B6Q0007000B000200102Q00060017000700122Q000700123Q00202Q00070007001300122Q0008001C6Q000900066Q00070009000200302Q0007000B001D00122Q000800183Q00202Q00080008001300122Q0009001E3Q00122Q000A00193Q00122Q000B001E3Q00122Q000C00196Q0008000C000200102Q00070017000800302Q0007001F001E00122Q000800213Q00202Q00080008002200122Q000900233Q00122Q000A00233Q00122Q000B00236Q0008000B000200102Q00070020000800302Q00070024001900122Q000800263Q00202Q00080008002500202Q00080008002700102Q00070025000800302Q0007002800292Q003900075Q00203F00070007002A00202Q00070007000E00122Q0009002B6Q00070009000200062Q0007007000013Q0004323Q0070000100203500080006000E001222000A001D4Q00420008000A00020006270008007000013Q0004323Q0070000100202B00080007002C00200600090005002C4Q00080008000900202Q00080008002D00202Q00090006001D00202Q000A0004000B00122Q000B002F3Q00122Q000C00303Q00202Q000C000C00314Q000D00086Q000C0002000200122Q000D00326Q000A000A000D00102Q0009002E000A0006053Q0010000100020004323Q001000010004325Q00012Q00243Q00017Q00", TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\177\172\174\103", "\138\199\149\139\87\226")](), ...);