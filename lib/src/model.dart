class MessageCardKeyModel {
  int count;
  bool me;
  String? userId;

  MessageCardKeyModel([
    this.count = 0,
    this.me = false,
    this.userId,
  ]);
}

// 主项目用的字符串，这个枚举暂时没用
enum MessageCardTemplate {
  /// 基础版本完全由用户定义外观，不存在尺寸约束和默认边框
  base,

  /// 高级版本的脚手架，提供对话框的标题
  scaffold,

  /// 组队卡片，具有一定的交互能力
  team,
}
