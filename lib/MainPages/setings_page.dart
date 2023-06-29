import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:mobile_app/main.dart';

class SetingsPage extends StatefulWidget {
  const SetingsPage({super.key});
  @override
  State<SetingsPage> createState() => SetingsState();
}

class SetingsState extends State<SetingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
                child: Text(
                  'Account',
                  style: TextStyle(
                      fontSize: 20, fontFamily: "SignikaNegative-Regular"),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              //   child: Container(
              //     width: double.infinity,
              //     height: 60,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       boxShadow: const [
              //         BoxShadow(
              //           blurRadius: 5,
              //           color: Color(0x3416202A),
              //           offset: Offset(0, 2),
              //         )
              //       ],
              //       borderRadius: BorderRadius.circular(12),
              //       shape: BoxShape.rectangle,
              //     ),
              //     child: const Padding(
              //       padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
              //       child: Row(
              //         mainAxisSize: MainAxisSize.max,
              //         children: [
              //           Icon(
              //             Icons.notifications_none,
              //             size: 24,
              //           ),
              //           Padding(
              //             padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              //             child: Text(
              //               'Notification Settings',
              //             ),
              //           ),
              //           Expanded(
              //             child: Align(
              //               alignment: AlignmentDirectional(0.9, 0),
              //               child: Icon(
              //                 Icons.arrow_forward_ios,
              //                 size: 18,
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              //   child: Container(
              //     width: double.infinity,
              //     height: 60,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       boxShadow: const [
              //         BoxShadow(
              //           blurRadius: 5,
              //           color: Color(0x3416202A),
              //           offset: Offset(0, 2),
              //         )
              //       ],
              //       borderRadius: BorderRadius.circular(12),
              //       shape: BoxShape.rectangle,
              //     ),
              //     child: const Padding(
              //       padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
              //       child: Row(
              //         mainAxisSize: MainAxisSize.max,
              //         children: [
              //           Icon(
              //             Icons.account_circle_outlined,
              //             size: 24,
              //           ),
              //           Padding(
              //             padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              //             child: Text(
              //               'Edit Profile',
              //             ),
              //           ),
              //           Expanded(
              //             child: Align(
              //               alignment: AlignmentDirectional(0.9, 0),
              //               child: Icon(
              //                 Icons.arrow_forward_ios,
              //                 size: 18,
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x3416202A),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      Isconnected();
                    },
                    child: const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.output_sharp,
                            size: 24,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              'Log out',
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.9, 0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // const Padding(
              //   padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
              //   child: Text(
              //     'General',
              //     // style: FlutterFlowTheme.of(context).titleSmall,
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              //   child: Container(
              //     width: double.infinity,
              //     height: 60,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       boxShadow: const [
              //         BoxShadow(
              //           blurRadius: 5,
              //           color: Color(0x3416202A),
              //           offset: Offset(0, 2),
              //         )
              //       ],
              //       borderRadius: BorderRadius.circular(12),
              //       shape: BoxShape.rectangle,
              //     ),
              //     child: const Padding(
              //       padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
              //       child: Row(
              //         mainAxisSize: MainAxisSize.max,
              //         children: [
              //           Icon(
              //             Icons.privacy_tip_rounded,
              //             color: Colors.black,
              //             size: 24,
              //           ),
              //           Padding(
              //             padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              //             child: Text(
              //               'Terms of Service',
              //               //style: FlutterFlowTheme.of(context).bodySmall,
              //             ),
              //           ),
              //           Expanded(
              //             child: Align(
              //               alignment: AlignmentDirectional(0.9, 0),
              //               child: Icon(
              //                 Icons.arrow_forward_ios,
              //                 color: Colors.black,
              //                 size: 18,
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              //   child: Container(
              //     width: double.infinity,
              //     height: 60,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       boxShadow: const [
              //         BoxShadow(
              //           blurRadius: 5,
              //           color: Color(0x3416202A),
              //           offset: Offset(0, 2),
              //         )
              //       ],
              //       borderRadius: BorderRadius.circular(12),
              //       shape: BoxShape.rectangle,
              //     ),
              //     child: const Padding(
              //       padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
              //       child: Row(
              //         mainAxisSize: MainAxisSize.max,
              //         children: [
              //           Icon(
              //             Icons.ios_share,
              //             color: Colors.black,
              //             size: 24,
              //           ),
              //           Padding(
              //             padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              //             child: Text(
              //               'Invite Friends',
              //               //style: FlutterFlowTheme.of(context).bodySmall,
              //             ),
              //           ),
              //           Expanded(
              //             child: Align(
              //               alignment: AlignmentDirectional(0.9, 0),
              //               child: Icon(
              //                 Icons.arrow_forward_ios,
              //                 color: Colors.black,
              //                 size: 18,
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          )),
    );
  }
}
