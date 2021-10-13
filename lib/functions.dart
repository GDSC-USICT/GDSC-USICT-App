Map months = {
  1: 'Jan',
  2: 'Feb',
  3: 'Mar',
  4: 'Apr',
  5: 'May',
  6: 'Jun',
  7: 'Jul',
  8: 'Aug',
  9: 'Sep',
  10: 'Oct',
  11: 'Nov',
  12: 'Dec'
};
List st = [1, 21, 31];
List nd = [2, 22];
List rd = [3, 23];

String ordinal(DateTime selectedDate) {
  if (st.contains(selectedDate.day)) {
    return 'st';
  } else if (nd.contains(selectedDate.day)) {
    return 'nd';
  } else if (rd.contains(selectedDate.day)) {
    return 'rd';
  } else {
    return 'th';
  }
}

String formattedDate(DateTime selectedDate) {
  return selectedDate.day.toString() +
      ordinal(selectedDate) +
      ' ' +
      months[selectedDate.month] +
      ' ' +
      selectedDate.year.toString();
}
