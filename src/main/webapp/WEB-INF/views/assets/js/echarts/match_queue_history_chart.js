/**
 * Created by Derek.P.Dai on 2016/11/15.
 */
// 基于准备好的dom，初始化echarts实例

myChart = echarts.init(document.getElementById('match_queue_history'), 'macarons');
var data = [];
var oneDay = 24 * 3600 * 1000;
var value = Math.random();
var now = new Date();

for (var i = 0; i < 20; i++) {
    data.push(randomData());
}

option = {
    title: {
        show: false
    },
    grid:{
        bottom:100
    },
    tooltip: {
        trigger: 'axis',
        formatter: function (params) {
            var value = params[0].name;
            var date = new Date(value);
            var time = [date.getHours(),date.getMinutes(),date.getSeconds()];
            var texts = [(date.getMonth() + 1), date.getDate()];
            return "["+texts.join('-') +" "+time.join(":") + "]   "+params[0].value[1];
        },
        axisPointer: {
            animation: false
        }
    },
    xAxis: {
        name: '记录时间',
        type: 'time',
        splitLine: {
            show: false
        },
        axisLabel: {
            formatter: // 使用函数模板，函数参数分别为刻度数值（类目），刻度的索引
                function (value) {
                    // 格式化成月/日，只在第一个刻度显示年份
                    var date = new Date(value);
                    var time = [date.getHours(),date.getMinutes(),date.getSeconds()];
                    var texts = [(date.getMonth() + 1), date.getDate()];
                    return texts.join('/') +" "+time.join(":") ;
                }
        }
    },
    yAxis: {
        name: '队列中人数',
        type: 'value',
        boundaryGap: [0, '100%'],
        splitLine: {
            show: false
        }
    }
    ,
    series: [{
        name: '模拟数据',
        type: 'line',
        showSymbol: false,
        hoverAnimation: false,
        data: data
    }],
    dataZoom: [
        {   // 这个dataZoom组件，默认控制x轴。
            type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
            start: 0,      // 左边在 20% 的位置。
            end: 100         // 右边在 100% 的位置。
        },
        {
            type:'inside'
        }
    ]
}
;

var app = {};
app.timeTicket = setInterval(function () {
    if (data.length >= 20) {
        data.shift();
    }
    data.push(randomData());
    myChart.setOption({
        series: [{
            data: data
        }]
    });
}, 2000);

// 使用刚指定的配置项和数据显示图表。
myChart.setOption(option);

myChart.on('click', function (params) {
    // 控制台打印数据的名称
    console.log(params.name);
});


function randomData() {
    now = new Date(+now + oneDay);
    value = value + Math.random() * 21 - 10;
    return {
        // dd  HH:MM:SS
        name: now.getDay() + " ",
        value: [
            [now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'),
            Math.round(value)
        ]
    }
}



