-- automatically generated by the FlatBuffers compiler, do not modify

-- namespace: fb

local flatbuffers = require('flatbuffers')

local cskilldataTB = {} -- the module
local cskilldataTB_mt = {} -- the class metatable

function cskilldataTB.New()
    local o = {}
    setmetatable(o, {__index = cskilldataTB_mt})
    return o
end
function cskilldataTB.GetRootAscskilldataTB(buf, offset)
    local n = flatbuffers.N.UOffsetT:Unpack(buf, offset)
    local o = cskilldataTB.New()
    o:Init(buf, n + offset)
    return o
end
function cskilldataTB_mt:Init(buf, pos)
    self.view = flatbuffers.view.New(buf, pos)
end
function cskilldataTB_mt:Cskilldatatrs(j)
    local o = self.view:Offset(4)
    if o ~= 0 then
        local x = self.view:Vector(o)
        x = x + ((j-1) * 4)
        x = self.view:Indirect(x)
        local obj = require('fb.cskilldataTR').New()
        obj:Init(self.view.bytes, x)
        return obj
    end
end
function cskilldataTB_mt:CskilldatatrsLength()
    local o = self.view:Offset(4)
    if o ~= 0 then
        return self.view:VectorLen(o)
    end
    return 0
end
function cskilldataTB.Start(builder) builder:StartObject(1) end
function cskilldataTB.AddCskilldatatrs(builder, cskilldatatrs) builder:PrependUOffsetTRelativeSlot(0, cskilldatatrs, 0) end
function cskilldataTB.StartCskilldatatrsVector(builder, numElems) return builder:StartVector(4, numElems, 4) end
function cskilldataTB.End(builder) return builder:EndObject() end

return cskilldataTB -- return the module