
part of '../transaction_import.dart';


class TransactionChart extends StatefulWidget {
  const TransactionChart({super.key});

  @override
  State<TransactionChart> createState() => _TransactionChartState();
}

class _TransactionChartState extends State<TransactionChart> {

  BarChartGroupData makeGroupData(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.tertiary,
            ],
            transform: const GradientRotation(pi / 40),
          ),
          width: 20,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 5,
            color: Colors.grey.shade300
          )
        )
      ]
    );
  }
  List<BarChartGroupData> showingGroups() => List.generate(8, (i) {
    switch (i) {
      case 0:
        return makeGroupData(0, 2);
      case 1:
        return makeGroupData(1, 3);
      case 2:
        return makeGroupData(2, 2);
      case 3:
        return makeGroupData(3, 4.5);
      case 4:
        return makeGroupData(4, 3.8);
      case 5:
        return makeGroupData(5, 1.5);
      case 6:
        return makeGroupData(6, 4);
      case 7:
        return makeGroupData(7, 3.8);
      default:
        return throw Error();
    }
  });
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: true),
          
          ),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: true),),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,
          reservedSize: 38.h,
          getTitlesWidget: getTiles,
          ),),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,
          reservedSize: 38.h,
          getTitlesWidget: leftTitles
          ),
          
          
          ),
          
        ),
        borderData: FlBorderData(
          show: false,

        ),
        gridData: const FlGridData(
          show: false
        ),

        barGroups: showingGroups()
      )
    );
  }
  Widget getTiles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14.sp,
    );
    Widget text;

    switch (value.toInt()) {
      case 0:
        text =  Text('01', style: style);
        break;
      case 1:
        text =  Text('02', style: style);
        break;
      case 2:
        text =  Text('03', style: style);
        break;
      case 3:
        text =  Text('04', style: style);
        break;
      case 4:
        text =  Text('05', style: style);
        break;
      case 5:
        text =  Text('06', style: style);
        break;
      case 6:
        text =  Text('07', style: style);
        break;
      case 7:
        text =  Text('08', style: style);
        break;
      default:
        text =  Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }

   Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    if (value == 0) {
      text = '1K';
    } else if (value == 2) {
      text = '2K';
    } else if (value == 3) {
      text = '3K';
    } else if (value == 4) {
      text = '4K';
    } else if (value == 5) {
      text = '5K';
    } else {
      return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style: style),
    );
  }
}