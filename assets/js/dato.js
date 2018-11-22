$(document).ready(function() {
      // Load the Visualization API and the piechart package.
      google.load('visualization', 
                    '1', 
                { callback: function(){ drawChart(); },
                packages:["corechart","line"] });

      // Set a callback to run when the Google Visualization API is loaded

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {
        try{
                
               	var data = new google.visualization.DataTable();
				data.addColumn('number', 'Dia');
				data.addColumn('number', 'Ventas Esperadas');
				data.addColumn('number', 'Ventas Reales');


                data.addRow([1, 50, 40 ]);
                data.addRow([2, 60, 55 ]);         
                data.addRow([3, 45, 34 ]);
                data.addRow([4, 60, 79] );
                
                var options = {
                  chart: {
                    title: 'Ventas de Marzo' //Especificamos el titulo de la gráfica
                  },
                  width: 600,  // largo de la gráfica
                  height: 250, // Ancho de la gráfica
                  axes: {     
                    x: {
                      0: {side: 'top'}
                    }
                  }
             	};

            var chart = new google.charts.Line(document.getElementById('chart33'));

            chart.draw(data, options);
        }catch(err){}
    }
});
