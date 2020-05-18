taskmodule = {name: "taskmodule"}
############################################################
#region printLogFunctions
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["taskmodule"]?  then console.log "[taskmodule]: " + arg
    return
ostr = (obj) -> JSON.stringify(obj, null, 4)
olog = (obj) -> log "\n" + ostr(obj)
print = (arg) -> console.log(arg)
#endregion

############################################################
tasksToExecute = []

############################################################
taskmodule.initialize = () ->
    log "taskmodule.initialize"
    return

############################################################
#region exposedFunctions
taskmodule.addTasks = (tasks) ->
    tasksToExecute.push(task) for task in tasks
    return

taskmodule.getTask = -> tasksToExecute.shift()

#endregion

module.exports = taskmodule