import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:cryptoxchange/src/generated/grpc.dart';
import 'package:grpc/grpc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoXchange',

      home: MyHomePage(title: 'CryptoXchange'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ClientChannel _channel;
  PriceServiceClient _client;
  final String _serverIp = "192.168.0.93";
  List<QuoteReply> _data = [];
  List<Color> _colors = [];
  HashMap<String, int> _dataIndex = HashMap();

  void quoteStream(QuoteRequest request) async {
    print("Sending request...");
    try {
      await for (var quote in _client.streamPrice(request)) {
        setState(() {
          if (!_dataIndex.containsKey(quote.info.pair)) {
            _data.add(quote);
            _colors.add(Colors.green);
            _dataIndex[quote.info.pair] = _data.length - 1;
          } else {
            var i = _dataIndex[quote.info.pair];
            if (quote.bidPrice > _data[i].bidPrice)
              _colors[i] = Colors.green;
            else if (quote.bidPrice < _data[i].bidPrice)
              _colors[i] = Colors.redAccent;
            else
              _colors[i] = Colors.grey;
            _data[i] = quote;
          }
        });
      }
    } catch (e) {
      print("GRPC error: $e");
    }
  }

  @override
  void initState() {
    _channel = ClientChannel(
        _serverIp,
        port: 7672,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        )
    );
    _client = PriceServiceClient(_channel);

    super.initState();
  }

  _refresh() {
    QuoteRequest req = QuoteRequest(pair: "btc-usdt", exchange: "coinbasepro");
    quoteStream(req);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
        actions: [
          TextButton(onPressed: _refresh, child: Icon(Icons.refresh, color: Colors.white,))
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 8.0, left: 10, right: 10),
        color: Colors.black,
        child: Column(
          children: [
            listHeader(),
            SizedBox(height: 8,),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, i) {
                  return buildItem(context, i);
                },
              ),
            ),
          ]
        ),
      )
    );
  }

  Widget listHeader() {
    var _textStyle = TextStyle(color: Colors.white, fontSize: 20);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: Text("Pair", style: _textStyle,), flex: 1,),
        Expanded(child: Text("Best Bid", style: _textStyle,), flex: 1,)
      ],
    );
  }

  Widget buildItem(BuildContext context, int i) {
    if (_data == null || i >= _data.length) {
      return Text("");
    }
    String pair = _data[i].info.pair.replaceFirst("-", "/").toUpperCase();
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: Text(pair, style: TextStyle(color: Colors.white),), flex: 1,),
          Expanded(child: Text(_data[i].bidPrice.toString(), style: TextStyle(color: _colors[i], fontSize: 17),), flex: 1,),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _channel.shutdown();
    super.dispose();
  }
}
