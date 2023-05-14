import 'package:flutter/material.dart';
import 'package:markdown_toolbar/markdown_toolbar.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  late final FocusNode _focusNode;

  @override
  void initState() {
    _controller.addListener(() => setState(() {}));
    _focusNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Markdown Toolbar Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Change the toolbar alignment
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              MarkdownToolbar(
                // If you set useIncludedTextField to true, remove
                // a) the controller and focusNode fields below and
                // b) the TextField outside below widget
                useIncludedTextField: false,
                controller: _controller,
                focusNode: _focusNode,

                // Uncomment some of the options below to observe the changes. This list is not exhaustive

                // collapsable: true,
                // alignCollapseButtonEnd: true,
                // backgroundColor: Colors.lightBlue,
                // dropdownTextColor: Colors.red,
                // iconColor: Colors.white,
                // iconSize: 30,
                // borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                // width: 70,
                // height: 50,
                // spacing: 16.0,
                // runSpacing: 12.0,
                // alignment: WrapAlignment.start,
                // italicCharacter: '_',
                // bulletedListCharacter: '*',
                // horizontalRuleCharacter: '***',
                // hideImage: true,
                // hideCode: true,
                // linkTooltip: 'Add a link',
              ),
              const Divider(),
              TextField(
                controller: _controller,
                focusNode: _focusNode,
                minLines: 5,
                maxLines: null,
                decoration: const InputDecoration(
                  hintText: 'Placeholder text',
                  labelText: 'Label text',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
