import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kamusapp/model/Datas.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class PageIndoEng extends StatefulWidget {
  @override
  _PageIndoEngState createState() => _PageIndoEngState();
}

class _PageIndoEngState extends State<PageIndoEng> {

  //Import Model
  List<Datas> _list = [];
  List<Datas> _search = [];
  var loading = false;

  Future<Null> fetchData() async {
    setState(() {
      loading = true;
    });
    _search.clear();
    final response =
    await http.get('http://192.168.1.100/kamus-server/inggris_indo.php');
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        for (Map i in data) {
          _list.add(Datas.formJson(i));
          loading = false;
        }
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  var etSearch = new TextEditingController();

  onSearch(String text) async {
    _search.clear();
    if (text.isEmpty) {
      setState(() {
        //kl searchnya kosong
      });
      return;
    }
    _list.forEach((element) {
      if (element.bhs_indonesia.contains(text)) _search.add(element);
    });
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terjemahan Indonesia ke Inggris'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.cyanAccent,
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: TextField(
                    controller: etSearch,
                    onChanged: onSearch,
                    decoration: InputDecoration(
                        hintText: 'Cari Terjemahan',
                        border: InputBorder.none
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      etSearch.clear();
                      onSearch('');
                    },
                    icon: Icon(Icons.cancel),
                  ),
                ),
              ),
            ),
            loading ?
            Center(
              child: CircularProgressIndicator(),
            )
                : Expanded(
                child: _search.length != null || etSearch.text.isNotEmpty
                    ? ListView.builder(
                    itemCount: _search.length,
                    itemBuilder: (context, i) {
                      final b = _search[i];
                      return Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                                b.bhs_indonesia+' Artinya adalah '
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                                b.bhs_inggris
                              ,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.0
                              ),
                            )
                          ],
                        ),
                      );
                    }
                ):
               _createSearchView() // ini di panggil search nya disni mas
            )
          ],
        ),
      ),
    );
  }

  Widget _createSearchView() {
    return Container(
        decoration: BoxDecoration(border: Border.all(width: 1.0)),
        child: Card(
          child: ListTile(
            leading: Icon(Icons.search),
            title: TextField(
              controller: etSearch,
              onChanged: onSearch,
              decoration: InputDecoration(
                  hintText: 'Masukan Teks',
                  hintStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              onPressed: () {
                etSearch.clear();
                onSearch('');
              },
              icon: Icon(Icons.cancel),
            ),
          ),
        ));
  }
}
