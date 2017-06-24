"use strict";

function onChangeTaskName($input) {
    $input.hide();
    var $span = $input.siblings("span.task-name");
    if ($input.val()) {
        $span.text($input.val());
    }
    $span.show();
}

function onEditTaskName($span) {
    $span.hide()
        .siblings("input.task-prop")
        .val($span.text())
        .show()
        .focus();
    
    $span.hide()
    .siblings("input.task-name")
    .val($span.text())
    .show();
}

function addTaskElement(taskName, taskProp) {
    var $task = $("#task-template .task").clone();
    $("span.task-name", $task).text("[" + taskProp + "] = " + "[" + taskName + "]");
    //show list
    $("#task-list").append($task);
    // add text to hidden text
    $("input.task-prop", $task).val(taskProp);
    $("input.task-name", $task).val(taskName);
    // change name
    //alert("new name of JMSPropKey_" + taskProp);
    $("input.task-prop", $task).attr('name', 'JMSPropKey_' + taskProp);
    //alert("new name of JMSPropValue_" + taskProp);
    $("input.task-name", $task).attr('name', 'JMSPropValue_' + taskProp);
    
    /*
    
    $("button.delete", $task).click(function () {
        $task.remove();
    });
    $("button.move-up", $task).click(function () {
        $task.insertBefore($task.prev());
    });
    $("button.move-dw", $task).click(function () {
        $task.insertAfter($task.next());
    });
    
    $("span.task-name", $task).click(function () {
        onEditTaskName($(this));
    });
    
    $("input.task-prop", $task).change(function () {
        onChangeTaskName($(this));
    }).blur(function () {
        $(this).hide().siblings("span.task-prop").show();
    });
    
    $("input.task-name", $task).change(function () {
        onChangeTaskName($(this));
    }).blur(function () {
        $(this).hide().siblings("span.task-name").show();
    });
    
    */
}

function addTask() {
    var taskName = $("#new-task-name").val();
    var taskProp = $("#new-task-property").val();
    if ( (taskName == null || taskName == "") && (taskProp == null || taskProp== "") ) {
    	alert ("You must specify some value, try again!!");
    } else {
        addTaskElement(taskName, taskProp);
        //reset the text field
        $("#new-task-property").val("").focus();
        $("#new-task-name").val("");
    }
}

function TaskAndHandApp() {
    var version = "-";
    
    function setStatus(message) {
        $("#App>footer").text(message);
    }
    
    this.start = function () {
        $("#new-task-name").keypress(function (e) {
            if (e.which == 13) { //Enter key
                addTask();
                return false;
            }
        });
        $("#new-task-property").val("").focus();
        
        $("#app header").append(version);
        setStatus("ready");
    };
}

$(function () {
    window.app = new TaskAndHandApp();
    window.app.start();
});