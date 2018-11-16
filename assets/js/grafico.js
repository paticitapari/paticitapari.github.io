---
---
/*
	graficas y tablas con google chrt
*/

(
      google.charts.load('current', {'packages':['bar']});
	  google.charts.load("current", {packages:["corechart"]});
	   google.charts.load('current', {'packages':['table']});
	   
      google.charts.setOnLoadCallback(drawChart);
      google.charts.setOnLoadCallback(drawChart1);
	  google.charts.setOnLoadCallback(drawTable);
	  
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Año', 'Hombre', 'Mujer', 'Mixto3'],
          ['2014', 1000, 400, 200],
          ['2015', 1170, 460, 250],
          ['2016', 660, 1120, 300],
          ['2017', 1030, 540, 350]
        ]);

        var options = {
          chart: {
            title: 'Calidad 11',
            subtitle: 'cita',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('barras'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
	  
	  
	  function drawChart1() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      2],
          ['Commute',  2],
          ['Watch TV', 2],
          ['Sleep',    7]
        ]);

        var options = {
          title: 'torta2',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
	  
	  
	  function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('number', 'Salary');
        data.addColumn('boolean', 'Full Time Employee');
        data.addRows([
          ['Mike',  {v: 10000, f: '$10,000'}, true],
          ['Jim',   {v:8000,   f: '$8,000'},  false],
          ['Alice', {v: 12500, f: '$12,500'}, true],
          ['Bob',   {v: 7000,  f: '$7,000'},  true]
        ]);

        var table = new google.visualization.Table(document.getElementById('table_div'));

        table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
      }
	  
)