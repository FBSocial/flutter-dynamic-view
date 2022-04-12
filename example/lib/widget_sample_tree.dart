import 'package:flutter/material.dart';
import 'package:flutter_treeview/flutter_treeview.dart';

class NodeSelected extends Notification {
  final String sample;

  const NodeSelected(this.sample);
}

class WidgetSampleTree extends StatefulWidget {
  const WidgetSampleTree({Key? key}) : super(key: key);

  @override
  State<WidgetSampleTree> createState() => _WidgetSampleTreeState();
}

class _WidgetSampleTreeState extends State<WidgetSampleTree> {
  late List<Node> _nodes;
  late TreeViewController _treeViewController;

  @override
  void initState() {
    _nodes = [
      const Node(
        label: '基本组件',
        key: 'BaseWidget',
        expanded: true,
        icon: Icons.folder_open,
        children: [
          Node(
            label: 'Text',
            key: 'text',
            icon: Icons.text_fields,
          ),
          Node(
            label: 'Image',
            key: 'image',
            icon: Icons.image,
          ),
          Node(
            label: 'Button',
            key: 'button',
            icon: Icons.smart_button_outlined,
          ),
          Node(
            label: 'Divider',
            key: 'divider',
            icon: Icons.horizontal_rule,
          ),
          Node(
            label: 'Container',
            key: 'container',
            icon: Icons.list_alt,
          ),
        ],
      ),
      const Node(
          label: '布局组件',
          key: 'LayoutWidget',
          expanded: true,
          icon: Icons.folder_open,
          children: [
            Node(
              label: 'Row',
              key: 'row',
              icon: Icons.view_array,
            ),
            Node(
              label: 'Stack',
              key: 'stack',
              icon: Icons.filter_3,
            ),
            Node(
              label: 'GridView',
              key: 'grid',
              icon: Icons.grid_view,
            ),
          ]),
      const Node(
          label: '高级组件',
          key: 'AdvancedWidget',
          expanded: true,
          icon: Icons.folder_open,
          children: [
            Node(
              label: 'Markdown',
              key: 'markdown',
              icon: Icons.history_edu,
            ),
          ]),
    ];
    _treeViewController = TreeViewController(
      children: _nodes,
      selectedKey: "text",
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TreeView(
      theme: const TreeViewTheme(
        levelPadding: 0,
        iconTheme: IconThemeData(color: Colors.blue, size: 16),
        labelStyle: TextStyle(fontSize: 12),
        parentLabelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
      ),
      controller: _treeViewController,
      onExpansionChanged: (key, expanded) => _expandNode(key, expanded),
      onNodeTap: (key) {
        NodeSelected(key).dispatch(context);
        setState(() {
          _treeViewController = _treeViewController.copyWith(selectedKey: key);
        });
      },
    );
  }

  _expandNode(String key, bool expanded) {
    Node? node = _treeViewController.getNode(key);
    if (node == null) return;
    List<Node> updated = _treeViewController.updateNode(
        key,
        node.copyWith(
          expanded: expanded,
          icon: expanded ? Icons.folder_open : Icons.folder,
        ));

    setState(() {
      _treeViewController = _treeViewController.copyWith(children: updated);
    });
  }
}
