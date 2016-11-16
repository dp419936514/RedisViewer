// 基于准备好的dom，初始化echarts实例

myChart = echarts.init(document.getElementById('match_queue_history'));
var data = [];
var oneMin = 60  * 1000;
var value = Math.random();
var now = new Date();

for (var i = 0; i < 20; i++) {
    data.push(randomData());
}

option = {
    title: {
        text :'匹配队列人数统计',
        subtext:"",
         x: 'center',
        align: 'right'
    },
    legend: {
        data:['在线人数'],
        x: 'left',
        left: 20
    },
    grid: {
        top: 50,
        bottom: 100
    },
    tooltip: {
        trigger: 'axis',
        // formatter: '{a} {c}' ,
        axisPointer: {
            animation: false
        }
    },
    xAxis: {
        type: 'time',
        splitLine: {
            show: true
        },
        axisLabel: {
            formatter: // 使用函数模板，函数参数分别为刻度数值（类目），刻度的索引
                function (value) {
                    // 格式化成月/日，只在第一个刻度显示年份
                    var date = new Date(value);
                    var time = [date.getHours(), date.getMinutes(), date.getSeconds()];
                    var texts = [(date.getMonth() + 1), date.getDate()];
                    return texts.join('/') + " " + time.join(":");
                }
        }
    },
    yAxis: {
        type: 'value',
        boundaryGap: [0, '100%'],
        splitLine: {
            show: true
        }
    }
    ,
    series: [{
        name: '在线人数',
        type: 'line',
        showSymbol: true,
        hoverAnimation: true,
        data: data
    }],
    dataZoom: [
        {   // 这个dataZoom组件，默认控制x轴。
            type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
            start: 50,      // 左边在 20% 的位置。
            end: 100         // 右边在 100% 的位置。
        },
        {
            type: 'inside'
        }
    ]
}
;

var app = {};
app.timeTicket = setInterval(function () {
    if (data.length >= 1000) {
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
    console.log(params);
});


function randomData() {
    now = new Date(+now + oneMin);
    value = value + Math.random() * 21;
    var nowStr = [[now.getMonth(),now.getDate()].join("-"),[now.getHours(),now.getMinutes(),now.getSeconds()].join(':')].join(" ");

    return {
        // dd  HH:MM:SS
        value:[nowStr,
            Math.round(value)
]    }
}



