class  Days{
  final DateTime D_id;
  final String groundname;
  double D_K = 0;
  double D_bb = 0;
  double D_hbb = 0;
  double D_ip = 0;
  double D_bf = 0;
  double D_tb = 0;
  double D_ts = 0;
  double D_tp = 0;
  double D_h = 0;
  double D_run = 0;
  double D_er = 0;

  Days({
    required this.D_id,
    required this.groundname,
  });
}

class  Pitcher{
  final String id;
  final String name;
  double K = 0;
  double bb = 0;
  double hbb = 0;
  double ip = 0;
  double bf = 0;
  double tb = 0;
  double ts = 0;
  double tp = 0;
  double h = 0;
  double run = 0;
  double er = 0;
  final List<Days> days = [];

  Pitcher({
    required this.id,
    required this.name,
  });
}

// class Butter{
//   final String id;
//   final String name;
//   double K = 0;
//   double bb = 0;
//   double hbb = 0;
//   double ip = 0;
//   double bf = 0;
//   double tb = 0;
//   double ts = 0;
//   double tp = 0;
//   double h = 0;
//   double run = 0;
//   double er = 0;

//   Butter({

//   });
// }