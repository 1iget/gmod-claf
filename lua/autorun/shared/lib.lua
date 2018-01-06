-- Some utility functions.

--Free ID for automatic hook name
local CLAF_hookAutoNameID = 1

-- Always creates an error 'not implemented'.
function TODO()
    error('not implemented')
end

--Throws an error if the passed argument is nil.
function ErrorIfNil(any)
    if any == nil then error('nil is not allowed here') end
end

--Quick hook creation function.
function Hook(event, callback, ID)
    if ID == nil then
        ID = 'CLAFHook_' .. CLAF_hookAutoNameID
        CLAF_hookAutoNameID = CLAF_hookAutoNameID + 1
    end

    hook.Add(event, ID, callback)
end
