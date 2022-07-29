import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../register/register_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 910,
      delay: 500,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Stack(
                children: [
                  Text(
                    'Page Title',
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 22,
                        ),
                  ),
                  Text(
                    'Welcome,',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Poppins',
                          fontSize: 50,
                        ),
                  ).animated([animationsMap['textOnPageLoadAnimation']!]),
                ],
              ),
              actions: [],
              centerTitle: false,
              elevation: 0,
            ),
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(-1, -1),
                      child: Container(
                        width: double.infinity,
                        height: 750,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.rectangle,
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0.7),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterWidget(),
                                    ),
                                  );
                                },
                                text: 'REGISTER',
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 50,
                                  color: Colors.black,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, -0.6),
                              child: Image.asset(
                                'assets/images/welcome.jpg',
                                width: 300,
                                height: 300,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.45),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Login',
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 50,
                                  color: Colors.white,
                                  textStyle:
                                      FlutterFlowTheme.of(context).subtitle1,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.45),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Login',
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 50,
                                  color: Colors.white,
                                  textStyle:
                                      FlutterFlowTheme.of(context).subtitle1,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.45),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginWidget(),
                                    ),
                                  );
                                },
                                text: 'LOGIN',
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 50,
                                  color: Colors.white,
                                  textStyle:
                                      FlutterFlowTheme.of(context).subtitle1,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
