import 'package:mobile_doctor_booking/shared/exports.dart';

class LocalData {
  final String docName;
  final String docInfo;
  final String ctitle;
  final String cnote;
  final String docImage;

  const LocalData({
    required this.ctitle,
    required this.cnote,
    required this.docImage,
    required this.docName,
    required this.docInfo,
  });
}

List<LocalData> localItems = [
  const LocalData(
    ctitle: 'Medical Center',
    cnote:
        'Yorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    docImage: Images.doc1,
    docInfo:
        'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.',
    docName: 'Dr.Gee',
  ),
  const LocalData(
    ctitle: 'Medical Center 1',
    cnote:
        'Yorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    docImage: Images.doc2,
    docInfo:
        'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.',
    docName: 'Dr.Pawan',
  ),
  const LocalData(
    ctitle: 'Medical Center 2',
    cnote:
        'Yorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    docImage: Images.doc3,
    docInfo:
        'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.',
    docName: 'Dr.Wanitha',
  ),
  const LocalData(
    ctitle: 'Medical Center 3',
    cnote:
        'Yorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    docImage: Images.doc2,
    docInfo:
        'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.',
    docName: 'Dr.Udara',
  ),
];
