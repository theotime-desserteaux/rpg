if Debug and Debug.beginFile then Debug.beginFile("MDTable") end
--[[-----------------------------------------------------------------------------------------------------------------------------------------------
*   --------------------------------------
*   | Multidimensional Table (Lite) v1.1 |
*   --------------------------------------
*
*    by Eikonium
*        --> https://www.hiveworkshop.com/threads/multidimensional-table.339498/
*
*        - Multidimensional tables, short MDTables, are tables that allow for direct access of multiple table dimensions without the need of manual subtable creation.
*        - MDTables also provide the option of choosing a default value to be returned upon accessing non-existing keys. That default value is allowed to depend on the keys accessed.
*        - The Lite-version doesn't enable a multidimensional pairs loop, but it offers much shorter code.
*
*    MDTable.create(numDimensions: integer) --> table
*        - Standard use:
*          Creates an MDTable with the specified number of dimensions. E.g. "T = MDTable.create(3)" will allow you to read from and write to T[key1][key2][key3] for any arbitrary set of 3 keys.
*          You can think of it like a tree with constant depth that only allows you to write into the "leaf level" (using exactly the number of keys as dimensions specified).
*        - In the example with 3 dimensions, you should only write to T[key1][key2][key3], never to T[key1] or T[key1][key2].
*          Reading is fine on every level, but you are probably not interested in the subtable stored in T[key1].
*          You can however manually save further tables in T[key1][key2][key3] (at leaf level).
*        - MDTables will automatically create subtables on demand, i.e. upon reading from or writing to a combination of keys.
*    MDTable.create(numDimensions: integer, defaultValue: function|any) --> table
*        - Default Values:
*          Reading a nil value from the MDTable will instead return the specified defaultValue (which is nil, if not specified).
*        - Function-valued default value:
*          If defaultValue is a function, that function's return value will be returned. The function will be called with all requested keys as its arguments.
*          E.g. if T is an MDTable with 3 dimensions and defaultValue is a function, accessing an empty slot T[key1][key2][key3] will return defaultValue(key1,key2,key3).
*    MDTable.create(numDimensions: integer, defaultValue: function|any, persistDefault_yn: boolean) --> table
*        - Persisting default values:
*          When MDTables return the default values, they normally don't save it permanently.
*          You can make them do so by setting persistDefault_yn to true.
*        - Example: Let T be an MDTable with 3 dimensions, defaultValue = function(...) return {...} end, persistDefault_yn = true.
*          Now reading a nil-value at T[key1][key2][key3] will permanently save {key1,key2,key3} in that table slot.
*
*   -------------------------
*   | nestedSet & nestedGet |
*   -------------------------
*
*   table.nestedSet(t, ..., value)
*        - Saves the specified value at the specified keys within t. Creates subtables, if necessary.
*        - E.g. nestedSet(t, 1, 2, 3) is equivalent to t[1][2] = 3 and will save a subtable in t[1], if not already present.
*   table.nestedGet(t, ...)
*        - Returns the value that t has stored at the specified keys. Returns nil, if any of subtable is nil.
*        - E.g. nestedGet(t, 1, 2) returns t[1][2] (or nil, if t[1] is nil).
-------------------------------------------------------------------------------------------------------------------------------------------------]]

do
    ---------------
    --| MDTable |--
    ---------------

    MDTable = {}
    MDTable.__name = 'MDTable'

    local unpack = table.unpack

    --Prepare table holding meta-information about every Multidimensional table and its subtables.
    --Every subtable has a depth - the base table starts at 1 and the value increases for 1 for each nested level.
    --The number of dimensions is referred to as maxDepth. It equals the depth at which the actual values are stored (instead of further subtables).
    --The user can choose a default value to be returned, when no value has been saved in a certain combination of keys before. Returning a default value will persist it in the table, if specified in the create-method.
    local metaInfo = {} ---@type table<table,{depth:integer,maxDepth:integer,default:any,persistDefault:boolean,oldIndex:function,oldPairs:function}>

    --The index-metamethod creates new subtables or returns the default-value, depending on which nested level the read access has been conducted.
    --As the same metatable is applied to all subtables, the parameter t can be any subtable on any level.
    MDTable.__index = function(t, key)
        local tMetaInfo = metaInfo[t]
        if tMetaInfo.depth == tMetaInfo.maxDepth then
            local default = tMetaInfo.default
            tMetaInfo[tMetaInfo.depth] = key --add current accessed key to the table to add it to the unpacking. This will be overwritten on every call, but doesn't matter.
            local defaultVal = (type(default) == 'function' and default(unpack(tMetaInfo, 1, tMetaInfo.depth))) or default --return default-value for full level read access
            if tMetaInfo.persistDefault then
                t[key] = defaultVal
            end
            return defaultVal
        else
            local newDim = {} --create new subtable on read access below full level
            t[key] = newDim --save subtable to requested key
            --prepare meta info for newDim
            local newMetaInfo = {
                default = tMetaInfo.default         --pass default value from t to its new subtable
                ,   depth = tMetaInfo.depth + 1     --depth of subtable is 1 higher than depth of t (obviously)
                ,   maxDepth = tMetaInfo.maxDepth   --pass max depth from t to subtable
                ,   persistDefault = tMetaInfo.persistDefault --pass information on whether to persist default value to subtable
            }
            --copy path of t to subtable
            for i = 1, tMetaInfo.depth - 1 do
                newMetaInfo[i] = tMetaInfo[i]
            end
            newMetaInfo[tMetaInfo.depth] = key --last key of the "path" to the new subtable
            metaInfo[newDim] = newMetaInfo
            setmetatable(newDim, MDTable) --apply same metatable to subtable
            return newDim --return new subtable, so the read access can continue as normal (and probably involves further nested calls of __index)
        end
    end

    --Allows to call the Multidimensional table directly via T(key1,key2,...,key_n)
    MDTable.__call = function(t, ...)
        return table.nestedGet(t, ...)
    end

    ---Create a new Multidimensional Table.
    ---@param numDimensions integer number of dimensions accessible on the new Multidim Table
    ---@param defaultValue? function|any default: nil. Default value to return instead of nil-values. If function: calls that function and uses its return value.
    ---@param persistDefault_yn? boolean default: false. Set to true to persist any returned default value in the table after read access.
    ---@return table
    MDTable.create = function(numDimensions, defaultValue, persistDefault_yn)
        local newTable = {}
        setmetatable(newTable, MDTable)
        metaInfo[newTable] = {
            depth = 1 --the base table has depth 1
            ,   maxDepth = numDimensions --maxdepth is the dimension chosen by the user
            ,   default = defaultValue --default value for max level access
            ,   persistDefault = persistDefault_yn --tells, if the default value shall be saved upon read access
        }
        return newTable
    end

    -------------------------------
    --| NestedSet and NestedGet |--
    -------------------------------

    local nestedGet
    nestedGet = function(t, k, ...)
        if k == nil and select('#', ...) == 0 then
            return t
        elseif t[k] == nil then
            return nil
        end
        return nestedGet(t[k], ...)
    end
    ---Multidimensional get-operation.
    ---
    ---Returns the value from the specified table at the specified set of keys.
    ---E.g. table.nestedGet(t, 1,2,3) will return t[1][2][3].
    ---If any of the subtables in the path are nil, table.nestedGet will return nil.
    ---Using this function frees you from checking every dimension for whether it contains a subtable or not.
    ---@param t table
    ---@param ... any keys to access from t
    ---@return any value
    table.nestedGet = function(t, ...) return nestedGet(t,...) end

    local nestedSet
    nestedSet = function(t, k, v, ...)
        if select('#', ...) == 0 then
            t[k] = v
        else
            if t[k] == nil then --don't use or-operator. Might overwrite false-key.
                t[k] = {}
            end
            nestedSet(t[k], v, ...)
        end
    end
    ---Multidimensional set-operation.
    ---
    ---Sets the table at the specified set of keys to the specified value. Creates subtables, where necessary.
    ---E.g. table.nestedSet(t, 1, 2, 3, 42) will set t[1][2][3] = 42 and create subtables at t[1] and t[1][2], if not already present.
    ---Using this function frees you from checking for existing subtables.
    ---@param t table
    ---@param ... any keys to access and value to set. The last parameter will be taken as the value.
    table.nestedSet = function(t, ...) nestedSet(t, ...) end
end
if Debug and Debug.endFile then Debug.endFile() end