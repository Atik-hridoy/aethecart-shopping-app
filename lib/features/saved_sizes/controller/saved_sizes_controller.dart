import 'package:get/get.dart';

class BrandInfo {
  final String name;
  final String logoUrl;
  final String matchType;
  final String recommendation;
  final String fitNote;
  final bool isTrueToSize;

  const BrandInfo({
    required this.name,
    required this.logoUrl,
    required this.matchType,
    required this.recommendation,
    required this.fitNote,
    this.isTrueToSize = true,
  });
}

class SavedSizesController extends GetxController {
  // Physical stats
  final height = 185;
  final weight = 82;
  final chest = 104;
  final waist = 88;
  final shoulder = 48;
  final inseam = 82;
  final neck = 41;
  final armLength = 64;

  final brands = <BrandInfo>[
    const BrandInfo(
      name: 'Loro Piana',
      logoUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDWGc6888zhfCtDg2JHlxXuMapRrBqOPoar16_zr60WAga-Qc5nRDUHIC0wMi9UX-wU_OOtzuLb_sA9Ub5GKKOP1QHnikZYkqGmiKyXNFFwtbjAVvbNep1NU2Ou4TQ56xYwWZmMHYsbsulqcNa1CDxEjsFp-yyvU6eJ-9QvzW3loWgm7mcysrSU-DiT5ScRDLGOARjwmwtUpd-q2KleMhu2diDtgYFE46eUw6jbclIM-jsPmXSPXbcMhi2R5f4OjoyTFeIjfs61j_Sl',
      matchType: 'Expert Match',
      recommendation: 'Size M',
      fitNote: 'True to size',
    ),
    const BrandInfo(
      name: 'Brunello Cucinelli',
      logoUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDA-ZZXRdRXY4w5_fY5y4Xqf9OdXrztARSJvMqsqOG0nMqLqLrO5nDh-O5tniQ31d22Y82feBLpnxVMqAx68laH-5tum-Ct0Zv91lG1_BzuvuVMDwGL8JDtH7ODRJB0-ULPh_zvpR2921kaz0S328rUh4nxu_kNzsPNDuFo0bLugI2oSX4tZXNe5xdQ3HLr_0SitvZKb3tqB7Kso6ZtDjuQq5YJw_hW-VorPjczg7D2OMBrm-l2UoocIfmGoExq6NOHHeEgFAJhfuRG',
      matchType: 'AI Adjusted',
      recommendation: 'Size 48',
      fitNote: 'Runs small - Size up',
      isTrueToSize: false,
    ),
    const BrandInfo(
      name: 'Zegna',
      logoUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuA9WkEuXQuxG51lZG4TFgmhgA3J_Sd__kDFPXtCy4YegGxhUMTX72GzMUkjIC6sSw_nXCONmNKvpwL3VA0kGJlFIGEoBYzZM11_sXB8vqHb404AD7HVxLpP2iO1p-yKeCBn0HyAwbPQleIuvjxCYaaeuI1xchZfDUqo8cSIjl-oGSz4HtHTgeVeImtl6tPTqAZ5EbUbM4lxWlfUiM6PDXjpkDlF545KzgIj-qtZD0skJdGD0PZuJmTsbYBHvJTxFK-dYAtb_KoGlFrq',
      matchType: 'Expert Match',
      recommendation: 'Size 50',
      fitNote: 'True to size',
    ),
    const BrandInfo(
      name: 'Canali',
      logoUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBXj2zeLueYTN3ZY6_P1L7SVKxc5V3VZgHZ3zcv42975HnnRmqik6o0b4oe5Ol6qgAk9gEv3aXEPHuZw5vCZ4WB1ik898wxsCRZJVjmaBAxlzaH2OQaL0634OgGMW0Cn6g_lQhsNb6k4U-V2_l_aQTlErK091MtD3PdhC_FeHmB718qp9cUstQny1jKcWu0wBPPLQQD9Spc2-3Wjz3b1_OXp8WJRTm9HcrvMAOEvz-Iw8Ue6ZDUknUc0gNVBlN7hpUXFB_keNgHIOcg',
      matchType: 'Verified Fit',
      recommendation: 'Size 40R',
      fitNote: 'Modern Fit Match',
    ),
  ];

  void startScan() {
    Get.snackbar(
      '3D Body Scan',
      'Starting smartphone-based 3D scanning...',
    );
  }
}
