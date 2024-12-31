Future<void> onRefresh() async {
  if (isFetching) {
    return;
  }
  isFetching = true;
  await Future.delayed(Duration(milliseconds: 300));
  //refresh
  items = List.generate(20, (index) => index);
  setState(() {
    
  });
  isFetching = false;

}