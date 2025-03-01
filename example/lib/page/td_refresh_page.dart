/*
 * Created by haozhicao@tencent.com on 6/28/22.
 * td_loading_page.dart
 * 
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:tdesign_flutter/td_export.dart';

import '../../base/example_widget.dart';
import '../annotation/demo.dart';

class TdPullDownRefreshPage extends StatefulWidget {
  const TdPullDownRefreshPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TdPullDownRefreshPageState();
}

class _TdPullDownRefreshPageState extends State<TdPullDownRefreshPage> {
  var itemCount = 10;

  var dataList = List.generate(10, (index) => '首页$index');

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
        title: tdTitle(),
        exampleCodeGroup: 'refresh',
        children: [
        ExampleModule(title: '默认',
        children: [
          ExampleItem(
              ignoreCode: true,
              builder: (_) => SizedBox(
            height: 1000,
            child: Stack(
              children: [
                CodeWrapper(builder: _buildRefresh)
              ],
            ),
          ))
        ])]);
  }

  @Demo(group: 'refresh')
  Widget _buildRefresh(BuildContext context) {
    return EasyRefresh(
      // 下拉样式
      header: TDRefreshHeader(),
      child: ListView.builder(
        itemBuilder: (context, index) => Text('${dataList[index]}'),
        itemCount: dataList.length,
      ),
      // 下拉刷新回调
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 2), () {
          dataList.addAll(
              List.generate(10, (index) => ' 下拉添加的第$index个item'));
          setState(() {});
        });
      },
    );
  }
}
