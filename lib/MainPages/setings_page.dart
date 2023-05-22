import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
              // Padding(
              //   padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
              //   child: Container(
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       // color: FlutterFlowTheme.of(context).secondaryBackground,
              //       boxShadow: [
              //         BoxShadow(
              //           blurRadius: 0,
              //           //color: FlutterFlowTheme.of(context).tertiary,
              //           offset: Offset(0, 1),
              //         )
              //       ],
              //     ),
              //     child: Padding(
              //       padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
              //       child: Row(
              //         mainAxisSize: MainAxisSize.max,
              //         children: [
              //           Card(
              //             clipBehavior: Clip.antiAliasWithSaveLayer,
              //             //  color: FlutterFlowTheme.of(context).secondary,
              //             elevation: 2,
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(50),
              //             ),
              //             child: Padding(
              //               padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
              //               child: ClipRRect(
              //                 borderRadius: BorderRadius.circular(40),
              //                 // child: CachedNetworkImage(
              //                 //   imageUrl:
              //                 //       'https://images.unsplash.com/photo-1531123414780-f74242c2b052?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
              //                 //   width: 60,
              //                 //   height: 60,
              //                 //   fit: BoxFit.cover,
              //                 // ),
              //               ),
              //             ),
              //           ),
              //           Padding(
              //             padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
              //             child: Column(
              //               mainAxisSize: MainAxisSize.max,
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   'Joy Augustin',
              //                   //style: FlutterFlowTheme.of(context).headlineSmall,
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              //                   child: Text(
              //                     'joy@augustin.com',
              //                     //style: FlutterFlowTheme.of(context).bodySmall,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
                child: Text(
                  'Account',
                  // style: FlutterFlowTheme.of(context).titleSmall,
                ),
              ),
              // Padding(
              //   padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              //   child: Container(
              //     width: double.infinity,
              //     height: 60,
              //     decoration: BoxDecoration(
              //       //   color: FlutterFlowTheme.of(context).secondaryBackground,
              //       boxShadow: [
              //         BoxShadow(
              //           blurRadius: 5,
              //           color: Color(0x3416202A),
              //           offset: Offset(0, 2),
              //         )
              //       ],
              //       borderRadius: BorderRadius.circular(12),
              //       shape: BoxShape.rectangle,
              //     ),
              //     child: Padding(
              //       padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
              //       child: Row(
              //         mainAxisSize: MainAxisSize.max,
              //         children: [
              //           Icon(
              //             Icons.attach_money_rounded,
              //             //  color: FlutterFlowTheme.of(context).secondaryText,
              //             size: 24,
              //           ),
              //           Padding(
              //             padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              //             child: Text(
              //               'Payment Options',
              //               //    style: FlutterFlowTheme.of(context).bodySmall,
              //             ),
              //           ),
              //           Expanded(
              //             child: Align(
              //               alignment: AlignmentDirectional(0.9, 0),
              //               child: Icon(
              //                 Icons.arrow_forward_ios,
              //                 //   color: FlutterFlowTheme.of(context).secondaryText,
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
              //   padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              //   child: Container(
              //     width: double.infinity,
              //     height: 60,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       boxShadow: [
              //         BoxShadow(
              //           blurRadius: 5,
              //           color: Color(0x3416202A),
              //           offset: Offset(0, 2),
              //         )
              //       ],
              //       borderRadius: BorderRadius.circular(12),
              //       shape: BoxShape.rectangle,
              //     ),
              //     child: Padding(
              //       padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
              //       child: Row(
              //         mainAxisSize: MainAxisSize.max,
              //         children: [
              //           Icon(
              //             Icons.language_outlined,
              //             //  color: FlutterFlowTheme.of(context).secondaryText,
              //             size: 24,
              //           ),
              //           Padding(
              //             padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              //             child: Text(
              //               'Country',
              //               // style: FlutterFlowTheme.of(context).bodySmall,
              //             ),
              //           ),
              //           Expanded(
              //             child: Align(
              //               alignment: AlignmentDirectional(0.9, 0),
              //               child: Icon(
              //                 Icons.arrow_forward_ios,
              //                 //  color: FlutterFlowTheme.of(context).secondaryText,
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
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x3416202A),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.notifications_none,
                          // color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'Notification Settings',
                            // style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              //  color: FlutterFlowTheme.of(context).secondaryText,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x3416202A),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          // color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'Edit Profile',
                            // style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              //color: FlutterFlowTheme.of(context).secondaryText,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
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
                    },
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.output_sharp,
                            // color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              'Log out',
                              // style: FlutterFlowTheme.of(context).bodySmall,
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.9, 0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                //  color: FlutterFlowTheme.of(context).secondaryText,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
                child: Text(
                  'General',
                  // style: FlutterFlowTheme.of(context).titleSmall,
                ),
              ),
              // Padding(
              //   padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              //   child: Container(
              //     width: double.infinity,
              //     height: 60,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       boxShadow: [
              //         BoxShadow(
              //           blurRadius: 5,
              //           color: Color(0x3416202A),
              //           offset: Offset(0, 2),
              //         )
              //       ],
              //       borderRadius: BorderRadius.circular(12),
              //       shape: BoxShape.rectangle,
              //     ),
              //     child: Padding(
              //       padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
              //       child: Row(
              //         mainAxisSize: MainAxisSize.max,
              //         children: [
              //           Icon(
              //             Icons.help_outline_rounded,
              //             // color: FlutterFlowTheme.of(context).secondaryText,
              //             size: 24,
              //           ),
              //           Padding(
              //             padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              //             child: Text(
              //               'Support',
              //               // style: FlutterFlowTheme.of(context).bodySmall,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x3416202A),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.privacy_tip_rounded,
                          color: Colors.black,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'Terms of Service',
                            //style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x3416202A),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.ios_share,
                          color: Colors.black,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'Invite Friends',
                            //style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
