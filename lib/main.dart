import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(PrivacyPolicyApp());
}

class PrivacyPolicyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'سياسة الخصوصية - أذكارك',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.tajawalTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.grey[800],
                displayColor: Colors.blue[800],
              ),
        ),
      ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: PrivacyPolicyPage(),
      ),
    );
  }
}

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'سياسة الخصوصية - أذكارك',
          style: GoogleFonts.tajawal(
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 4,
        shadowColor: Colors.blue.withOpacity(0.3),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUpdateDate(),
            SizedBox(height: 24),
            _buildPolicySection(
              title: '١. مقدمة',
              content:
                  'تطبيق "أذكارك" يحترم خصوصيتك. توضح هذه السياسة كيف نتعامل مع بياناتك عند استخدام التطبيق.',
              icon: Icons.assignment_outlined,
            ),
            _buildSectionDivider(),
            _buildPolicySection(
              title: '٢. البيانات التي نجمعها',
              content: '''
- لا نجمّع بيانات شخصية
- نخزن إعدادات التطبيق (مثل الوضع الليلي) محليًا على جهازك
- نجمع إحصائيات مجهولة الهوية عن الأخطاء وأداء التطبيق''',
              icon: Icons.data_usage_outlined,
            ),
            _buildSectionDivider(),
            _buildPolicySection(
              title: '٣. الإعلانات',
              content:
                  'نستخدم خدمة Google AdMob لعرض الإعلانات. قد تجمع Google بيانات الاستخدام وفقًا لسياستهم الخاصة.',
              icon: Icons.ads_click_outlined,
            ),
            _buildSectionDivider(),
            _buildPolicySection(
              title: '٤. الأذونات',
              content:
                  'التطبيق لا يطلب أي أذونات خاصة (كاميرا، موقع، إلخ) ويحتاج فقط إلى الإنترنت لعرض الإعلانات.',
              icon: Icons.security_outlined,
            ),
            _buildSectionDivider(),
            _buildPolicySection(
              title: '٥. أمان البيانات',
              content:
                  'نستخدم معايير أمان الصناعة لكن لا يمكن ضمان الحماية الكاملة للبيانات المرسلة عبر الإنترنت.',
              icon: Icons.lock_outline,
            ),
            _buildSectionDivider(),
            _buildPolicySection(
              title: '٦. خصوصية الأطفال',
              content:
                  'التطبيق لا يستهدف الأطفال تحت 13 سنة ولا نجمع بياناتهم عمدًا.',
              icon: Icons.child_care_outlined,
            ),
            _buildSectionDivider(),
            _buildPolicySection(
              title: '٧. حقوقك',
              content: '''
- إيقاف جمع البيانات: يمكنك إلغاء تثبيت التطبيق
- طلب حذف البيانات: تواصل معنا عبر البريد أدناه''',
              icon: Icons.gavel_outlined,
            ),
            _buildSectionDivider(),
            _buildPolicySection(
              title: '٨. التحديثات',
              content:
                  'قد نحدّث هذه السياسة. استمرار استخدام التطبيق يعني الموافقة على التحديثات.',
              icon: Icons.update_outlined,
            ),
            _buildSectionDivider(),
            _buildContactSection(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildUpdateDate() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.update, size: 18, color: Colors.blue[800]),
          SizedBox(width: 8),
          Text('آخر تحديث: 1 فبراير 2025',
              style: GoogleFonts.tajawal(
                fontSize: 14,
                color: Colors.blue[800],
                fontWeight: FontWeight.w500,
              )),
        ],
      ),
    );
  }

  Widget _buildPolicySection(
      {required String title,
      required String content,
      required IconData icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 24, color: Colors.blue[800]),
            SizedBox(width: 8),
            Text(title,
                style: GoogleFonts.tajawal(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.blue[800],
                )),
          ],
        ),
        SizedBox(height: 12),
        Text(content,
            style: GoogleFonts.tajawal(
              fontSize: 15,
              height: 1.6,
            )),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildSectionDivider() {
    return Divider(
      height: 20,
      thickness: 1,
      color: Colors.grey[300],
      indent: 32,
      endIndent: 32,
    );
  }

  Widget _buildContactSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('٩. التواصل معنا',
            style: GoogleFonts.tajawal(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.blue[800],
            )),
        SizedBox(height: 12),
        GestureDetector(
          onTap: () {/* Handle email tap */},
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'الدعم الفني: ',
                  style: GoogleFonts.tajawal(
                    color: Colors.grey[800],
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: 'athkarak1@gmail.com',
                  style: GoogleFonts.tajawal(
                    color: Colors.blue[600],
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
