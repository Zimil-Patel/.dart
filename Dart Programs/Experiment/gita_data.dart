List data = [
  {
    'index': 'भगवद गीता',
    'chapter': [
      {
        'id': 'पहला अध्याय',
        'name': 'अर्जुन विषाद योग',
        'shlok':
            'धृतराष्ट्र उवाचः\nधर्मक्षेत्रे कुरुक्षेत्रे समवेता युयुत्सवः ।\nमामकाः पाण्डवाश्चैव किमकुर्वत संजय ॥१-१॥',
        'meaning':
            'धृतराष्ट्र बोले -\nहे संजय! धर्मभूमि कुरुक्षेत्र में युद्ध की इच्छा से एकत्र हुए मेरे तथा पाण्डु के पुत्रों ने क्या किया ? ।',
      },
    ]
  },
  {
    'index': 'गीता सार',
  },
  {
    'index': 'गीता महात्मय',
  },
  {
    'index': 'गीता आरती',
  }
];

void main() {
  List.generate(data[0]['chapter'].length, (index) => printChapterData(index));
}

printChapterData(int index) {
  print('id: ${data[index]['chapter'][index]['id']}');
  print('name: ${data[index]['chapter'][index]['name']}');
  print('shlok: ${data[index]['chapter'][index]['shlok']}');
  print('meaning: ${data[index]['chapter'][index]['meaning']}');
}

printIndexData(int index) {
  print('index: ${data[index]['index']}');
}
