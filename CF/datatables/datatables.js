$(document).ready(function() {
    $('#example').dataTable({
        "createdRow": function(row, data, dataIndex) {
            if (data["column_index"] == "column_value") {
              $(row).css("background-color", "Orange");
              $(row).addClass("warning");
            }
          },
    });
    
} );