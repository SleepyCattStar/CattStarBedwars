

local StrToNumber = tonumber;
local Byte = string.byte;
local Char = string.char;
local Sub = string.sub;
local Subg = string.gsub;
local Rep = string.rep;
local Concat = table.concat;
local Insert = table.insert;
local LDExp = math.ldexp;
local GetFEnv = getfenv or function()
	return _ENV;
end;
local Setmetatable = setmetatable;
local PCall = pcall;
local Select = select;
local Unpack = unpack or table.unpack;
local ToNumber = tonumber;
local function VMCall(ByteString, vmenv, ...)
	local DIP = 1;
	local repeatNext;
	ByteString = Subg(Sub(ByteString, 5), "..", function(byte)
		if (Byte(byte, 2) == 81) then
			local FlatIdent_76979 = 0;
			while true do
				if (FlatIdent_76979 == 0) then
					repeatNext = StrToNumber(Sub(byte, 1, 1));
					return "";
				end
			end
		else
			local FlatIdent_69270 = 0;
			local a;
			while true do
				if (FlatIdent_69270 == 0) then
					a = Char(StrToNumber(byte, 16));
					if repeatNext then
						local b = Rep(a, repeatNext);
						repeatNext = nil;
						return b;
					else
						return a;
					end
					break;
				end
			end
		end
	end);
	local function gBit(Bit, Start, End)
		if End then
			local Res = (Bit / (2 ^ (Start - 1))) % (2 ^ (((End - 1) - (Start - 1)) + 1));
			return Res - (Res % 1);
		else
			local Plc = 2 ^ (Start - 1);
			return (((Bit % (Plc + Plc)) >= Plc) and 1) or 0;
		end
	end
	local function gBits8()
		local a = Byte(ByteString, DIP, DIP);
		DIP = DIP + 1;
		return a;
	end
	local function gBits16()
		local FlatIdent_6D4CB = 0;
		local a;
		local b;
		while true do
			if (FlatIdent_6D4CB == 1) then
				return (b * 256) + a;
			end
			if (FlatIdent_6D4CB == 0) then
				a, b = Byte(ByteString, DIP, DIP + 2);
				DIP = DIP + 2;
				FlatIdent_6D4CB = 1;
			end
		end
	end
	local function gBits32()
		local FlatIdent_12703 = 0;
		local a;
		local b;
		local c;
		local d;
		while true do
			if (FlatIdent_12703 == 0) then
				a, b, c, d = Byte(ByteString, DIP, DIP + 3);
				DIP = DIP + 4;
				FlatIdent_12703 = 1;
			end
			if (FlatIdent_12703 == 1) then
				return (d * 16777216) + (c * 65536) + (b * 256) + a;
			end
		end
	end
	local function gFloat()
		local FlatIdent_475BC = 0;
		local Left;
		local Right;
		local IsNormal;
		local Mantissa;
		local Exponent;
		local Sign;
		while true do
			if (FlatIdent_475BC == 3) then
				if (Exponent == 0) then
					if (Mantissa == 0) then
						return Sign * 0;
					else
						Exponent = 1;
						IsNormal = 0;
					end
				elseif (Exponent == 2047) then
					return ((Mantissa == 0) and (Sign * (1 / 0))) or (Sign * NaN);
				end
				return LDExp(Sign, Exponent - 1023) * (IsNormal + (Mantissa / (2 ^ 52)));
			end
			if (FlatIdent_475BC == 1) then
				IsNormal = 1;
				Mantissa = (gBit(Right, 1, 20) * (2 ^ 32)) + Left;
				FlatIdent_475BC = 2;
			end
			if (FlatIdent_475BC == 2) then
				Exponent = gBit(Right, 21, 31);
				Sign = ((gBit(Right, 32) == 1) and -1) or 1;
				FlatIdent_475BC = 3;
			end
			if (FlatIdent_475BC == 0) then
				Left = gBits32();
				Right = gBits32();
				FlatIdent_475BC = 1;
			end
		end
	end
	local function gString(Len)
		local Str;
		if not Len then
			Len = gBits32();
			if (Len == 0) then
				return "";
			end
		end
		Str = Sub(ByteString, DIP, (DIP + Len) - 1);
		DIP = DIP + Len;
		local FStr = {};
		for Idx = 1, #Str do
			FStr[Idx] = Char(Byte(Sub(Str, Idx, Idx)));
		end
		return Concat(FStr);
	end
	local gInt = gBits32;
	local function _R(...)
		return {...}, Select("#", ...);
	end
	local function Deserialize()
		local FlatIdent_1076E = 0;
		local Instrs;
		local Functions;
		local Lines;
		local Chunk;
		local ConstCount;
		local Consts;
		while true do
			if (2 == FlatIdent_1076E) then
				for Idx = 1, gBits32() do
					local FlatIdent_7F35E = 0;
					local Descriptor;
					while true do
						if (FlatIdent_7F35E == 0) then
							Descriptor = gBits8();
							if (gBit(Descriptor, 1, 1) == 0) then
								local FlatIdent_A9A3 = 0;
								local Type;
								local Mask;
								local Inst;
								while true do
									if (FlatIdent_A9A3 == 0) then
										Type = gBit(Descriptor, 2, 3);
										Mask = gBit(Descriptor, 4, 6);
										FlatIdent_A9A3 = 1;
									end
									if (1 == FlatIdent_A9A3) then
										Inst = {gBits16(),gBits16(),nil,nil};
										if (Type == 0) then
											local FlatIdent_2AC68 = 0;
											while true do
												if (FlatIdent_2AC68 == 0) then
													Inst[3] = gBits16();
													Inst[4] = gBits16();
													break;
												end
											end
										elseif (Type == 1) then
											Inst[3] = gBits32();
										elseif (Type == 2) then
											Inst[3] = gBits32() - (2 ^ 16);
										elseif (Type == 3) then
											Inst[3] = gBits32() - (2 ^ 16);
											Inst[4] = gBits16();
										end
										FlatIdent_A9A3 = 2;
									end
									if (FlatIdent_A9A3 == 2) then
										if (gBit(Mask, 1, 1) == 1) then
											Inst[2] = Consts[Inst[2]];
										end
										if (gBit(Mask, 2, 2) == 1) then
											Inst[3] = Consts[Inst[3]];
										end
										FlatIdent_A9A3 = 3;
									end
									if (FlatIdent_A9A3 == 3) then
										if (gBit(Mask, 3, 3) == 1) then
											Inst[4] = Consts[Inst[4]];
										end
										Instrs[Idx] = Inst;
										break;
									end
								end
							end
							break;
						end
					end
				end
				for Idx = 1, gBits32() do
					Functions[Idx - 1] = Deserialize();
				end
				return Chunk;
			end
			if (1 == FlatIdent_1076E) then
				ConstCount = gBits32();
				Consts = {};
				for Idx = 1, ConstCount do
					local Type = gBits8();
					local Cons;
					if (Type == 1) then
						Cons = gBits8() ~= 0;
					elseif (Type == 2) then
						Cons = gFloat();
					elseif (Type == 3) then
						Cons = gString();
					end
					Consts[Idx] = Cons;
				end
				Chunk[3] = gBits8();
				FlatIdent_1076E = 2;
			end
			if (FlatIdent_1076E == 0) then
				Instrs = {};
				Functions = {};
				Lines = {};
				Chunk = {Instrs,Functions,nil,Lines};
				FlatIdent_1076E = 1;
			end
		end
	end
	local function Wrap(Chunk, Upvalues, Env)
		local Instr = Chunk[1];
		local Proto = Chunk[2];
		local Params = Chunk[3];
		return function(...)
			local Instr = Instr;
			local Proto = Proto;
			local Params = Params;
			local _R = _R;
			local VIP = 1;
			local Top = -1;
			local Vararg = {};
			local Args = {...};
			local PCount = Select("#", ...) - 1;
			local Lupvals = {};
			local Stk = {};
			for Idx = 0, PCount do
				if (Idx >= Params) then
					Vararg[Idx - Params] = Args[Idx + 1];
				else
					Stk[Idx] = Args[Idx + 1];
				end
			end
			local Varargsz = (PCount - Params) + 1;
			local Inst;
			local Enum;
			while true do
				Inst = Instr[VIP];
				Enum = Inst[1];
				if (Enum <= 45) then
					if (Enum <= 22) then
						if (Enum <= 10) then
							if (Enum <= 4) then
								if (Enum <= 1) then
									if (Enum > 0) then
										Stk[Inst[2]] = Inst[3];
									elseif not Stk[Inst[2]] then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
								elseif (Enum <= 2) then
									local FlatIdent_17196 = 0;
									local A;
									while true do
										if (FlatIdent_17196 == 0) then
											A = Inst[2];
											Stk[A] = Stk[A]();
											break;
										end
									end
								elseif (Enum > 3) then
									Stk[Inst[2]] = Inst[3] ~= 0;
								else
									local T;
									local B;
									local A;
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = {};
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Inst[4];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = {};
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									T = Stk[A];
									B = Inst[3];
									for Idx = 1, B do
										T[Idx] = Stk[A + Idx];
									end
								end
							elseif (Enum <= 7) then
								if (Enum <= 5) then
									local B;
									local A;
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = {};
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Inst[4];
								elseif (Enum > 6) then
									local FlatIdent_12544 = 0;
									local B;
									local A;
									while true do
										if (FlatIdent_12544 == 4) then
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											FlatIdent_12544 = 5;
										end
										if (7 == FlatIdent_12544) then
											if Stk[Inst[2]] then
												VIP = VIP + 1;
											else
												VIP = Inst[3];
											end
											break;
										end
										if (FlatIdent_12544 == 0) then
											B = nil;
											A = nil;
											A = Inst[2];
											FlatIdent_12544 = 1;
										end
										if (FlatIdent_12544 == 3) then
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											FlatIdent_12544 = 4;
										end
										if (FlatIdent_12544 == 6) then
											Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
											VIP = VIP + 1;
											Inst = Instr[VIP];
											FlatIdent_12544 = 7;
										end
										if (FlatIdent_12544 == 1) then
											B = Stk[Inst[3]];
											Stk[A + 1] = B;
											Stk[A] = B[Inst[4]];
											FlatIdent_12544 = 2;
										end
										if (FlatIdent_12544 == 2) then
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Env[Inst[3]];
											FlatIdent_12544 = 3;
										end
										if (5 == FlatIdent_12544) then
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											FlatIdent_12544 = 6;
										end
									end
								else
									do
										return;
									end
								end
							elseif (Enum <= 8) then
								Stk[Inst[2]] = Inst[3] ~= 0;
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3] ~= 0;
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3] ~= 0;
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3] ~= 0;
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3] ~= 0;
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3] ~= 0;
							elseif (Enum == 9) then
								local B;
								local Edx;
								local Results, Limit;
								local A;
								Stk[Inst[2]][Inst[3]] = Inst[4];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Upvalues[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A]();
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Upvalues[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Results, Limit = _R(Stk[A]());
								Top = (Limit + A) - 1;
								Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								if not Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							else
								local FlatIdent_64E40 = 0;
								local A;
								local T;
								local B;
								while true do
									if (FlatIdent_64E40 == 0) then
										A = Inst[2];
										T = Stk[A];
										FlatIdent_64E40 = 1;
									end
									if (FlatIdent_64E40 == 1) then
										B = Inst[3];
										for Idx = 1, B do
											T[Idx] = Stk[A + Idx];
										end
										break;
									end
								end
							end
						elseif (Enum <= 16) then
							if (Enum <= 13) then
								if (Enum <= 11) then
									if (Stk[Inst[2]] == Stk[Inst[4]]) then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
								elseif (Enum == 12) then
									Stk[Inst[2]] = Inst[3] ~= 0;
									VIP = VIP + 1;
								else
									local B;
									local A;
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = {};
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Inst[4];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Inst[4];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Inst[4];
								end
							elseif (Enum <= 14) then
								local FlatIdent_207CC = 0;
								local A;
								while true do
									if (FlatIdent_207CC == 0) then
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
										break;
									end
								end
							elseif (Enum > 15) then
								Stk[Inst[2]] = -Stk[Inst[3]];
							elseif (Stk[Inst[2]] ~= Stk[Inst[4]]) then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						elseif (Enum <= 19) then
							if (Enum <= 17) then
								Stk[Inst[2]] = Stk[Inst[3]] + Stk[Inst[4]];
							elseif (Enum > 18) then
								local FlatIdent_6DC53 = 0;
								local A;
								local Results;
								local Edx;
								while true do
									if (0 == FlatIdent_6DC53) then
										A = Inst[2];
										Results = {Stk[A](Stk[A + 1])};
										FlatIdent_6DC53 = 1;
									end
									if (1 == FlatIdent_6DC53) then
										Edx = 0;
										for Idx = A, Inst[4] do
											local FlatIdent_68E92 = 0;
											while true do
												if (FlatIdent_68E92 == 0) then
													Edx = Edx + 1;
													Stk[Idx] = Results[Edx];
													break;
												end
											end
										end
										break;
									end
								end
							else
								local FlatIdent_6C033 = 0;
								local A;
								local Results;
								local Limit;
								local Edx;
								while true do
									if (FlatIdent_6C033 == 2) then
										for Idx = A, Top do
											local FlatIdent_5F1CB = 0;
											while true do
												if (FlatIdent_5F1CB == 0) then
													Edx = Edx + 1;
													Stk[Idx] = Results[Edx];
													break;
												end
											end
										end
										break;
									end
									if (0 == FlatIdent_6C033) then
										A = Inst[2];
										Results, Limit = _R(Stk[A]());
										FlatIdent_6C033 = 1;
									end
									if (FlatIdent_6C033 == 1) then
										Top = (Limit + A) - 1;
										Edx = 0;
										FlatIdent_6C033 = 2;
									end
								end
							end
						elseif (Enum <= 20) then
							local FlatIdent_47ABB = 0;
							local B;
							local A;
							while true do
								if (FlatIdent_47ABB == 5) then
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									FlatIdent_47ABB = 6;
								end
								if (FlatIdent_47ABB == 2) then
									A = Inst[2];
									B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_47ABB = 3;
								end
								if (FlatIdent_47ABB == 4) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									FlatIdent_47ABB = 5;
								end
								if (FlatIdent_47ABB == 1) then
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_47ABB = 2;
								end
								if (6 == FlatIdent_47ABB) then
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									break;
								end
								if (FlatIdent_47ABB == 0) then
									B = nil;
									A = nil;
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									FlatIdent_47ABB = 1;
								end
								if (FlatIdent_47ABB == 3) then
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									FlatIdent_47ABB = 4;
								end
							end
						elseif (Enum == 21) then
							local FlatIdent_5EE26 = 0;
							local A;
							while true do
								if (FlatIdent_5EE26 == 4) then
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									break;
								end
								if (FlatIdent_5EE26 == 2) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									FlatIdent_5EE26 = 3;
								end
								if (FlatIdent_5EE26 == 0) then
									A = nil;
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									FlatIdent_5EE26 = 1;
								end
								if (FlatIdent_5EE26 == 1) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									FlatIdent_5EE26 = 2;
								end
								if (FlatIdent_5EE26 == 3) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									FlatIdent_5EE26 = 4;
								end
							end
						else
							local Results;
							local Edx;
							local Results, Limit;
							local B;
							local A;
							Stk[Inst[2]] = Upvalues[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Upvalues[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Upvalues[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Upvalues[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Upvalues[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Env[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Upvalues[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Env[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Env[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Env[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Results, Limit = _R(Stk[A](Stk[A + 1]));
							Top = (Limit + A) - 1;
							Edx = 0;
							for Idx = A, Top do
								local FlatIdent_284EA = 0;
								while true do
									if (FlatIdent_284EA == 0) then
										Edx = Edx + 1;
										Stk[Idx] = Results[Edx];
										break;
									end
								end
							end
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Results = {Stk[A](Unpack(Stk, A + 1, Top))};
							Edx = 0;
							for Idx = A, Inst[4] do
								Edx = Edx + 1;
								Stk[Idx] = Results[Edx];
							end
							VIP = VIP + 1;
							Inst = Instr[VIP];
							VIP = Inst[3];
						end
					elseif (Enum <= 33) then
						if (Enum <= 27) then
							if (Enum <= 24) then
								if (Enum == 23) then
									local FlatIdent_67517 = 0;
									local B;
									local A;
									while true do
										if (3 == FlatIdent_67517) then
											A = Inst[2];
											Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											B = Stk[Inst[3]];
											FlatIdent_67517 = 4;
										end
										if (FlatIdent_67517 == 0) then
											B = nil;
											A = nil;
											Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											FlatIdent_67517 = 1;
										end
										if (5 == FlatIdent_67517) then
											Inst = Instr[VIP];
											Stk[Inst[2]][Inst[3]] = Inst[4];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]][Inst[3]] = Inst[4];
											VIP = VIP + 1;
											FlatIdent_67517 = 6;
										end
										if (FlatIdent_67517 == 2) then
											Stk[A] = B[Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											FlatIdent_67517 = 3;
										end
										if (FlatIdent_67517 == 1) then
											Stk[A](Unpack(Stk, A + 1, Inst[3]));
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											B = Stk[Inst[3]];
											Stk[A + 1] = B;
											FlatIdent_67517 = 2;
										end
										if (FlatIdent_67517 == 4) then
											Stk[A + 1] = B;
											Stk[A] = B[Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = {};
											VIP = VIP + 1;
											FlatIdent_67517 = 5;
										end
										if (FlatIdent_67517 == 6) then
											Inst = Instr[VIP];
											Stk[Inst[2]][Inst[3]] = Inst[4];
											break;
										end
									end
								else
									Upvalues[Inst[3]] = Stk[Inst[2]];
								end
							elseif (Enum <= 25) then
								local A;
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Upvalues[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]] + Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								VIP = Inst[3];
							elseif (Enum == 26) then
								local T;
								local B;
								local A;
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = {};
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = {};
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								T = Stk[A];
								B = Inst[3];
								for Idx = 1, B do
									T[Idx] = Stk[A + Idx];
								end
							else
								local FlatIdent_5E109 = 0;
								local A;
								while true do
									if (FlatIdent_5E109 == 0) then
										A = Inst[2];
										Stk[A] = Stk[A](Stk[A + 1]);
										break;
									end
								end
							end
						elseif (Enum <= 30) then
							if (Enum <= 28) then
								local B;
								local A;
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = {};
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
							elseif (Enum > 29) then
								local FlatIdent_2DA99 = 0;
								local B;
								local A;
								while true do
									if (FlatIdent_2DA99 == 0) then
										B = nil;
										A = nil;
										Stk[Inst[2]] = Upvalues[Inst[3]];
										VIP = VIP + 1;
										FlatIdent_2DA99 = 1;
									end
									if (FlatIdent_2DA99 == 1) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_2DA99 = 2;
									end
									if (FlatIdent_2DA99 == 2) then
										A = Inst[2];
										B = Stk[Inst[3]];
										Stk[A + 1] = B;
										Stk[A] = B[Inst[4]];
										FlatIdent_2DA99 = 3;
									end
									if (FlatIdent_2DA99 == 5) then
										Inst = Instr[VIP];
										if not Stk[Inst[2]] then
											VIP = VIP + 1;
										else
											VIP = Inst[3];
										end
										break;
									end
									if (FlatIdent_2DA99 == 4) then
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										FlatIdent_2DA99 = 5;
									end
									if (FlatIdent_2DA99 == 3) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										FlatIdent_2DA99 = 4;
									end
								end
							else
								local FlatIdent_5D802 = 0;
								local A;
								while true do
									if (FlatIdent_5D802 == 10) then
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Stk[Inst[3]]] = Stk[Inst[4]];
										FlatIdent_5D802 = 11;
									end
									if (FlatIdent_5D802 == 7) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Inst[4];
										FlatIdent_5D802 = 8;
									end
									if (9 == FlatIdent_5D802) then
										Stk[Inst[2]] = Upvalues[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = {};
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										FlatIdent_5D802 = 10;
									end
									if (FlatIdent_5D802 == 3) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_5D802 = 4;
									end
									if (FlatIdent_5D802 == 6) then
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										FlatIdent_5D802 = 7;
									end
									if (FlatIdent_5D802 == 8) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Inst[4];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Upvalues[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_5D802 = 9;
									end
									if (FlatIdent_5D802 == 5) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Inst[4];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_5D802 = 6;
									end
									if (FlatIdent_5D802 == 0) then
										A = nil;
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										FlatIdent_5D802 = 1;
									end
									if (FlatIdent_5D802 == 11) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										do
											return;
										end
										break;
									end
									if (1 == FlatIdent_5D802) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										FlatIdent_5D802 = 2;
									end
									if (FlatIdent_5D802 == 2) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										FlatIdent_5D802 = 3;
									end
									if (FlatIdent_5D802 == 4) then
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										FlatIdent_5D802 = 5;
									end
								end
							end
						elseif (Enum <= 31) then
							Stk[Inst[2]] = Env[Inst[3]];
						elseif (Enum == 32) then
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Upvalues[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]] * Inst[4];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]] + Stk[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
						else
							local A = Inst[2];
							local Results, Limit = _R(Stk[A](Stk[A + 1]));
							Top = (Limit + A) - 1;
							local Edx = 0;
							for Idx = A, Top do
								Edx = Edx + 1;
								Stk[Idx] = Results[Edx];
							end
						end
					elseif (Enum <= 39) then
						if (Enum <= 36) then
							if (Enum <= 34) then
								local B;
								local A;
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = {};
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
							elseif (Enum > 35) then
								local K;
								local B;
								local A;
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]] - Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Stk[A + 1]);
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								B = Inst[3];
								K = Stk[B];
								for Idx = B + 1, Inst[4] do
									K = K .. Stk[Idx];
								end
								Stk[Inst[2]] = K;
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								VIP = Inst[3];
							else
								local FlatIdent_55D83 = 0;
								local B;
								local A;
								while true do
									if (FlatIdent_55D83 == 6) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										FlatIdent_55D83 = 7;
									end
									if (FlatIdent_55D83 == 0) then
										B = nil;
										A = nil;
										A = Inst[2];
										FlatIdent_55D83 = 1;
									end
									if (FlatIdent_55D83 == 5) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Inst[4];
										FlatIdent_55D83 = 6;
									end
									if (FlatIdent_55D83 == 2) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = {};
										FlatIdent_55D83 = 3;
									end
									if (FlatIdent_55D83 == 1) then
										B = Stk[Inst[3]];
										Stk[A + 1] = B;
										Stk[A] = B[Inst[4]];
										FlatIdent_55D83 = 2;
									end
									if (3 == FlatIdent_55D83) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Inst[4];
										FlatIdent_55D83 = 4;
									end
									if (FlatIdent_55D83 == 7) then
										Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_55D83 = 8;
									end
									if (4 == FlatIdent_55D83) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Inst[4];
										FlatIdent_55D83 = 5;
									end
									if (8 == FlatIdent_55D83) then
										do
											return;
										end
										break;
									end
								end
							end
						elseif (Enum <= 37) then
							if (Inst[2] < Stk[Inst[4]]) then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						elseif (Enum == 38) then
							local FlatIdent_5202D = 0;
							local A;
							local Results;
							local Limit;
							local Edx;
							while true do
								if (FlatIdent_5202D == 2) then
									for Idx = A, Top do
										Edx = Edx + 1;
										Stk[Idx] = Results[Edx];
									end
									break;
								end
								if (1 == FlatIdent_5202D) then
									Top = (Limit + A) - 1;
									Edx = 0;
									FlatIdent_5202D = 2;
								end
								if (0 == FlatIdent_5202D) then
									A = Inst[2];
									Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
									FlatIdent_5202D = 1;
								end
							end
						else
							local FlatIdent_71E8F = 0;
							local B;
							local A;
							while true do
								if (FlatIdent_71E8F == 1) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A](Stk[A + 1]);
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_71E8F = 2;
								end
								if (FlatIdent_71E8F == 0) then
									B = nil;
									A = nil;
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									FlatIdent_71E8F = 1;
								end
								if (FlatIdent_71E8F == 2) then
									Stk[Inst[2]] = Upvalues[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									Stk[A + 1] = B;
									FlatIdent_71E8F = 3;
								end
								if (FlatIdent_71E8F == 4) then
									Stk[Inst[2]][Inst[3]] = Inst[4];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Inst[4];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_71E8F = 5;
								end
								if (FlatIdent_71E8F == 5) then
									Stk[Inst[2]][Inst[3]] = Inst[4];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									FlatIdent_71E8F = 6;
								end
								if (FlatIdent_71E8F == 3) then
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = {};
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_71E8F = 4;
								end
								if (FlatIdent_71E8F == 6) then
									Inst = Instr[VIP];
									do
										return;
									end
									break;
								end
							end
						end
					elseif (Enum <= 42) then
						if (Enum <= 40) then
							do
								return Stk[Inst[2]];
							end
						elseif (Enum > 41) then
							Stk[Inst[2]] = Stk[Inst[3]];
						else
							VIP = Inst[3];
						end
					elseif (Enum <= 43) then
						Stk[Inst[2]] = Stk[Inst[3]] * Inst[4];
					elseif (Enum == 44) then
						local A = Inst[2];
						Stk[A](Stk[A + 1]);
					else
						Stk[Inst[2]]();
					end
				elseif (Enum <= 68) then
					if (Enum <= 56) then
						if (Enum <= 50) then
							if (Enum <= 47) then
								if (Enum == 46) then
									Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
								else
									Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
								end
							elseif (Enum <= 48) then
								local A = Inst[2];
								local C = Inst[4];
								local CB = A + 2;
								local Result = {Stk[A](Stk[A + 1], Stk[CB])};
								for Idx = 1, C do
									Stk[CB + Idx] = Result[Idx];
								end
								local R = Result[1];
								if R then
									local FlatIdent_8B7B0 = 0;
									while true do
										if (FlatIdent_8B7B0 == 0) then
											Stk[CB] = R;
											VIP = Inst[3];
											break;
										end
									end
								else
									VIP = VIP + 1;
								end
							elseif (Enum > 49) then
								Stk[Inst[2]] = Stk[Inst[3]][Stk[Inst[4]]];
							elseif (Stk[Inst[2]] == Inst[4]) then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						elseif (Enum <= 53) then
							if (Enum <= 51) then
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								VIP = Inst[3];
							elseif (Enum > 52) then
								local FlatIdent_35AC5 = 0;
								local A;
								local Cls;
								while true do
									if (FlatIdent_35AC5 == 1) then
										for Idx = 1, #Lupvals do
											local List = Lupvals[Idx];
											for Idz = 0, #List do
												local FlatIdent_A446 = 0;
												local Upv;
												local NStk;
												local DIP;
												while true do
													if (FlatIdent_A446 == 1) then
														DIP = Upv[2];
														if ((NStk == Stk) and (DIP >= A)) then
															local FlatIdent_14454 = 0;
															while true do
																if (FlatIdent_14454 == 0) then
																	Cls[DIP] = NStk[DIP];
																	Upv[1] = Cls;
																	break;
																end
															end
														end
														break;
													end
													if (FlatIdent_A446 == 0) then
														Upv = List[Idz];
														NStk = Upv[1];
														FlatIdent_A446 = 1;
													end
												end
											end
										end
										break;
									end
									if (FlatIdent_35AC5 == 0) then
										A = Inst[2];
										Cls = {};
										FlatIdent_35AC5 = 1;
									end
								end
							else
								local B;
								local A;
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
							end
						elseif (Enum <= 54) then
							local FlatIdent_37555 = 0;
							local A;
							while true do
								if (FlatIdent_37555 == 1) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									FlatIdent_37555 = 2;
								end
								if (5 == FlatIdent_37555) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									if Stk[Inst[2]] then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
									break;
								end
								if (FlatIdent_37555 == 2) then
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Stk[A + 1]);
									FlatIdent_37555 = 3;
								end
								if (FlatIdent_37555 == 3) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Inst[4];
									FlatIdent_37555 = 4;
								end
								if (FlatIdent_37555 == 0) then
									A = nil;
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									FlatIdent_37555 = 1;
								end
								if (FlatIdent_37555 == 4) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
									FlatIdent_37555 = 5;
								end
							end
						elseif (Enum > 55) then
							Stk[Inst[2]] = Upvalues[Inst[3]];
						else
							local FlatIdent_669F5 = 0;
							local A;
							while true do
								if (FlatIdent_669F5 == 0) then
									A = nil;
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									FlatIdent_669F5 = 1;
								end
								if (FlatIdent_669F5 == 1) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									FlatIdent_669F5 = 2;
								end
								if (FlatIdent_669F5 == 4) then
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									FlatIdent_669F5 = 5;
								end
								if (FlatIdent_669F5 == 5) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									if not Stk[Inst[2]] then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
									break;
								end
								if (FlatIdent_669F5 == 3) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									FlatIdent_669F5 = 4;
								end
								if (FlatIdent_669F5 == 2) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									FlatIdent_669F5 = 3;
								end
							end
						end
					elseif (Enum <= 62) then
						if (Enum <= 59) then
							if (Enum <= 57) then
								local B;
								local A;
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = {};
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
							elseif (Enum == 58) then
								Stk[Inst[2]][Stk[Inst[3]]] = Stk[Inst[4]];
							else
								Stk[Inst[2]] = Stk[Inst[3]] - Stk[Inst[4]];
							end
						elseif (Enum <= 60) then
							local Results;
							local Edx;
							local Results, Limit;
							local B;
							local A;
							Stk[Inst[2]] = Env[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Upvalues[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Results, Limit = _R(Stk[A](Stk[A + 1]));
							Top = (Limit + A) - 1;
							Edx = 0;
							for Idx = A, Top do
								local FlatIdent_523B3 = 0;
								while true do
									if (FlatIdent_523B3 == 0) then
										Edx = Edx + 1;
										Stk[Idx] = Results[Edx];
										break;
									end
								end
							end
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Results = {Stk[A](Unpack(Stk, A + 1, Top))};
							Edx = 0;
							for Idx = A, Inst[4] do
								Edx = Edx + 1;
								Stk[Idx] = Results[Edx];
							end
							VIP = VIP + 1;
							Inst = Instr[VIP];
							VIP = Inst[3];
						elseif (Enum > 61) then
							local FlatIdent_74B46 = 0;
							local Edx;
							local Results;
							local Limit;
							local B;
							local A;
							while true do
								if (FlatIdent_74B46 == 4) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_74B46 = 5;
								end
								if (FlatIdent_74B46 == 7) then
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Inst[4];
									break;
								end
								if (6 == FlatIdent_74B46) then
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = {};
									VIP = VIP + 1;
									FlatIdent_74B46 = 7;
								end
								if (FlatIdent_74B46 == 5) then
									A = Inst[2];
									Stk[A] = Stk[A]();
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									FlatIdent_74B46 = 6;
								end
								if (FlatIdent_74B46 == 3) then
									Inst = Instr[VIP];
									A = Inst[2];
									Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
									Top = (Limit + A) - 1;
									Edx = 0;
									for Idx = A, Top do
										Edx = Edx + 1;
										Stk[Idx] = Results[Edx];
									end
									FlatIdent_74B46 = 4;
								end
								if (FlatIdent_74B46 == 2) then
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									FlatIdent_74B46 = 3;
								end
								if (FlatIdent_74B46 == 1) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									FlatIdent_74B46 = 2;
								end
								if (FlatIdent_74B46 == 0) then
									Edx = nil;
									Results, Limit = nil;
									B = nil;
									A = nil;
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									FlatIdent_74B46 = 1;
								end
							end
						else
							Stk[Inst[2]][Stk[Inst[3]]] = Inst[4];
						end
					elseif (Enum <= 65) then
						if (Enum <= 63) then
							local FlatIdent_47EEF = 0;
							while true do
								if (FlatIdent_47EEF == 2) then
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_47EEF = 3;
								end
								if (4 == FlatIdent_47EEF) then
									if (Stk[Inst[2]] ~= Stk[Inst[4]]) then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
									break;
								end
								if (FlatIdent_47EEF == 1) then
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_47EEF = 2;
								end
								if (FlatIdent_47EEF == 3) then
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_47EEF = 4;
								end
								if (FlatIdent_47EEF == 0) then
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_47EEF = 1;
								end
							end
						elseif (Enum == 64) then
							local B;
							local A;
							Stk[Inst[2]][Inst[3]] = Inst[4];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = {};
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Env[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
						else
							local B;
							local A;
							Stk[Inst[2]] = Upvalues[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							if not Stk[Inst[2]] then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						end
					elseif (Enum <= 66) then
						local A = Inst[2];
						local Results = {Stk[A](Unpack(Stk, A + 1, Top))};
						local Edx = 0;
						for Idx = A, Inst[4] do
							Edx = Edx + 1;
							Stk[Idx] = Results[Edx];
						end
					elseif (Enum == 67) then
						local FlatIdent_386FF = 0;
						local B;
						local A;
						while true do
							if (FlatIdent_386FF == 6) then
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								FlatIdent_386FF = 7;
							end
							if (FlatIdent_386FF == 5) then
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								FlatIdent_386FF = 6;
							end
							if (FlatIdent_386FF == 4) then
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								FlatIdent_386FF = 5;
							end
							if (FlatIdent_386FF == 3) then
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								FlatIdent_386FF = 4;
							end
							if (FlatIdent_386FF == 9) then
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								FlatIdent_386FF = 10;
							end
							if (FlatIdent_386FF == 2) then
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]];
								FlatIdent_386FF = 3;
							end
							if (FlatIdent_386FF == 12) then
								VIP = VIP + 1;
								Inst = Instr[VIP];
								do
									return;
								end
								break;
							end
							if (FlatIdent_386FF == 11) then
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]]();
								FlatIdent_386FF = 12;
							end
							if (7 == FlatIdent_386FF) then
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								FlatIdent_386FF = 8;
							end
							if (FlatIdent_386FF == 8) then
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								FlatIdent_386FF = 9;
							end
							if (FlatIdent_386FF == 1) then
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								FlatIdent_386FF = 2;
							end
							if (FlatIdent_386FF == 10) then
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								FlatIdent_386FF = 11;
							end
							if (FlatIdent_386FF == 0) then
								B = nil;
								A = nil;
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								FlatIdent_386FF = 1;
							end
						end
					elseif (Stk[Inst[2]] ~= Inst[4]) then
						VIP = VIP + 1;
					else
						VIP = Inst[3];
					end
				elseif (Enum <= 80) then
					if (Enum <= 74) then
						if (Enum <= 71) then
							if (Enum <= 69) then
								local A = Inst[2];
								local B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
							elseif (Enum == 70) then
								local FlatIdent_6C51A = 0;
								local A;
								while true do
									if (FlatIdent_6C51A == 0) then
										A = Inst[2];
										do
											return Unpack(Stk, A, A + Inst[3]);
										end
										break;
									end
								end
							else
								local FlatIdent_2D7B8 = 0;
								local A;
								while true do
									if (FlatIdent_2D7B8 == 0) then
										A = nil;
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_2D7B8 = 1;
									end
									if (2 == FlatIdent_2D7B8) then
										Stk[A] = Stk[A](Stk[A + 1]);
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										FlatIdent_2D7B8 = 3;
									end
									if (FlatIdent_2D7B8 == 1) then
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										FlatIdent_2D7B8 = 2;
									end
									if (4 == FlatIdent_2D7B8) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Upvalues[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_2D7B8 = 5;
									end
									if (FlatIdent_2D7B8 == 3) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Inst[4];
										VIP = VIP + 1;
										FlatIdent_2D7B8 = 4;
									end
									if (FlatIdent_2D7B8 == 5) then
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										break;
									end
								end
							end
						elseif (Enum <= 72) then
							Stk[Inst[2]][Inst[3]] = Inst[4];
						elseif (Enum > 73) then
							local FlatIdent_994C = 0;
							local A;
							while true do
								if (FlatIdent_994C == 1) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									FlatIdent_994C = 2;
								end
								if (FlatIdent_994C == 4) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
									VIP = VIP + 1;
									FlatIdent_994C = 5;
								end
								if (FlatIdent_994C == 0) then
									A = nil;
									Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
									VIP = VIP + 1;
									FlatIdent_994C = 1;
								end
								if (FlatIdent_994C == 5) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									FlatIdent_994C = 6;
								end
								if (FlatIdent_994C == 6) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									FlatIdent_994C = 7;
								end
								if (FlatIdent_994C == 9) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
									break;
								end
								if (FlatIdent_994C == 7) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
									VIP = VIP + 1;
									FlatIdent_994C = 8;
								end
								if (FlatIdent_994C == 3) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									FlatIdent_994C = 4;
								end
								if (FlatIdent_994C == 2) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									FlatIdent_994C = 3;
								end
								if (FlatIdent_994C == 8) then
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									FlatIdent_994C = 9;
								end
							end
						else
							local B = Inst[3];
							local K = Stk[B];
							for Idx = B + 1, Inst[4] do
								K = K .. Stk[Idx];
							end
							Stk[Inst[2]] = K;
						end
					elseif (Enum <= 77) then
						if (Enum <= 75) then
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						elseif (Enum == 76) then
							local FlatIdent_79F35 = 0;
							local B;
							local A;
							while true do
								if (FlatIdent_79F35 == 0) then
									B = nil;
									A = nil;
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
									VIP = VIP + 1;
									FlatIdent_79F35 = 1;
								end
								if (FlatIdent_79F35 == 1) then
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									FlatIdent_79F35 = 2;
								end
								if (FlatIdent_79F35 == 7) then
									Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									FlatIdent_79F35 = 8;
								end
								if (FlatIdent_79F35 == 5) then
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_79F35 = 6;
								end
								if (FlatIdent_79F35 == 4) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									FlatIdent_79F35 = 5;
								end
								if (FlatIdent_79F35 == 6) then
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									FlatIdent_79F35 = 7;
								end
								if (FlatIdent_79F35 == 3) then
									Stk[Inst[2]]();
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									FlatIdent_79F35 = 4;
								end
								if (FlatIdent_79F35 == 9) then
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									break;
								end
								if (FlatIdent_79F35 == 2) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_79F35 = 3;
								end
								if (FlatIdent_79F35 == 8) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									FlatIdent_79F35 = 9;
								end
							end
						elseif Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					elseif (Enum <= 78) then
						local FlatIdent_285D = 0;
						local A;
						local T;
						while true do
							if (FlatIdent_285D == 0) then
								A = Inst[2];
								T = Stk[A];
								FlatIdent_285D = 1;
							end
							if (FlatIdent_285D == 1) then
								for Idx = A + 1, Inst[3] do
									Insert(T, Stk[Idx]);
								end
								break;
							end
						end
					elseif (Enum > 79) then
						local B;
						local A;
						Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						A = Inst[2];
						Stk[A](Unpack(Stk, A + 1, Inst[3]));
						VIP = VIP + 1;
						Inst = Instr[VIP];
						A = Inst[2];
						B = Stk[Inst[3]];
						Stk[A + 1] = B;
						Stk[A] = B[Inst[4]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = {};
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]][Inst[3]] = Inst[4];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]][Inst[3]] = Inst[4];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]][Inst[3]] = Inst[4];
					else
						local B;
						local A;
						A = Inst[2];
						B = Stk[Inst[3]];
						Stk[A + 1] = B;
						Stk[A] = B[Inst[4]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Env[Inst[3]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						A = Inst[2];
						Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						VIP = VIP + 1;
						Inst = Instr[VIP];
						if Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					end
				elseif (Enum <= 86) then
					if (Enum <= 83) then
						if (Enum <= 81) then
							local NewProto = Proto[Inst[3]];
							local NewUvals;
							local Indexes = {};
							NewUvals = Setmetatable({}, {__index=function(_, Key)
								local FlatIdent_9875A = 0;
								local Val;
								while true do
									if (FlatIdent_9875A == 0) then
										Val = Indexes[Key];
										return Val[1][Val[2]];
									end
								end
							end,__newindex=function(_, Key, Value)
								local Val = Indexes[Key];
								Val[1][Val[2]] = Value;
							end});
							for Idx = 1, Inst[4] do
								VIP = VIP + 1;
								local Mvm = Instr[VIP];
								if (Mvm[1] == 42) then
									Indexes[Idx - 1] = {Stk,Mvm[3]};
								else
									Indexes[Idx - 1] = {Upvalues,Mvm[3]};
								end
								Lupvals[#Lupvals + 1] = Indexes;
							end
							Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
						elseif (Enum > 82) then
							local B;
							local A;
							A = Inst[2];
							B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Env[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							if Stk[Inst[2]] then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						else
							local A;
							Stk[Inst[2]] = Env[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A](Stk[A + 1]);
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Upvalues[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]]();
							VIP = VIP + 1;
							Inst = Instr[VIP];
							do
								return;
							end
						end
					elseif (Enum <= 84) then
						local FlatIdent_44652 = 0;
						local A;
						while true do
							if (FlatIdent_44652 == 0) then
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								break;
							end
						end
					elseif (Enum > 85) then
						local FlatIdent_28E8A = 0;
						local B;
						local A;
						while true do
							if (FlatIdent_28E8A == 1) then
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								FlatIdent_28E8A = 2;
							end
							if (FlatIdent_28E8A == 8) then
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
								VIP = VIP + 1;
								FlatIdent_28E8A = 9;
							end
							if (FlatIdent_28E8A == 0) then
								B = nil;
								A = nil;
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								VIP = VIP + 1;
								FlatIdent_28E8A = 1;
							end
							if (FlatIdent_28E8A == 3) then
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								FlatIdent_28E8A = 4;
							end
							if (4 == FlatIdent_28E8A) then
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								FlatIdent_28E8A = 5;
							end
							if (FlatIdent_28E8A == 6) then
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								FlatIdent_28E8A = 7;
							end
							if (7 == FlatIdent_28E8A) then
								Stk[Inst[2]] = {};
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
								FlatIdent_28E8A = 8;
							end
							if (FlatIdent_28E8A == 9) then
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Inst[4];
								break;
							end
							if (FlatIdent_28E8A == 2) then
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								FlatIdent_28E8A = 3;
							end
							if (5 == FlatIdent_28E8A) then
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								FlatIdent_28E8A = 6;
							end
						end
					else
						Stk[Inst[2]] = {};
					end
				elseif (Enum <= 89) then
					if (Enum <= 87) then
						Stk[Inst[2]][Inst[3]] = Inst[4];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Upvalues[Inst[3]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]][Inst[3]] = Inst[4];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Upvalues[Inst[3]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Env[Inst[3]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						if (Stk[Inst[2]] ~= Stk[Inst[4]]) then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					elseif (Enum > 88) then
						Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
					else
						local A;
						Stk[Inst[2]] = Upvalues[Inst[3]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Upvalues[Inst[3]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						A = Inst[2];
						Stk[A](Stk[A + 1]);
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Upvalues[Inst[3]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						if not Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					end
				elseif (Enum <= 90) then
					local FlatIdent_15C34 = 0;
					local T;
					local B;
					local A;
					while true do
						if (FlatIdent_15C34 == 2) then
							A = Inst[2];
							B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
							VIP = VIP + 1;
							FlatIdent_15C34 = 3;
						end
						if (FlatIdent_15C34 == 6) then
							Inst = Instr[VIP];
							A = Inst[2];
							T = Stk[A];
							B = Inst[3];
							for Idx = 1, B do
								T[Idx] = Stk[A + Idx];
							end
							break;
						end
						if (FlatIdent_15C34 == 5) then
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							FlatIdent_15C34 = 6;
						end
						if (FlatIdent_15C34 == 4) then
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = {};
							VIP = VIP + 1;
							Inst = Instr[VIP];
							FlatIdent_15C34 = 5;
						end
						if (FlatIdent_15C34 == 1) then
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							FlatIdent_15C34 = 2;
						end
						if (FlatIdent_15C34 == 3) then
							Inst = Instr[VIP];
							Stk[Inst[2]] = {};
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							FlatIdent_15C34 = 4;
						end
						if (FlatIdent_15C34 == 0) then
							T = nil;
							B = nil;
							A = nil;
							Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
							VIP = VIP + 1;
							FlatIdent_15C34 = 1;
						end
					end
				elseif (Enum == 91) then
					local A = Inst[2];
					Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
				else
					local FlatIdent_624DF = 0;
					local B;
					local A;
					while true do
						if (FlatIdent_624DF == 3) then
							A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							B = Stk[Inst[3]];
							FlatIdent_624DF = 4;
						end
						if (FlatIdent_624DF == 0) then
							B = nil;
							A = nil;
							Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							FlatIdent_624DF = 1;
						end
						if (FlatIdent_624DF == 6) then
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							break;
						end
						if (FlatIdent_624DF == 5) then
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]][Inst[3]] = Inst[4];
							VIP = VIP + 1;
							FlatIdent_624DF = 6;
						end
						if (FlatIdent_624DF == 2) then
							Stk[A] = B[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							FlatIdent_624DF = 3;
						end
						if (FlatIdent_624DF == 1) then
							Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							B = Stk[Inst[3]];
							Stk[A + 1] = B;
							FlatIdent_624DF = 2;
						end
						if (FlatIdent_624DF == 4) then
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = {};
							VIP = VIP + 1;
							FlatIdent_624DF = 5;
						end
					end
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
return VMCall("LOL!503Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q7470476574034C3Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F55492D496E746572666163652F437573746F6D4649656C642F6D61696E2F5261794669656C642E6C7561030C3Q0043726561746557696E646F7703043Q004E616D6503123Q0043612Q745374617220436C6F736574207631030C3Q004C6F6164696E675469746C6503163Q00412Q6C204578656375746F722053752Q706F72746564030F3Q004C6F6164696E675375627469746C65034Q0003133Q00436F6E66696775726174696F6E536176696E6703073Q00456E61626C65642Q01030A3Q00466F6C6465724E616D65030F3Q0043612Q7453746172436F6E6669677303083Q0046696C654E616D65030C3Q00436C6F736574436F6E66696703093Q004B657953797374656D0100030A3Q004765745365727669636503073Q00506C6179657273030A3Q0052756E5365727669636503103Q0055736572496E7075745365727669636503113Q005265706C69636174656453746F7261676503083Q004C69676874696E67030F3Q00546578744368617453657276696365030B3Q004C6F63616C506C61796572028Q00026Q004940026Q002040025Q008051C0026Q00594003093Q0048656172746265617403073Q00436F2Q6E65637403093Q0043726561746554616203083Q004D6F76656D656E74030C3Q00437265617465546F2Q676C65030B3Q0053702Q656420422Q6F7374030C3Q0043752Q72656E7456616C756503043Q00466C6167030C3Q0053702Q65645F546F2Q676C6503083Q0043612Q6C6261636B030C3Q00437265617465536C69646572030B3Q0053702Q656420506F77657203053Q0052616E6765026Q002E4003093Q00496E6372656D656E74026Q00F03F030B3Q0053702Q65645F506F776572030D3Q0043726561746553656374696F6E03143Q00436C6F736574204A756D702053652Q74696E677303123Q00456E61626C6520436C6F736574204A756D70030B3Q004A756D705F546F2Q676C65030B3Q004A756D7020486569676874026Q003440030A3Q004A756D705F56616C7565030D3Q00496E66696E697465204A756D70030E3Q00496E664A756D705F546F2Q676C6503083Q00466C79204D6F6465030A3Q00466C795F546F2Q676C65030C3Q00436F6D626174205574696C7303173Q00536D2Q6F74682056656C6F6369747920284E6F2D4B4229030B3Q004E6F4B425F546F2Q676C6503113Q004B6E6F636B6261636B2054616B656E202503083Q004B425F56616C756503073Q0056697375616C7303073Q00426F7820455350030A3Q004553505F546F2Q676C65030C3Q00456E656D696573204F6E6C79030E3Q00456E656D6965735F546F2Q676C6503083Q0053652Q74696E6773030C3Q0043726561746542752Q746F6E03093Q0046505320422Q6F737403073Q00446973636F726403183Q00436F707920446973636F726420496E76697465204C696E6B030B3Q00506C61796572412Q646564030E3Q00506C6179657252656D6F76696E67030E3Q00436861726163746572412Q64656403113Q004C6F6164436F6E66696775726174696F6E00FC3Q00123E3Q00013Q00122Q000100023Q00202Q00010001000300122Q000300046Q000100039Q0000026Q0001000200202Q00013Q00054Q00033Q000500302Q0003000600070030480003000800090030400003000A000B4Q00043Q000300302Q0004000D000E00302Q0004000F001000302Q00040011001200102Q0003000C000400302Q0003001300144Q00010003000200122Q000200023Q00202Q000200020015001214000400166Q00020004000200122Q000300023Q00202Q00030003001500122Q000500176Q00030005000200122Q000400023Q00202Q00040004001500122Q000600186Q00040006000200121F000500023Q002045000500050015001214000700196Q00050007000200122Q000600023Q00202Q00060006001500122Q0008001A6Q00060008000200122Q000700023Q00202Q00070007001500122Q0009001B6Q00070009000200204B00080002001C2Q000800095Q00122Q000A001D6Q000B8Q000C5Q00122Q000D001E6Q000E5Q00122Q000F001F6Q00105Q00122Q001100206Q00125Q001201001300214Q0004001400014Q000400155Q00065100163Q000100012Q002A3Q00084Q005500175Q00065100180001000100022Q002A3Q00064Q002A7Q00065100190002000100012Q002A3Q00173Q000651001A0003000100062Q002A3Q00084Q002A3Q00194Q002A3Q00144Q002A3Q00154Q002A3Q00164Q002A3Q00173Q000651001B0004000100022Q002A3Q00024Q002A3Q001A3Q00204B001C00030022002045001C001C0023000651001E00050001000D2Q002A3Q00084Q002A3Q00124Q002A3Q00134Q002A3Q000E4Q002A3Q000F4Q002A3Q000B4Q002A3Q00044Q002A3Q000C4Q002A3Q000D4Q002A3Q00094Q002A3Q000A4Q002A3Q00174Q002A3Q00194Q001C001C001E000100202Q001C0001002400122Q001E00256Q001C001E000200202Q001D001C00264Q001F3Q000400302Q001F0006002700302Q001F0028001400302Q001F0029002A00065100200006000100012Q002A3Q00093Q00105A001F002B00204Q001D001F000100202Q001D001C002C4Q001F3Q000600302Q001F0006002D4Q002000023Q00122Q0021001D3Q00122Q0022002F6Q002000020001001059001F002E0020003048001F00300031003048001F0028001D003048001F0029003200065100200007000100012Q002A3Q000A3Q001056001F002B00204Q001D001F000100202Q001D001C003300122Q001F00346Q001D001F000100202Q001D001C00264Q001F3Q000400302Q001F0006003500302Q001F0028001400302Q001F0029003600065100200008000100012Q002A3Q000E3Q00105A001F002B00204Q001D001F000100202Q001D001C002C4Q001F3Q000600302Q001F000600374Q002000023Q00122Q002100313Q00122Q002200386Q002000020001001059001F002E0020003048001F00300031003048001F0028001F003048001F0029003900065100200009000100012Q002A3Q000F3Q00100D001F002B00204Q001D001F000100202Q001D001C00264Q001F3Q000400302Q001F0006003A00302Q001F0028001400302Q001F0029003B0006510020000A000100012Q002A3Q000B3Q00100D001F002B00204Q001D001F000100202Q001D001C00264Q001F3Q000400302Q001F0006003C00302Q001F0028001400302Q001F0029003D0006510020000B000100012Q002A3Q000C3Q001039001F002B00204Q001D001F000100202Q001D0001002400122Q001F003E6Q001D001F000200202Q001E001D00264Q00203Q000400302Q00200006003F0030480020002800140030480020002900400006510021000C000100012Q002A3Q00123Q00105A0020002B00214Q001E0020000100202Q001E001D002C4Q00203Q000600302Q0020000600414Q002100023Q00122Q0022001D3Q00122Q002300216Q0021000200010010590020002E00210030480020003000310030480020002800210030480020002900420006510021000D000100012Q002A3Q00133Q0010390020002B00214Q001E0020000100202Q001E0001002400122Q002000436Q001E0020000200202Q001F001E00264Q00213Q000400302Q00210006004400304800210028000E0030480021002900450006510022000E000100022Q002A3Q00144Q002A3Q001B3Q00100D0021002B00224Q001F0021000100202Q001F001E00264Q00213Q000400302Q00210006004600302Q00210028001400302Q0021002900470006510022000F000100022Q002A3Q00154Q002A3Q001B3Q0010390021002B00224Q001F0021000100202Q001F0001002400122Q002100486Q001F0021000200202Q0020001F00494Q00223Q000200302Q00220006004A00065100230010000100012Q002A3Q00183Q0010390022002B00234Q00200022000100202Q00200001002400122Q0022004B6Q00200022000200202Q0021002000494Q00233Q000200302Q00230006004C00065100240011000100012Q002A7Q00104C0023002B00244Q0021002300014Q0021001B6Q00210001000100202Q00210002004D00202Q0021002100234Q0023001A6Q00210023000100202Q00210002004E00202Q0021002100232Q002A002300194Q005400210023000100204B00210008004F00204500210021002300065100230012000100012Q002A3Q001B4Q005400210023000100204500213Q00502Q002C0021000200012Q00063Q00013Q00133Q00083Q0003093Q00506C61796572477569030E3Q0046696E6446697273744368696C6403103Q004D61737465724553505F466F6C64657203083Q00496E7374616E63652Q033Q006E657703063Q00466F6C64657203043Q004E616D6503063Q00506172656E7400124Q001E7Q00206Q000100206Q000200122Q000200038Q0002000200064Q0010000100010004293Q0010000100121F000100043Q00204700010001000500122Q000200066Q0001000200026Q00013Q00304Q000700034Q00015Q00202Q00010001000100104Q000800012Q00283Q00024Q00063Q00017Q00183Q00030D3Q00476C6F62616C536861646F7773010003063Q00466F67456E64023Q00C088C30042030A3Q004272696768746E652Q73026Q00E03F03093Q00436C6F636B54696D65026Q002840030E3Q004F7574642Q6F72416D6269656E7403063Q00436F6C6F723303073Q0066726F6D524742026Q00594003073Q00416D6269656E7403053Q00706169727303043Q0067616D65030E3Q0047657444657363656E64616E747303053Q007063612Q6C03063Q004E6F7469667903053Q005469746C65030B3Q00506572666F726D616E636503073Q00436F6E74656E74031F3Q00436F6C6F7273204C6F636B65642E205465787475726573204B692Q6C65642E03083Q004475726174696F6E026Q000840002D4Q00167Q00304Q000100029Q0000304Q000300049Q0000304Q000500069Q0000304Q000700089Q0000122Q0001000A3Q00202Q00010001000B00122Q0002000C3Q00122Q0003000C3Q00122Q0004000C6Q00010004000200104Q000900019Q0000122Q0001000A3Q00202Q00010001000B00122Q0002000C3Q00122Q0003000C3Q00122Q0004000C6Q00010004000200104Q000D000100124Q000E3Q00122Q0001000F3Q00202Q0001000100104Q000100029Q00000200044Q0023000100121F000500113Q00065100063Q000100012Q002A3Q00044Q002C0005000200012Q003500035Q0006303Q001E000100020004293Q001E00012Q00383Q00013Q0020235Q00124Q00023Q000300302Q00020013001400302Q00020015001600302Q0002001700186Q000200016Q00013Q00013Q00163Q002Q033Q0049734103053Q00446563616C03073Q0054657874757265030C3Q005472616E73706172656E6379026Q00F03F03083Q00426173655061727403083Q004D65736850617274030B3Q005265666C656374616E6365028Q00030A3Q0043617374536861646F77010003083Q004D6174657269616C03043Q00456E756D03073Q00506C6173746963030D3Q00536D2Q6F7468506C6173746963030B3Q005370656369616C4D65736803043Q004D65736803093Q00546578747572654964034Q00030F3Q005061727469636C65456D692Q74657203053Q00547261696C03073Q00456E61626C656400514Q00417Q00206Q000100122Q000200028Q0002000200064Q000C000100010004293Q000C00012Q00387Q0020455Q0001001201000200034Q005B3Q0002000200064D3Q000F00013Q0004293Q000F00012Q00387Q0030483Q000400050004293Q005000012Q00387Q0020455Q0001001201000200064Q005B3Q0002000200064Q001B000100010004293Q001B00012Q00387Q0020455Q0001001201000200074Q005B3Q0002000200064D3Q003300013Q0004293Q003300012Q00387Q0030573Q000800099Q0000304Q000A000B9Q0000206Q000C00122Q0001000D3Q00202Q00010001000C00202Q00010001000E00064Q0050000100010004293Q005000012Q00387Q00203F5Q000C00122Q0001000D3Q00202Q00010001000C00202Q00010001000F00064Q0050000100010004293Q005000012Q00387Q0012330001000D3Q00202Q00010001000C00202Q00010001000E00104Q000C000100044Q005000012Q00387Q0020455Q0001001201000200104Q005B3Q0002000200064Q003F000100010004293Q003F00012Q00387Q0020455Q0001001201000200114Q005B3Q0002000200064D3Q004200013Q0004293Q004200012Q00387Q0030483Q001200130004293Q005000012Q00387Q0020455Q0001001201000200144Q005B3Q0002000200064Q004E000100010004293Q004E00012Q00387Q0020455Q0001001201000200154Q005B3Q0002000200064D3Q005000013Q0004293Q005000012Q00387Q0030483Q0016000B2Q00063Q00017Q00043Q002Q033Q00626F7803073Q0044657374726F7903093Q0062692Q6C626F61726400011B4Q003800016Q0032000100013Q00064D0001001A00013Q0004293Q001A00012Q003800016Q0032000100013Q00204B00010001000100064D0001000E00013Q0004293Q000E00012Q003800016Q0032000100013Q00204B0001000100010020450001000100022Q002C0001000200012Q003800016Q0032000100013Q00204B00010001000300064D0001001800013Q0004293Q001800012Q003800016Q0032000100013Q00204B0001000100030020450001000100022Q002C0001000200012Q003800015Q00203D00013Q00042Q00063Q00017Q00043Q00030E3Q00436861726163746572412Q64656403073Q00436F2Q6E65637403183Q0047657450726F70657274794368616E6765645369676E616C03043Q005465616D01194Q003800015Q00060B3Q0004000100010004293Q000400012Q00063Q00013Q00065100013Q000100072Q00383Q00014Q002A8Q00383Q00024Q00388Q00383Q00034Q00383Q00044Q00383Q00053Q00204300023Q000100202Q0002000200024Q000400016Q00020004000100202Q00023Q000300122Q000400046Q00020004000200202Q0002000200024Q000400016Q0002000400014Q000200016Q0002000100016Q00013Q00013Q00313Q0003093Q00436861726163746572030E3Q00436861726163746572412Q64656403043Q0057616974030C3Q0057616974466F724368696C6403103Q0048756D616E6F6964522Q6F7450617274026Q00144003043Q005465616D0003083Q00496E7374616E63652Q033Q006E6577030C3Q0053656C656374696F6E426F7803043Q004E616D6503063Q00455350426F7803073Q0041646F726E2Q6503063Q00436F6C6F723303073Q0066726F6D524742028Q00025Q00E06F40030D3Q004C696E65546869636B6E652Q73029A5Q99A93F03133Q00537572666163655472616E73706172656E6379026Q66EE3F03063Q00506172656E74030C3Q0042692Q6C626F61726447756903043Q0053697A6503053Q005544696D32026Q005940026Q004940030B3Q00416C776179734F6E546F702Q01030B3Q0053747564734F2Q6673657403073Q00566563746F7233026Q000C40030E3Q0046696E6446697273744368696C6403043Q004865616403093Q00546578744C6162656C026Q00F03F03163Q004261636B67726F756E645472616E73706172656E6379030A3Q0054657874436F6C6F723303043Q00466F6E7403043Q00456E756D030A3Q00476F7468616D426F6C6403083Q005465787453697A65026Q00284003163Q00546578745374726F6B655472616E73706172656E6379026Q00E03F2Q033Q00626F7803093Q0062692Q6C626F61726403053Q006C6162656C007F4Q00589Q00000100018Q000200016Q00023Q00064Q0007000100010004293Q000700012Q00063Q00014Q00383Q00013Q00204B5Q000100064Q000F000100010004293Q000F00012Q00383Q00013Q00204B5Q00020020455Q00032Q001B3Q0002000200204500013Q0004001201000300053Q001201000400064Q005B00010004000200062Q00010016000100010004293Q001600012Q00063Q00014Q0038000200013Q00204B00020002000700264400020020000100080004293Q002000012Q0038000200013Q00204B0002000200072Q0038000300033Q00204B00030003000700060F00020021000100030004293Q002100012Q000C00026Q0004000200014Q0038000300043Q00064D0003002800013Q0004293Q0028000100064D0002002800013Q0004293Q002800012Q00063Q00013Q00121F000300093Q00203600030003000A00122Q0004000B6Q00030002000200302Q0003000C000D00102Q0003000E3Q00062Q0002003800013Q0004293Q0038000100121F0004000F3Q00203700040004001000122Q000500113Q00122Q000600123Q00122Q000700116Q00040007000200062Q0004003E000100010004293Q003E000100121F0004000F3Q00201500040004001000122Q000500123Q00122Q000600113Q00122Q000700116Q0004000700020010590003000F000400300900030013001400302Q0003001500164Q000400056Q00040001000200102Q00030017000400122Q000400093Q00202Q00040004000A00122Q000500186Q000600056Q000600016Q00043Q000200122Q0005001A3Q00202Q00050005000A00122Q000600113Q00122Q0007001B3Q00122Q000800113Q00122Q0009001C6Q00050009000200102Q00040019000500302Q0004001D001E00122Q000500203Q00202Q00050005000A00122Q000600113Q00122Q000700213Q00122Q000800116Q00050008000200102Q0004001F000500202Q00053Q002200122Q000700236Q00050007000200062Q00050060000100010004293Q006000012Q002A000500013Q0010590004000E000500121D000500093Q00202Q00050005000A00122Q000600246Q000700046Q00050007000200122Q0006001A3Q00202Q00060006000A00122Q000700253Q00122Q000800113Q00122Q000900253Q00122Q000A00116Q0006000A000200102Q00050019000600302Q00050026002500202Q00060003000F00102Q00050027000600122Q000600293Q00202Q00060006002800202Q00060006002A00102Q00050028000600302Q0005002B002C00302Q0005002D002E4Q000600066Q000700016Q00083Q000300102Q0008002F000300102Q00080030000400102Q0008003100054Q0006000700086Q00017Q00023Q0003053Q007061697273030A3Q00476574506C6179657273000C3Q00123C3Q00016Q00015Q00202Q0001000100024Q000100029Q00000200044Q000900012Q0038000500014Q002A000600044Q002C0005000200010006303Q0006000100020004293Q000600012Q00063Q00017Q00243Q0003093Q00436861726163746572030E3Q0046696E6446697273744368696C6403103Q0048756D616E6F6964522Q6F745061727403083Q0048756D616E6F6964030D3Q004D6F7665446972656374696F6E03093Q004D61676E6974756465028Q0003163Q00412Q73656D626C794C696E65617256656C6F63697479027Q0040026Q00594003073Q00566563746F72332Q033Q006E657703013Q005803013Q005903013Q005A030A3Q004A756D70486569676874029A5Q99D93F03093Q0049734B6579446F776E03043Q00456E756D03073Q004B6579436F646503053Q005370616365030B3Q004368616E6765537461746503113Q0048756D616E6F696453746174655479706503073Q004A756D70696E6703093Q004C656674536869667403063Q00434672616D65027B14AE47E17A843F03053Q00706169727303083Q00506F736974696F6E03053Q006C6162656C03043Q005465787403043Q004E616D6503023Q00205B03043Q006D61746803053Q00666C2Q6F7203013Q005D00934Q00387Q00204B5Q000100064D3Q000900013Q0004293Q0009000100204500013Q0002001201000300034Q005B00010003000200062Q0001000A000100010004293Q000A00012Q00063Q00013Q00204B00013Q000300204B00023Q00042Q0038000300013Q00064D0003002200013Q0004293Q0022000100204B00030002000500204B00030003000600263100030022000100070004293Q0022000100204B00030001000800204B000400030006000E2500090022000100040004293Q002200012Q0038000400023Q00204A00040004000A00122Q0005000B3Q00202Q00050005000C00202Q00060003000D4Q00060006000400202Q00070003000E00202Q00080003000F4Q0008000800044Q00050008000200102Q0001000800052Q0038000300033Q00064D0003002800013Q0004293Q002800012Q0038000300043Q00202B0003000300110010590002001000032Q0038000300053Q00064D0003003800013Q0004293Q003800012Q0038000300063Q00204F00030003001200122Q000500133Q00202Q00050005001400202Q0005000500154Q00030005000200062Q0003003800013Q0004293Q0038000100204500030002001600121F000500133Q00204B00050005001700204B0005000500182Q00540003000500012Q0038000300073Q00064D0003006100013Q0004293Q006100012Q0038000300063Q00204F00030003001200122Q000500133Q00202Q00050005001400202Q0005000500154Q00030005000200062Q0003004600013Q0004293Q004600012Q0038000300083Q00062Q00030047000100010004293Q00470001001201000300074Q0038000400063Q00204F00040004001200122Q000600133Q00202Q00060006001400202Q0006000600194Q00040006000200062Q0004005300013Q0004293Q005300012Q0038000400084Q0010000400043Q00062Q00040054000100010004293Q00540001001201000400074Q00110003000300040020190004000200054Q000500086Q00040004000500122Q0005000B3Q00202Q00050005000C00122Q000600076Q000700033Q00122Q000800076Q0005000800024Q00040004000500102Q00010008000400044Q006F00012Q0038000300093Q00064D0003006F00013Q0004293Q006F000100204B00030002000500204B000300030006000E250007006F000100030004293Q006F000100204B00030001001A002Q200004000200054Q0005000A6Q00040004000500202Q00040004001B4Q00030003000400102Q0001001A000300121F0003001C4Q00380004000B4Q00130003000200050004293Q0090000100204B00080006000100064D0008008D00013Q0004293Q008D000100204B000800060001002045000800080002001201000A00034Q005B0008000A000200064D0008008D00013Q0004293Q008D000100204B00080001001D00202400090006000100202Q00090009000300202Q00090009001D4Q00080008000900202Q00080008000600202Q00090007001E00202Q000A0006002000122Q000B00213Q00122Q000C00223Q00202Q000C000C00234Q000D00086Q000C0002000200122Q000D00246Q000A000A000D00102Q0009001F000A00044Q009000012Q00380008000C4Q002A000900064Q002C00080002000100063000030073000100020004293Q007300012Q00063Q00019Q002Q0001024Q00188Q00063Q00019Q002Q0001024Q00188Q00063Q00019Q002Q0001024Q00188Q00063Q00019Q002Q0001024Q00188Q00063Q00019Q002Q0001024Q00188Q00063Q00019Q002Q0001024Q00188Q00063Q00019Q002Q0001024Q00188Q00063Q00019Q002Q0001024Q00188Q00063Q00019Q002Q0001044Q00188Q0038000100014Q002D0001000100012Q00063Q00019Q002Q0001044Q00188Q0038000100014Q002D0001000100012Q00063Q00019Q003Q00034Q00388Q002D3Q000100012Q00063Q00017Q00093Q00030C3Q00736574636C6970626F617264031B3Q00682Q7470733A2Q2F646973636F72642E2Q672F337657325650376B03063Q004E6F7469667903053Q005469746C6503083Q0053752Q63652Q732103073Q00436F6E74656E7403283Q00446973636F726420696E76697465206C696E6B20636F7069656420746F20636C6970626F6172642E03083Q004475726174696F6E026Q000840000B3Q0012273Q00013Q00122Q000100028Q000200019Q0000206Q00034Q00023Q000300302Q00020004000500302Q00020006000700302Q0002000800096Q000200016Q00017Q00033Q0003043Q007461736B03043Q0077616974026Q00F03F00073Q0012523Q00013Q00206Q000200122Q000100038Q000200019Q006Q000100016Q00017Q00", GetFEnv(), ...);