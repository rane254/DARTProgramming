void main() {
  final chrome = Browser();
  final history = History();

  // 1
  chrome.currentAddress = "google.com";
  history.push(chrome.createState());

  // 2
  chrome.currentAddress = "facebook.com";
  history.push(chrome.createState());

  // 3
  chrome.currentAddress = "youtube.com";
  chrome.restoreState(history.pop());

  print(chrome.currentAddress);
}

// originator
class Browser {
  String? currentAddress;

  // getter
  createState() {
    return BrowserState(currentAddress!);
  }

  // setter
  restoreState(BrowserState state) {
    currentAddress = state.content;
  }
}

// memento
class BrowserState {
  final String content;

  BrowserState(
    this.content,
  );
}

// caretaker
class History {
  List<BrowserState> history = <BrowserState>[];

  void push(BrowserState state) {
    history.add(state);
  }

  BrowserState pop() {
    return history.removeAt(history.length - 1);
  }
}
