s��        ��   � a�  T   �   9����                               SHDocVw                         Microsoft Internet Controls                                                                              -  -��enum SHDocVwEnum_ShellWindowFindWindowOptions     ) )��enum SHDocVwEnum_ShellWindowTypeConstants     , ,��enum SHDocVwEnum_CommandStateChangeConstants      ��enum SHDocVwEnum_OLECMDEXECOPT      ��enum SHDocVwEnum_OLECMDF      ��enum SHDocVwEnum_OLECMDID      ��enum SHDocVwEnum_tagREADYSTATE     H H��_ShellFavoritesNameSpaceEventsRegOnFavoritesSelectionChange_CallbackType     1 1��DShellWindowsEvntsRegOnWindowRevoked_CallbackType     4 4��DShellWindowsEvntsRegOnWindowRegistered_CallbackType     . .��DWebBrwsrEvntsRegOnPropertyChange_CallbackType     . .��DWebBrwsrEvntsRegOnWindowActivate_CallbackType     , ,��DWebBrwsrEvntsRegOnWindowResize_CallbackType     * *��DWebBrwsrEvntsRegOnWindowMove_CallbackType     $ $��DWebBrwsrEvntsRegOnQuit_CallbackType     . .��DWebBrwsrEvntsRegOnFrameNewWindow_CallbackType     5 5��DWebBrwsrEvntsRegOnFrameNavigateComplete_CallbackType     3 3��DWebBrwsrEvntsRegOnFrameBeforeNavigate_CallbackType     + +��DWebBrwsrEvntsRegOnTitleChange_CallbackType     ) )��DWebBrwsrEvntsRegOnNewWindow_CallbackType     - -��DWebBrwsrEvntsRegOnDownloadBegin_CallbackType     2 2��DWebBrwsrEvntsRegOnCommandStateChange_CallbackType     0
 0��DWebBrwsrEvntsRegOnDownloadComplete_CallbackType     .	 .��DWebBrwsrEvntsRegOnProgressChange_CallbackType     0 0��DWebBrwsrEvntsRegOnStatusTextChange_CallbackType     0 0��DWebBrwsrEvntsRegOnNavigateComplete_CallbackType     . .��DWebBrwsrEvntsRegOnBeforeNavigate_CallbackType     . .��DWebBrwsrEvnts2RegOnOnTheaterMode_CallbackType     - -��DWebBrwsrEvnts2RegOnOnFullScreen_CallbackType     , ,��DWebBrwsrEvnts2RegOnOnStatusBar_CallbackType     * *��DWebBrwsrEvnts2RegOnOnMenuBar_CallbackType     * *��DWebBrwsrEvnts2RegOnOnToolBar_CallbackType     *  *��DWebBrwsrEvnts2RegOnOnVisible_CallbackType     '� '��DWebBrwsrEvnts2RegOnOnQuit_CallbackType     1� 1��DWebBrwsrEvnts2RegOnDocumentComplete_CallbackType     2� 2��DWebBrwsrEvnts2RegOnNavigateComplete2_CallbackType     +� +��DWebBrwsrEvnts2RegOnNewWindow2_CallbackType     0� 0��DWebBrwsrEvnts2RegOnBeforeNavigate2_CallbackType     /� /��DWebBrwsrEvnts2RegOnPropertyChange_CallbackType     ,� ,��DWebBrwsrEvnts2RegOnTitleChange_CallbackType     1� 1��DWebBrwsrEvnts2RegOnDownloadComplete_CallbackType     .� .��DWebBrwsrEvnts2RegOnDownloadBegin_CallbackType     3� 3��DWebBrwsrEvnts2RegOnCommandStateChange_CallbackType     /� /��DWebBrwsrEvnts2RegOnProgressChange_CallbackType     1� 1��DWebBrwsrEvnts2RegOnStatusTextChange_CallbackType     � ��const char *     � ��LCID     	� 	��ERRORINFO  �  � ��HRESULT  � � ��SAFEARRAY *  � 	� 	��LPUNKNOWN     � ��VARIANT  � � ��VBOOL  �  � ��SCODE  � � ��CAObjHandle  � � ��DATE     � ��CURRENCY       Microsoft Internet Controls    ^    This class contains functions you use to register callbacks that the ActiveX server objects call when events occur.  The callback registration functions are grouped into event classes.  The ActiveX server specifies which event classes are supported by each server object.  These relationships are documented in the event class' function panel help.    H    This class contains functions you use to register callbacks that ActiveX server objects call when events occur.  This class contains all of the callback registration functions for the DWebBrowserEvents2 event class.  The DWebBrowserEvents2 event class is supported by the following server object(s): IWebBrowser, IWebBrowser2.    F    This class contains functions you use to register callbacks that ActiveX server objects call when events occur.  This class contains all of the callback registration functions for the DWebBrowserEvents event class.  The DWebBrowserEvents event class is supported by the following server object(s): IWebBrowser, IWebBrowser2.    >    This class contains functions you use to register callbacks that ActiveX server objects call when events occur.  This class contains all of the callback registration functions for the DShellWindowsEvents event class.  The DShellWindowsEvents event class is supported by the following server object(s): IShellWindows.    _    This class contains functions you use to register callbacks that ActiveX server objects call when events occur.  This class contains all of the callback registration functions for the _ShellFavoritesNameSpaceEvents event class.  The _ShellFavoritesNameSpaceEvents event class is supported by the following server object(s): IShellFavoritesNameSpace.         Web Browser interface          Web Browser Interface for IE4.     '    Definition of interface IShellWindows     #    Shell UI Helper Control Interface     $    IShellFavoritesNameSpace Interface     O    Use this function to get the value of a property of any object in the server.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.        An ActiveX object handle.

For ActiveX controls and document objects, this handle is obtained from GetObjHandleFromActiveXCtrl or an ActiveX method or property.

For other ActiveX objects this handle is obtained from New<ObjectTag>, Open<ObjectTag>, Active<ObjectTag>, or an ActiveX method or property.

All of the properties of a particular object are grouped under a single class in the attribute selection dialog box.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    F    This parameter is the id of the property to be accessed.

When you click the control or press <ENTER>, <spacebar>, or <ctrl-down arrow>, a dialog box appears containing a hierarchical list of the properties available.  Properties whose values cannot be obtained are dimmed.  If available, help text is shown for each property.  Select a property by double-clicking it or by selecting it and then pressing <ENTER>.

If the property shown in this ring control has named constants as valid values, you can display a list of values by moving to the Value control and pressing <ENTER>.     �    The type of the property specified in the Property ID parameter.

The type passed in this parameter must correspond to the type of the value passed in the Value parameter.    �    The value of the property.

Pass the address of a variable of the type specified in the Property Type parameter.

If the type of the returned value is char*, CAObjHandle, BSTR, LPDISPATCH, LPUNKNOWN, or an array of any type. You must call the appropriate function to free the value when it is no longer needed.

The functions are the following:

     char *        CA_FreeMemory
     CAObjHandle   CA_DiscardObjHandle
     BSTR          CA_FreeBSTR
     LPDISPATCH    Release (convertedValue->lpVtbl->Release())
     LPUNKNOWN     Release (convertedValue->lpVtbl->Release())
     array         CA_SafeArrayDestroy

NOTE: CAObjHandles returned by this function inherit multithreading support and locale values from the Object Handle parameter.

To use different values for multithreading support and locale you can call CA_SetSupportForMultithreading and CA_SetLocale to specify the desired values.    �
����  �    Status                            � -   �  �    Object Handle                     � - � �  �    Error Info                         -�   �    Property ID                       Q �    �    Property Type                      � �    �    Value                              	                       NULL                0            4  
CAVT_SHORT CAVT_SHORT CAVT_LONG CAVT_LONG CAVT_FLOAT CAVT_FLOAT CAVT_DOUBLE CAVT_DOUBLE CAVT_CY CAVT_CY CAVT_DATE CAVT_DATE CAVT_CSTRING CAVT_CSTRING CAVT_OBJHANDLE CAVT_OBJHANDLE CAVT_ERROR CAVT_ERROR CAVT_BOOL CAVT_BOOL CAVT_VARIANT CAVT_VARIANT CAVT_UNKNOWN CAVT_UNKNOWN CAVT_UCHAR CAVT_UCHAR CAVT_SHORT | CAVT_ARRAY CAVT_SHORT | CAVT_ARRAY CAVT_LONG | CAVT_ARRAY CAVT_LONG | CAVT_ARRAY CAVT_FLOAT | CAVT_ARRAY CAVT_FLOAT | CAVT_ARRAY CAVT_DOUBLE | CAVT_ARRAY CAVT_DOUBLE | CAVT_ARRAY CAVT_CY | CAVT_ARRAY CAVT_CY | CAVT_ARRAY CAVT_DATE | CAVT_ARRAY CAVT_DATE | CAVT_ARRAY CAVT_CSTRING | CAVT_ARRAY CAVT_CSTRING | CAVT_ARRAY CAVT_OBJHANDLE | CAVT_ARRAY CAVT_OBJHANDLE | CAVT_ARRAY CAVT_ERROR | CAVT_ARRAY CAVT_ERROR | CAVT_ARRAY CAVT_BOOL | CAVT_ARRAY CAVT_BOOL | CAVT_ARRAY CAVT_VARIANT | CAVT_ARRAY CAVT_VARIANT | CAVT_ARRAY CAVT_UNKNOWN | CAVT_ARRAY CAVT_UNKNOWN | CAVT_ARRAY CAVT_UCHAR | CAVT_ARRAY CAVT_UCHAR | CAVT_ARRAY CAVT_SHORT | CAVT_BYREFI CAVT_SHORT | CAVT_BYREFI CAVT_LONG | CAVT_BYREFI CAVT_LONG | CAVT_BYREFI CAVT_FLOAT | CAVT_BYREFI CAVT_FLOAT | CAVT_BYREFI CAVT_DOUBLE | CAVT_BYREFI CAVT_DOUBLE | CAVT_BYREFI CAVT_CY | CAVT_BYREFI CAVT_CY | CAVT_BYREFI CAVT_DATE | CAVT_BYREFI CAVT_DATE | CAVT_BYREFI CAVT_CSTRING | CAVT_BYREFI CAVT_CSTRING | CAVT_BYREFI CAVT_OBJHANDLE | CAVT_BYREFI CAVT_OBJHANDLE | CAVT_BYREFI CAVT_ERROR | CAVT_BYREFI CAVT_ERROR | CAVT_BYREFI CAVT_BOOL | CAVT_BYREFI CAVT_BOOL | CAVT_BYREFI CAVT_VARIANT | CAVT_BYREFI CAVT_VARIANT | CAVT_BYREFI CAVT_UNKNOWN | CAVT_BYREFI CAVT_UNKNOWN | CAVT_BYREFI CAVT_UCHAR | CAVT_BYREFI CAVT_UCHAR | CAVT_BYREFI CAVT_SHORT | CAVT_ARRAY | CAVT_BYREFI CAVT_SHORT | CAVT_ARRAY | CAVT_BYREFI CAVT_LONG | CAVT_ARRAY | CAVT_BYREFI CAVT_LONG | CAVT_ARRAY | CAVT_BYREFI CAVT_FLOAT | CAVT_ARRAY | CAVT_BYREFI CAVT_FLOAT | CAVT_ARRAY | CAVT_BYREFI CAVT_DOUBLE | CAVT_ARRAY | CAVT_BYREFI CAVT_DOUBLE | CAVT_ARRAY | CAVT_BYREFI CAVT_CY | CAVT_ARRAY | CAVT_BYREFI CAVT_CY | CAVT_ARRAY | CAVT_BYREFI CAVT_DATE | CAVT_ARRAY | CAVT_BYREFI CAVT_DATE | CAVT_ARRAY | CAVT_BYREFI CAVT_CSTRING | CAVT_ARRAY | CAVT_BYREFI CAVT_CSTRING | CAVT_ARRAY | CAVT_BYREFI CAVT_OBJHANDLE | CAVT_ARRAY | CAVT_BYREFI CAVT_OBJHANDLE | CAVT_ARRAY | CAVT_BYREFI CAVT_ERROR | CAVT_ARRAY | CAVT_BYREFI CAVT_ERROR | CAVT_ARRAY | CAVT_BYREFI CAVT_BOOL | CAVT_ARRAY | CAVT_BYREFI CAVT_BOOL | CAVT_ARRAY | CAVT_BYREFI CAVT_VARIANT | CAVT_ARRAY | CAVT_BYREFI CAVT_VARIANT | CAVT_ARRAY | CAVT_BYREFI CAVT_UNKNOWN | CAVT_ARRAY | CAVT_BYREFI CAVT_UNKNOWN | CAVT_ARRAY | CAVT_BYREFI CAVT_UCHAR | CAVT_ARRAY | CAVT_BYREFI CAVT_UCHAR | CAVT_ARRAY | CAVT_BYREFI    	            O    Use this function to set the value of a property of any object in the server.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.        An ActiveX object handle.

For ActiveX controls and document objects, this handle is obtained from GetObjHandleFromActiveXCtrl or an ActiveX method or property.

For other ActiveX objects this handle is obtained from New<ObjectTag>, Open<ObjectTag>, Active<ObjectTag>, or an ActiveX method or property.

All of the properties of a particular object are grouped under a single class in the attribute selection dialog box.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    3    This parameter is the id of the property to be accessed.

When you click the control or press <ENTER>, <spacebar>, or <ctrl-down arrow>, a dialog box appears containing a hierarchical list of the properties available.  Properties whose values cannot be set are dimmed.  Help text is shown for each property.  Select a property by double-clicking it or by selecting it and then pressing <ENTER>.

If the property shown in this ring control has named constants as valid values, you can display a list of values by moving to the Value control and pressing <ENTER>.    a    The type of the property specified in the Property ID parameter.

The value of this control is automatically set according to the type of the curently selected property.

If a property's type is VARIANT, you can pass any type including VARIANT.  The type passed in this parameter must correspond to the type of the value passed in the Value parameter.     m    The value to which to set the property.

Pass a value of the type specified in the Property Type parameter.    ,�
����  �    Status                            .� -   �  �    Object Handle                     0� - � �  �    Error Info                        2� -�   �    Property ID                       5! �    �    Property Type                     6� � �    �    Value                           ���� � ���                                            	                       NULL                0            4  
CAVT_SHORT CAVT_SHORT CAVT_LONG CAVT_LONG CAVT_FLOAT CAVT_FLOAT CAVT_DOUBLE CAVT_DOUBLE CAVT_CY CAVT_CY CAVT_DATE CAVT_DATE CAVT_CSTRING CAVT_CSTRING CAVT_OBJHANDLE CAVT_OBJHANDLE CAVT_ERROR CAVT_ERROR CAVT_BOOL CAVT_BOOL CAVT_VARIANT CAVT_VARIANT CAVT_UNKNOWN CAVT_UNKNOWN CAVT_UCHAR CAVT_UCHAR CAVT_SHORT | CAVT_ARRAY CAVT_SHORT | CAVT_ARRAY CAVT_LONG | CAVT_ARRAY CAVT_LONG | CAVT_ARRAY CAVT_FLOAT | CAVT_ARRAY CAVT_FLOAT | CAVT_ARRAY CAVT_DOUBLE | CAVT_ARRAY CAVT_DOUBLE | CAVT_ARRAY CAVT_CY | CAVT_ARRAY CAVT_CY | CAVT_ARRAY CAVT_DATE | CAVT_ARRAY CAVT_DATE | CAVT_ARRAY CAVT_CSTRING | CAVT_ARRAY CAVT_CSTRING | CAVT_ARRAY CAVT_OBJHANDLE | CAVT_ARRAY CAVT_OBJHANDLE | CAVT_ARRAY CAVT_ERROR | CAVT_ARRAY CAVT_ERROR | CAVT_ARRAY CAVT_BOOL | CAVT_ARRAY CAVT_BOOL | CAVT_ARRAY CAVT_VARIANT | CAVT_ARRAY CAVT_VARIANT | CAVT_ARRAY CAVT_UNKNOWN | CAVT_ARRAY CAVT_UNKNOWN | CAVT_ARRAY CAVT_UCHAR | CAVT_ARRAY CAVT_UCHAR | CAVT_ARRAY CAVT_SHORT | CAVT_BYREFI CAVT_SHORT | CAVT_BYREFI CAVT_LONG | CAVT_BYREFI CAVT_LONG | CAVT_BYREFI CAVT_FLOAT | CAVT_BYREFI CAVT_FLOAT | CAVT_BYREFI CAVT_DOUBLE | CAVT_BYREFI CAVT_DOUBLE | CAVT_BYREFI CAVT_CY | CAVT_BYREFI CAVT_CY | CAVT_BYREFI CAVT_DATE | CAVT_BYREFI CAVT_DATE | CAVT_BYREFI CAVT_CSTRING | CAVT_BYREFI CAVT_CSTRING | CAVT_BYREFI CAVT_OBJHANDLE | CAVT_BYREFI CAVT_OBJHANDLE | CAVT_BYREFI CAVT_ERROR | CAVT_BYREFI CAVT_ERROR | CAVT_BYREFI CAVT_BOOL | CAVT_BYREFI CAVT_BOOL | CAVT_BYREFI CAVT_VARIANT | CAVT_BYREFI CAVT_VARIANT | CAVT_BYREFI CAVT_UNKNOWN | CAVT_BYREFI CAVT_UNKNOWN | CAVT_BYREFI CAVT_UCHAR | CAVT_BYREFI CAVT_UCHAR | CAVT_BYREFI CAVT_SHORT | CAVT_ARRAY | CAVT_BYREFI CAVT_SHORT | CAVT_ARRAY | CAVT_BYREFI CAVT_LONG | CAVT_ARRAY | CAVT_BYREFI CAVT_LONG | CAVT_ARRAY | CAVT_BYREFI CAVT_FLOAT | CAVT_ARRAY | CAVT_BYREFI CAVT_FLOAT | CAVT_ARRAY | CAVT_BYREFI CAVT_DOUBLE | CAVT_ARRAY | CAVT_BYREFI CAVT_DOUBLE | CAVT_ARRAY | CAVT_BYREFI CAVT_CY | CAVT_ARRAY | CAVT_BYREFI CAVT_CY | CAVT_ARRAY | CAVT_BYREFI CAVT_DATE | CAVT_ARRAY | CAVT_BYREFI CAVT_DATE | CAVT_ARRAY | CAVT_BYREFI CAVT_CSTRING | CAVT_ARRAY | CAVT_BYREFI CAVT_CSTRING | CAVT_ARRAY | CAVT_BYREFI CAVT_OBJHANDLE | CAVT_ARRAY | CAVT_BYREFI CAVT_OBJHANDLE | CAVT_ARRAY | CAVT_BYREFI CAVT_ERROR | CAVT_ARRAY | CAVT_BYREFI CAVT_ERROR | CAVT_ARRAY | CAVT_BYREFI CAVT_BOOL | CAVT_ARRAY | CAVT_BYREFI CAVT_BOOL | CAVT_ARRAY | CAVT_BYREFI CAVT_VARIANT | CAVT_ARRAY | CAVT_BYREFI CAVT_VARIANT | CAVT_ARRAY | CAVT_BYREFI CAVT_UNKNOWN | CAVT_ARRAY | CAVT_BYREFI CAVT_UNKNOWN | CAVT_ARRAY | CAVT_BYREFI CAVT_UCHAR | CAVT_ARRAY | CAVT_BYREFI CAVT_UCHAR | CAVT_ARRAY | CAVT_BYREFI        -Press <ENTER> for a list of value constants.   v    Call this function to register a callback for the StatusTextChange event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *text);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) StatusTextChange event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *text);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Statusbar text changed.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.    F�
����  �    Status                            G� -   �  �    Server Object                     H� - � �  �    Callback Function                 K� -�    �    Callback Data                     L� �      �    Enable Callbacks                  P� � �     �    Callback Id                        	                   NULL    1            NULL   �    Call this function to register a callback for the ProgressChange event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  progress,
                              long  progressMax);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    ,    Pass the function that the CVI ActiveX library calls when the server fires a(n) ProgressChange event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  progress,
                              long  progressMax);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when download progress is updated.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.    V�
����  �    Status                            W� -   �  �    Server Object                     X� - � �  �    Callback Function                 [� -�    �    Callback Data                     \� �      �    Enable Callbacks                  a4 � �     �    Callback Id                        	                   NULL    1            NULL   �    Call this function to register a callback for the CommandStateChange event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  command,
                              VBOOL  enable);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    *    Pass the function that the CVI ActiveX library calls when the server fires a(n) CommandStateChange event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  command,
                              VBOOL  enable);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
The enabled state of a command changed.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.    g
����  �    Status                            h& -   �  �    Server Object                     i5 - � �  �    Callback Function                 lg -�    �    Callback Data                     m^ �      �    Enable Callbacks                  q� � �     �    Callback Id                        	                   NULL    1            NULL   I    Call this function to register a callback for the DownloadBegin event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) DownloadBegin event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Download of a page started.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.    w$
����  �    Status                            x2 -   �  �    Server Object                     yA - � �  �    Callback Function                 | -�    �    Callback Data                     |� �      �    Enable Callbacks                  �@ � �     �    Callback Id                        	                   NULL    1            NULL   L    Call this function to register a callback for the DownloadComplete event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) DownloadComplete event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Download of page complete.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.    ��
����  �    Status                            �� -   �  �    Server Object                     �� - � �  �    Callback Function                 �� -�    �    Callback Data                     �� �      �    Enable Callbacks                  �� � �     �    Callback Id                        	                   NULL    1            NULL   q    Call this function to register a callback for the TitleChange event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *text);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) TitleChange event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *text);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Document title changed.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.    ��
����  �    Status                            �� -   �  �    Server Object                     �� - � �  �    Callback Function                 �� -�    �    Callback Data                     �� �      �    Enable Callbacks                  �� � �     �    Callback Id                        	                   NULL    1            NULL   z    Call this function to register a callback for the PropertyChange event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *szProperty);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.        Pass the function that the CVI ActiveX library calls when the server fires a(n) PropertyChange event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *szProperty);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when the PutProperty method has been called.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.    ��
����  �    Status                            �� -   �  �    Server Object                     �� - � �  �    Callback Function                 �� -�    �    Callback Data                     �� �      �    Enable Callbacks                  �� � �     �    Callback Id                        	                   NULL    1            NULL   �    Call this function to register a callback for the BeforeNavigate2 event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              CAObjHandle  pDisp,
                              VARIANT *URL,
                              VARIANT *flags,
                              VARIANT *targetFrameName,
                              VARIANT *postData,
                              VARIANT *headers,
                              VBOOL *cancel);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    }    Pass the function that the CVI ActiveX library calls when the server fires a(n) BeforeNavigate2 event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              CAObjHandle  pDisp,
                              VARIANT *URL,
                              VARIANT *flags,
                              VARIANT *targetFrameName,
                              VARIANT *postData,
                              VARIANT *headers,
                              VBOOL *cancel);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired before navigate occurs in the given WebBrowser (window or frameset element). The processing of this navigation may be modified.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.    ��
����  �    Status                            �� -   �  �    Server Object                     �� - � �  �    Callback Function                 �h -�    �    Callback Data                     �_ �      �    Enable Callbacks                  à � �     �    Callback Id                        	                   NULL    1            NULL   �    Call this function to register a callback for the NewWindow2 event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              CAObjHandle *ppDisp,
                              VBOOL *cancel);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

This event callback specifies one or more dynamically allocated input/output or output only parameters.  Before you replace the value of a dynamically allocated input/output parameter, you must first use the appropriate function to free the value passed in.  Before you return from the callback, every dynamically allocated input/output or output only parameter must contain a valid value.  You can either allocate a new value for each such parameter, or you can leave the current value in the parameter.  For this reason, you should temporarily store all input/output and output only parameters that you allocate into local variables.  At the end of your callback function, after you have determined that you will not return an error from the callback, deallocate the current value of every input/output parameter and assign the new values from your temporary local variables to each input/output and output only parameter.  If you return an error, free the values in the local variables and do not change or deallocate the current values of the parameters.

The parameter ppDisp is a dynamically allocated input/output parameter.  If you want to replace the value of this parameter, call CA_DiscardObjHandle to free the value of ppDisp parameter and call CA_DuplicateObjHandle to allocate a new value for parameter ppDisp.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    h    Pass the function that the CVI ActiveX library calls when the server fires a(n) NewWindow2 event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              CAObjHandle *ppDisp,
                              VBOOL *cancel);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

This event callback specifies one or more dynamically allocated input/output or output only parameters.  Before you replace the value of a dynamically allocated input/output parameter, you must first use the appropriate function to free the value passed in.  Before you return from the callback, every dynamically allocated input/output or output only parameter must contain a valid value.  You can either allocate a new value for each such parameter, or you can leave the current value in the parameter.  For this reason, you should temporarily store all input/output and output only parameters that you allocate into local variables.  At the end of your callback function, after you have determined that you will not return an error from the callback, deallocate the current value of every input/output parameter and assign the new values from your temporary local variables to each input/output and output only parameter.  If you return an error, free the values in the local variables and do not change or deallocate the current values of the parameters.

The parameter ppDisp is a dynamically allocated input/output parameter.  If you want to replace the value of this parameter, call CA_DiscardObjHandle to free the value of ppDisp parameter and call CA_DuplicateObjHandle to allocate a new value for parameter ppDisp.

The server's documentation for this function is as follows:
A new, hidden, non-navigated WebBrowser window is needed.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.    ΰ
����  �    Status                            Ͼ -   �  �    Server Object                     �� - � �  �    Callback Function                 �= -�    �    Callback Data                     �4 �      �    Enable Callbacks                  �u � �     �    Callback Id                        	                   NULL    1            NULL   �    Call this function to register a callback for the NavigateComplete2 event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              CAObjHandle  pDisp,
                              VARIANT *URL);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    a    Pass the function that the CVI ActiveX library calls when the server fires a(n) NavigateComplete2 event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              CAObjHandle  pDisp,
                              VARIANT *URL);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when the document being navigated to becomes visible and enters the navigation stack.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.    �\
����  �    Status                            �j -   �  �    Server Object                     �y - � �  �    Callback Function                 �� -�    �    Callback Data                     �� �      �    Enable Callbacks                  � � �     �    Callback Id                        	                   NULL    1            NULL   �    Call this function to register a callback for the DocumentComplete event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              CAObjHandle  pDisp,
                              VARIANT *URL);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    L    Pass the function that the CVI ActiveX library calls when the server fires a(n) DocumentComplete event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              CAObjHandle  pDisp,
                              VARIANT *URL);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when the document being navigated to reaches ReadyState_Complete.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.    � 
����  �    Status                            � -   �  �    Server Object                     � - � �  �    Callback Function                 �q -�    �    Callback Data                     �h �      �    Enable Callbacks                  �� � �     �    Callback Id                        	                   NULL    1            NULL   B    Call this function to register a callback for the OnQuit event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) OnQuit event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when application is quiting.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   '
����  �    Status                           5 -   �  �    Server Object                    D - � �  �    Callback Function                
 -�    �    Callback Data                     �      �    Enable Callbacks                 C � �     �    Callback Id                        	                   NULL    1            NULL   s    Call this function to register a callback for the OnVisible event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  visible);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) OnVisible event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  visible);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when the window should be shown/hidden     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   �
����  �    Status                             -   �  �    Server Object                     - �    �    Callback Function                 -�    �    Callback Data                     �      �    Enable Callbacks                 I � �     �    Callback Id                        	                   NULL    1            NULL   s    Call this function to register a callback for the OnToolBar event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  toolBar);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) OnToolBar event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  toolBar);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when the toolbar  should be shown/hidden     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   $�
����  �    Status                           & -   �  �    Server Object                    ' - �   �    Callback Function                * -�    �    Callback Data                    + �      �    Enable Callbacks                 /Q � �     �    Callback Id                        	                   NULL    1            NULL   s    Call this function to register a callback for the OnMenuBar event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  menuBar);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) OnMenuBar event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  menuBar);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when the menubar should be shown/hidden     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   5 
����  �    Status                           6 -   �  �    Server Object                    7 - �   �    Callback Function                :  -�    �    Callback Data                    ; �      �    Enable Callbacks                 ?X � �     �    Callback Id                        	                   NULL    1            NULL   w    Call this function to register a callback for the OnStatusBar event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  statusBar);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.        Pass the function that the CVI ActiveX library calls when the server fires a(n) OnStatusBar event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  statusBar);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when the statusbar should be shown/hidden     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   E
����  �    Status                           F -   �  �    Server Object                    G( - �   �    Callback Function                J1 -�    �    Callback Data                    K( �      �    Enable Callbacks                 Oi � �     �    Callback Id                        	                   NULL    1            NULL   y    Call this function to register a callback for the OnFullScreen event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  fullScreen);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) OnFullScreen event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  fullScreen);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when fullscreen mode should be on/off     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   U
����  �    Status                           V, -   �  �    Server Object                    W; - �   �    Callback Function                ZB -�    �    Callback Data                    [9 �      �    Enable Callbacks                 _z � �     �    Callback Id                        	                   NULL    1            NULL   {    Call this function to register a callback for the OnTheaterMode event of the DWebBrowserEvents2 event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  theaterMode);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents2 events.  The following server objects support DWebBrowserEvents2 events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) OnTheaterMode event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL  theaterMode);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when theater mode should be on/off     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    9    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents2 class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents2 class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents2 class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   e1
����  �    Status                           f? -   �  �    Server Object                    gN - �   �    Callback Function                jT -�    �    Callback Data                    kK �      �    Enable Callbacks                 o� � �     �    Callback Id                        	                   NULL    1            NULL   \    Call this function to register a callback for the BeforeNavigate event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL,
                              long  flags,
                              char *targetFrameName,
                              VARIANT *postData,
                              char *headers,
                              VBOOL *cancel);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) BeforeNavigate event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL,
                              long  flags,
                              char *targetFrameName,
                              VARIANT *postData,
                              char *headers,
                              VBOOL *cancel);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when a new hyperlink is being navigated to.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   v$
����  �    Status                           w2 -   �  �    Server Object                    x? - �   �    Callback Function                |1 -�    �    Callback Data                    }( �      �    Enable Callbacks                 �f � �     �    Callback Id                        	                   NULL    1            NULL   s    Call this function to register a callback for the NavigateComplete event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    +    Pass the function that the CVI ActiveX library calls when the server fires a(n) NavigateComplete event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when the document being navigated to becomes visible and enters the navigation stack.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   �
����  �    Status                           �# -   �  �    Server Object                    �0 - �   �    Callback Function                �c -�    �    Callback Data                    �Z �      �    Enable Callbacks                 �� � �     �    Callback Id                        	                   NULL    1            NULL   t    Call this function to register a callback for the StatusTextChange event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *text);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) StatusTextChange event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *text);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Statusbar text changed.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   �H
����  �    Status                           �V -   �  �    Server Object                    �c - �   �    Callback Function                �S -�    �    Callback Data                    �J �      �    Enable Callbacks                 �� � �     �    Callback Id                        	                   NULL    1            NULL   �    Call this function to register a callback for the ProgressChange event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  progress,
                              long  progressMax);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    ,    Pass the function that the CVI ActiveX library calls when the server fires a(n) ProgressChange event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  progress,
                              long  progressMax);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when download progress is updated.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   �k
����  �    Status                           �y -   �  �    Server Object                    �� - � 	  �    Callback Function                �� -�    �    Callback Data                    �� �      �    Enable Callbacks                 �� � �     �    Callback Id                        	                   NULL    1            NULL   J    Call this function to register a callback for the DownloadComplete event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) DownloadComplete event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Download of page complete.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   �u
����  �    Status                           �� -   �  �    Server Object                    �� - � 
  �    Callback Function                �Y -�    �    Callback Data                    �P �      �    Enable Callbacks                 �� � �     �    Callback Id                        	                   NULL    1            NULL   �    Call this function to register a callback for the CommandStateChange event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  command,
                              VBOOL  enable);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    )    Pass the function that the CVI ActiveX library calls when the server fires a(n) CommandStateChange event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  command,
                              VBOOL  enable);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
The enabled state of a command changed     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   �p
����  �    Status                           �~ -   �  �    Server Object                    ɋ - �   �    Callback Function                ̼ -�    �    Callback Data                    ͳ �      �    Enable Callbacks                 �� � �     �    Callback Id                        	                   NULL    1            NULL   G    Call this function to register a callback for the DownloadBegin event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) DownloadBegin event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Download of a page started.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   �t
����  �    Status                           ؂ -   �  �    Server Object                    ُ - �   �    Callback Function                �V -�    �    Callback Data                    �M �      �    Enable Callbacks                 � � �     �    Callback Id                        	                   NULL    1            NULL   Z    Call this function to register a callback for the NewWindow event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL,
                              long  flags,
                              char *targetFrameName,
                              VARIANT *postData,
                              char *headers,
                              VBOOL *processed);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) NewWindow event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL,
                              long  flags,
                              char *targetFrameName,
                              VARIANT *postData,
                              char *headers,
                              VBOOL *processed);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when a new window should be created.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   �!
����  �    Status                           �/ -   �  �    Server Object                    �< - �   �    Callback Function                �% -�    �    Callback Data                    � �      �    Enable Callbacks                 �Z � �     �    Callback Id                        	                   NULL    1            NULL   o    Call this function to register a callback for the TitleChange event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *text);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) TitleChange event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *text);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Document title changed.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   �
����  �    Status                           � -   �  �    Server Object                    �  - �   �    Callback Function                � -�    �    Callback Data                    � �      �    Enable Callbacks                 @ � �     �    Callback Id                        	                   NULL    1            NULL   a    Call this function to register a callback for the FrameBeforeNavigate event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL,
                              long  flags,
                              char *targetFrameName,
                              VARIANT *postData,
                              char *headers,
                              VBOOL *cancel);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) FrameBeforeNavigate event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL,
                              long  flags,
                              char *targetFrameName,
                              VARIANT *postData,
                              char *headers,
                              VBOOL *cancel);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when a new hyperlink is being navigated to in a frame.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   	�
����  �    Status                           
� -   �  �    Server Object                    � - �   �    Callback Function                � -�    �    Callback Data                    � �      �    Enable Callbacks                 / � �     �    Callback Id                        	                   NULL    1            NULL   x    Call this function to register a callback for the FrameNavigateComplete event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.        Pass the function that the CVI ActiveX library calls when the server fires a(n) FrameNavigateComplete event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when a new hyperlink is being navigated to in a frame.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   �
����  �    Status                           � -   �  �    Server Object                    � - �   �    Callback Function                  -�    �    Callback Data                    ! �      �    Enable Callbacks                 %L � �     �    Callback Id                        	                   NULL    1            NULL   _    Call this function to register a callback for the FrameNewWindow event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL,
                              long  flags,
                              char *targetFrameName,
                              VARIANT *postData,
                              char *headers,
                              VBOOL *processed);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) FrameNewWindow event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *URL,
                              long  flags,
                              char *targetFrameName,
                              VARIANT *postData,
                              char *headers,
                              VBOOL *processed);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when a new window should be created.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   +�
����  �    Status                           ,� -   �  �    Server Object                    . - �   �    Callback Function                1� -�    �    Callback Data                    2� �      �    Enable Callbacks                 7% � �     �    Callback Id                        	                   NULL    1            NULL   k    Call this function to register a callback for the Quit event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL *cancel);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) Quit event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              VBOOL *cancel);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when application is quiting.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   <�
����  �    Status                           =� -   �  �    Server Object                    >� - �   �    Callback Function                A� -�    �    Callback Data                    B� �      �    Enable Callbacks                 G � �     �    Callback Id                        	                   NULL    1            NULL   D    Call this function to register a callback for the WindowMove event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) WindowMove event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when window has been moved.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   L�
����  �    Status                           M� -   �  �    Server Object                    N� - �   �    Callback Function                Qs -�    �    Callback Data                    Rj �      �    Enable Callbacks                 V� � �     �    Callback Id                        	                   NULL    1            NULL   F    Call this function to register a callback for the WindowResize event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) WindowResize event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when window has been sized.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   \*
����  �    Status                           ]8 -   �  �    Server Object                    ^E - �   �    Callback Function                a -�    �    Callback Data                    b �      �    Enable Callbacks                 fF � �     �    Callback Id                        	                   NULL    1            NULL   H    Call this function to register a callback for the WindowActivate event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) WindowActivate event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when window has been activated.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   k�
����  �    Status                           l� -   �  �    Server Object                    m� - �   �    Callback Function                p� -�    �    Callback Data                    q� �      �    Enable Callbacks                 u� � �     �    Callback Id                        	                   NULL    1            NULL   v    Call this function to register a callback for the PropertyChange event of the DWebBrowserEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DWebBrowserEvents events: IWebBrowser, IWebBrowser2.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *property);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DWebBrowserEvents events.  The following server objects support DWebBrowserEvents events: IWebBrowser, IWebBrowser2.        Pass the function that the CVI ActiveX library calls when the server fires a(n) PropertyChange event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              char *property);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
Fired when the PutProperty method has been called.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    6    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DWebBrowserEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DWebBrowserEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DWebBrowserEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   {�
����  �    Status                           |� -   �  �    Server Object                    }� - �   �    Callback Function                �� -�    �    Callback Data                    �� �      �    Enable Callbacks                 �� � �     �    Callback Id                        	                   NULL    1            NULL   o    Call this function to register a callback for the WindowRegistered event of the DShellWindowsEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DShellWindowsEvents events: IShellWindows.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  lCookie);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     �    Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DShellWindowsEvents events.  The following server objects support DShellWindowsEvents events: IShellWindows.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) WindowRegistered event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  lCookie);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
A new window was registered.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    <    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DShellWindowsEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DShellWindowsEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DShellWindowsEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   ��
����  �    Status                           �� -   �  �    Server Object                    �� - �   �    Callback Function                �� -�    �    Callback Data                    �� �      �    Enable Callbacks                 �� � �     �    Callback Id                        	                   NULL    1            NULL   l    Call this function to register a callback for the WindowRevoked event of the DShellWindowsEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate DShellWindowsEvents events: IShellWindows.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  lCookie);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     �    Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports DShellWindowsEvents events.  The following server objects support DShellWindowsEvents events: IShellWindows.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) WindowRevoked event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  lCookie);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.  

The server's documentation for this function is as follows:
A new window was revoked.     �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    <    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the DShellWindowsEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the DShellWindowsEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the DShellWindowsEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   ��
����  �    Status                           �� -   �  �    Server Object                    �� - �   �    Callback Function                �� -�    �    Callback Data                    �� �      �    Enable Callbacks                 �� � �     �    Callback Id                        	                   NULL    1            NULL   �    Call this function to register a callback for the FavoritesSelectionChange event of the _ShellFavoritesNameSpaceEvents event class.  When you register the callback, you must specify the CAObjHandle of the server object from which you want to receive events.  The following server objects generate _ShellFavoritesNameSpaceEvents events: IShellFavoritesNameSpace.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  cItems,
                              long  hItem,
                              char *strName,
                              char *strUrl,
                              long  cVisits,
                              char *strDate,
                              long  fAvailableOffline);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.          A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        Pass the CAObjHandle of the server object from which you want to receive events.  You must pass a CAObjHandle to a server object that supports _ShellFavoritesNameSpaceEvents events.  The following server objects support _ShellFavoritesNameSpaceEvents events: IShellFavoritesNameSpace.    �    Pass the function that the CVI ActiveX library calls when the server fires a(n) FavoritesSelectionChange event.

The callback function that you specify must have the following prototype:

HRESULT CVICALLBACK Callback (CAObjHandle caServerObjHandle,
                              void *caCallbackData,
                              long  cItems,
                              long  hItem,
                              char *strName,
                              char *strUrl,
                              long  cVisits,
                              char *strDate,
                              long  fAvailableOffline);

Upon entry to the callback, the caServerObjHandle parameter identifies the object that is firing the event.  The caCallbackData parameter contains the value you passed in the Callback Data parameter of this function.  The other parameters are event-specific and are specified and (optionally) documented by the server.       �    Pass a value that you want the CVI ActiveX library to pass to your callback as the caCallbackData parameter.  Do not pass the address of the of a local variable or any other variable that might not be valid when the callback is executed.    ]    This parameter specifies whether this registration function enables the registered callbacks for the server.  Pass 1 to enable all of the registered callbacks in the _ShellFavoritesNameSpaceEvents class associated with the server object passed in the Server Object parameter of this function.  Pass 0 to specify that this call to the registration function will not enable the callbacks.  Once the callbacks in the _ShellFavoritesNameSpaceEvents class have been enabled for a particular server object, the value of this parameter is ignored for subsequent callback registration functions in the _ShellFavoritesNameSpaceEvents class.

Typically, you pass 1 to enable callbacks immediately.  Pass 0 when you have a set of callbacks that must be enabled simultaneously in order for you to properly respond to the server events.  In this case, you must explicitly advise the server when you are ready to begin receiving events.  You can advise the server either by passing 1 for this parameter when you register the final callback, or by calling CA_EnableEventsForServerObject when you are ready to enable the callbacks.     �    This parameter returns a unique identifier for the callback.  Pass this identifier to CA_UnregisterEventCallback to unregister the callback.  Pass NULL if you do not want the Callback Id.   ��
����  �    Status                           �� -   �  �    Server Object                    �� - �   �    Callback Function                �� -�    �    Callback Data                    �� �      �    Enable Callbacks                 � � �     �    Callback Id                        	                   NULL    1            NULL   g    Use this function to create a new IWebBrowser object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   ��
����  �    Status                           �� -   �  �    Server                           �� - �     �    Support Multithreading           �} -� �  �    Locale                           �� �      �    Reserved                         �" � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          w    Use this function to load an existing IWebBrowser object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   ��
����  �    Status                           � -   �  �    File Name                        �D - � �  �    Server                           �g -�     �    Support Multithreading           �# �  �  �    Locale                           �~ � �     �    Reserved                         �� �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active IWebBrowser object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   �
����  �    Status                           � -   �  �    Server                           �� - �     �    Support Multithreading           ׳ -� �  �    Locale                           � �      �    Reserved                         �X � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	           5    Navigates to the previous item in the history list.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    R    An ActiveX object handle obtained from NewIWebBrowser, OpenIWebBrowser, ActiveIWebBrowser, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   ��
����  �    Status                           � -   �  �    Object Handle                    �a - � �  �    Error Info                         	                       NULL    1    Navigates to the next item in the history list.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    R    An ActiveX object handle obtained from NewIWebBrowser, OpenIWebBrowser, ActiveIWebBrowser, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   �
����  �    Status                           � -   �  �    Object Handle                    �� - � �  �    Error Info                         	                       NULL        Go home/start page.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    R    An ActiveX object handle obtained from NewIWebBrowser, OpenIWebBrowser, ActiveIWebBrowser, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   �
����  �    Status                           �% -   �  �    Object Handle                    � - � �  �    Error Info                         	                       NULL        Go Search Page.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    R    An ActiveX object handle obtained from NewIWebBrowser, OpenIWebBrowser, ActiveIWebBrowser, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   �
����  �    Status                           � -   �  �    Object Handle                    �� - � �  �    Error Info                         	                       NULL        Navigates to a URL or file.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    R    An ActiveX object handle obtained from NewIWebBrowser, OpenIWebBrowser, ActiveIWebBrowser, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                           �+ -   �  �    Object Handle                    �� - � �  �    Error Info                       �� -� �  �    URL                              � �  �  �    Flags                            �} � � �  �    Target Frame Name                �� �� �  �    Post Data                        �I �  �  �    Headers                            	                       NULL    ""                    $    Refresh the currently viewed page.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    R    An ActiveX object handle obtained from NewIWebBrowser, OpenIWebBrowser, ActiveIWebBrowser, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   ��
����  �    Status                           � -   �  �    Object Handle                    2 - � �  �    Error Info                         	                       NULL    $    Refresh the currently viewed page.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    R    An ActiveX object handle obtained from NewIWebBrowser, OpenIWebBrowser, ActiveIWebBrowser, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   I
����  �    Status                           h -   �  �    Object Handle                    	� - � �  �    Error Info                       � -� �  �    Level                              	                       NULL            Stops opening a file.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    R    An ActiveX object handle obtained from NewIWebBrowser, OpenIWebBrowser, ActiveIWebBrowser, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   k
����  �    Status                           � -   �  �    Object Handle                    � - � �  �    Error Info                         	                       NULL   r    Use this function to create a new WebBrowserIWebBrowser2 object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   I
����  �    Status                           W -   �  �    Server                           a - �     �    Support Multithreading            -� �  �    Locale                           x �      �    Reserved                         � � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to load an existing WebBrowserIWebBrowser2 object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   !�
����  �    Status                           "� -   �  �    File Name                        "� - � �  �    Server                           % -�     �    Support Multithreading           &� �  �  �    Locale                           () � �     �    Reserved                         (s �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active WebBrowserIWebBrowser2 object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   ,�
����  �    Status                           -� -   �  �    Server                           /� - �     �    Support Multithreading           1i -� �  �    Locale                           2� �      �    Reserved                         3 � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          x    Use this function to create a new InternetExplorerIWebBrowser2 object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   7�
����  �    Status                           8� -   �  �    Server                           :� - �     �    Support Multithreading           <� -� �  �    Locale                           > �      �    Reserved                         >Z � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to load an existing InternetExplorerIWebBrowser2 object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   C=
����  �    Status                           DK -   �  �    File Name                        D� - � �  �    Server                           F� -�     �    Support Multithreading           Hl �  �  �    Locale                           I� � �     �    Reserved                         J �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active InternetExplorerIWebBrowser2 object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   Ne
����  �    Status                           Os -   �  �    Server                           QQ - �     �    Support Multithreading           S -� �  �    Locale                           Th �      �    Reserved                         T� � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	           5    Navigates to the previous item in the history list.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   WB
����  �    Status                           Ya -   �  �    Object Handle                    [C - � �  �    Error Info                         	                       NULL    1    Navigates to the next item in the history list.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   ^g
����  �    Status                           `� -   �  �    Object Handle                    bh - � �  �    Error Info                         	                       NULL        Go home/start page.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   ep
����  �    Status                           g� -   �  �    Object Handle                    iq - � �  �    Error Info                         	                       NULL        Go Search Page.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   lu
����  �    Status                           n� -   �  �    Object Handle                    pv - � �  �    Error Info                         	                       NULL        Navigates to a URL or file.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   s�
����  �    Status                           u� -   �  �    Object Handle                    w� - � �  �    Error Info                       y� -� �  �    URL                              z �  �  �    Flags                            z � � �  �    Target Frame Name                z� �� �  �    Post Data                        {K �  �  �    Headers                            	                       NULL    ""                    $    Refresh the currently viewed page.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   }�
����  �    Status                           � -   �  �    Object Handle                    �� - � �  �    Error Info                         	                       NULL    $    Refresh the currently viewed page.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           �� -   �  �    Object Handle                    �� - � �  �    Error Info                       �  -� �  �    Level                              	                       NULL            Stops opening a file.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   �}
����  �    Status                           �� -   �  �    Object Handle                    �~ - � �  �    Error Info                         	                       NULL    1    Exits application and closes the open document.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   ��
����  �    Status                           �� -   �  �    Object Handle                    �� - � �  �    Error Info                         	                       NULL    *    Converts client sizes into window sizes.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           �� -   �  �    Object Handle                    �� - � �  �    Error Info                       �� -�    �    Pcx                              �S �     �    Pcy                                	                       NULL    	            	            K    Associates vtValue with the name szProperty in the context of the object.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   �M
����  �    Status                           �l -   �  �    Object Handle                    �N - � �  �    Error Info                       �z -� �  �    Property                         �� �  �  �    Vt Value                           	                       NULL    ""        V    Retrieve the Associated value for the property vtValue in the context of the object.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    9    The Variant returned by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

   ��
����  �    Status                           �� -   �  �    Object Handle                    �� - � �  �    Error Info                       � -� �  �    Property                         �j �  �  �    Return Value                       	                       NULL    ""    	            %    Navigates to a URL or file or pidl.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                           �2 -   �  �    Object Handle                    � - � �  �    Error Info                       �@ -� �  �    URL                              �� �  �  �    Flags                            � � � �  �    Target Frame Name                �r �� �  �    Post Data                        �� �  �  �    Headers                            	                       NULL                             IOleCommandTarget::QueryStatus        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    The value returned by the ActiveX server function.

Documentation for this function, if provided by the server, is located in the function help.   �B
����  �    Status                           �a -   �  �    Object Handle                    �C - � �  �    Error Info                       �o -�  �    Cmd ID                           �� �    �    Return Value                       	                       NULL            /  	�OLECMDID_OPEN SHDocVwConst_OLECMDID_OPEN OLECMDID_NEW SHDocVwConst_OLECMDID_NEW OLECMDID_SAVE SHDocVwConst_OLECMDID_SAVE OLECMDID_SAVEAS SHDocVwConst_OLECMDID_SAVEAS OLECMDID_SAVECOPYAS SHDocVwConst_OLECMDID_SAVECOPYAS OLECMDID_PRINT SHDocVwConst_OLECMDID_PRINT OLECMDID_PRINTPREVIEW SHDocVwConst_OLECMDID_PRINTPREVIEW OLECMDID_PAGESETUP SHDocVwConst_OLECMDID_PAGESETUP OLECMDID_SPELL SHDocVwConst_OLECMDID_SPELL OLECMDID_PROPERTIES SHDocVwConst_OLECMDID_PROPERTIES OLECMDID_CUT SHDocVwConst_OLECMDID_CUT OLECMDID_COPY SHDocVwConst_OLECMDID_COPY OLECMDID_PASTE SHDocVwConst_OLECMDID_PASTE OLECMDID_PASTESPECIAL SHDocVwConst_OLECMDID_PASTESPECIAL OLECMDID_UNDO SHDocVwConst_OLECMDID_UNDO OLECMDID_REDO SHDocVwConst_OLECMDID_REDO OLECMDID_SELECTALL SHDocVwConst_OLECMDID_SELECTALL OLECMDID_CLEARSELECTION SHDocVwConst_OLECMDID_CLEARSELECTION OLECMDID_ZOOM SHDocVwConst_OLECMDID_ZOOM OLECMDID_GETZOOMRANGE SHDocVwConst_OLECMDID_GETZOOMRANGE OLECMDID_UPDATECOMMANDS SHDocVwConst_OLECMDID_UPDATECOMMANDS OLECMDID_REFRESH SHDocVwConst_OLECMDID_REFRESH OLECMDID_STOP SHDocVwConst_OLECMDID_STOP OLECMDID_HIDETOOLBARS SHDocVwConst_OLECMDID_HIDETOOLBARS OLECMDID_SETPROGRESSMAX SHDocVwConst_OLECMDID_SETPROGRESSMAX OLECMDID_SETPROGRESSPOS SHDocVwConst_OLECMDID_SETPROGRESSPOS OLECMDID_SETPROGRESSTEXT SHDocVwConst_OLECMDID_SETPROGRESSTEXT OLECMDID_SETTITLE SHDocVwConst_OLECMDID_SETTITLE OLECMDID_SETDOWNLOADSTATE SHDocVwConst_OLECMDID_SETDOWNLOADSTATE OLECMDID_STOPDOWNLOAD SHDocVwConst_OLECMDID_STOPDOWNLOAD OLECMDID_ONTOOLBARACTIVATED SHDocVwConst_OLECMDID_ONTOOLBARACTIVATED OLECMDID_FIND SHDocVwConst_OLECMDID_FIND OLECMDID_DELETE SHDocVwConst_OLECMDID_DELETE OLECMDID_HTTPEQUIV SHDocVwConst_OLECMDID_HTTPEQUIV OLECMDID_HTTPEQUIV_DONE SHDocVwConst_OLECMDID_HTTPEQUIV_DONE OLECMDID_ENABLE_INTERACTION SHDocVwConst_OLECMDID_ENABLE_INTERACTION OLECMDID_ONUNLOAD SHDocVwConst_OLECMDID_ONUNLOAD OLECMDID_PROPERTYBAG2 SHDocVwConst_OLECMDID_PROPERTYBAG2 OLECMDID_PREREFRESH SHDocVwConst_OLECMDID_PREREFRESH OLECMDID_SHOWSCRIPTERROR SHDocVwConst_OLECMDID_SHOWSCRIPTERROR OLECMDID_SHOWMESSAGE SHDocVwConst_OLECMDID_SHOWMESSAGE OLECMDID_SHOWFIND SHDocVwConst_OLECMDID_SHOWFIND OLECMDID_SHOWPAGESETUP SHDocVwConst_OLECMDID_SHOWPAGESETUP OLECMDID_SHOWPRINT SHDocVwConst_OLECMDID_SHOWPRINT OLECMDID_CLOSE SHDocVwConst_OLECMDID_CLOSE OLECMDID_ALLOWUILESSSAVEAS SHDocVwConst_OLECMDID_ALLOWUILESSSAVEAS OLECMDID_DONTDOWNLOADCSS SHDocVwConst_OLECMDID_DONTDOWNLOADCSS    	                IOleCommandTarget::Exec        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

   �a
����  �    Status                           Ӏ -   �  �    Object Handle                    �b - � �  �    Error Info                       ׎ -�  �    Cmd ID                           �� �   �    Cmdexecopt                       �Z � � �  �    Pva In                           �� �� �  �    Pva Out                            	                       NULL            /  	�OLECMDID_OPEN SHDocVwConst_OLECMDID_OPEN OLECMDID_NEW SHDocVwConst_OLECMDID_NEW OLECMDID_SAVE SHDocVwConst_OLECMDID_SAVE OLECMDID_SAVEAS SHDocVwConst_OLECMDID_SAVEAS OLECMDID_SAVECOPYAS SHDocVwConst_OLECMDID_SAVECOPYAS OLECMDID_PRINT SHDocVwConst_OLECMDID_PRINT OLECMDID_PRINTPREVIEW SHDocVwConst_OLECMDID_PRINTPREVIEW OLECMDID_PAGESETUP SHDocVwConst_OLECMDID_PAGESETUP OLECMDID_SPELL SHDocVwConst_OLECMDID_SPELL OLECMDID_PROPERTIES SHDocVwConst_OLECMDID_PROPERTIES OLECMDID_CUT SHDocVwConst_OLECMDID_CUT OLECMDID_COPY SHDocVwConst_OLECMDID_COPY OLECMDID_PASTE SHDocVwConst_OLECMDID_PASTE OLECMDID_PASTESPECIAL SHDocVwConst_OLECMDID_PASTESPECIAL OLECMDID_UNDO SHDocVwConst_OLECMDID_UNDO OLECMDID_REDO SHDocVwConst_OLECMDID_REDO OLECMDID_SELECTALL SHDocVwConst_OLECMDID_SELECTALL OLECMDID_CLEARSELECTION SHDocVwConst_OLECMDID_CLEARSELECTION OLECMDID_ZOOM SHDocVwConst_OLECMDID_ZOOM OLECMDID_GETZOOMRANGE SHDocVwConst_OLECMDID_GETZOOMRANGE OLECMDID_UPDATECOMMANDS SHDocVwConst_OLECMDID_UPDATECOMMANDS OLECMDID_REFRESH SHDocVwConst_OLECMDID_REFRESH OLECMDID_STOP SHDocVwConst_OLECMDID_STOP OLECMDID_HIDETOOLBARS SHDocVwConst_OLECMDID_HIDETOOLBARS OLECMDID_SETPROGRESSMAX SHDocVwConst_OLECMDID_SETPROGRESSMAX OLECMDID_SETPROGRESSPOS SHDocVwConst_OLECMDID_SETPROGRESSPOS OLECMDID_SETPROGRESSTEXT SHDocVwConst_OLECMDID_SETPROGRESSTEXT OLECMDID_SETTITLE SHDocVwConst_OLECMDID_SETTITLE OLECMDID_SETDOWNLOADSTATE SHDocVwConst_OLECMDID_SETDOWNLOADSTATE OLECMDID_STOPDOWNLOAD SHDocVwConst_OLECMDID_STOPDOWNLOAD OLECMDID_ONTOOLBARACTIVATED SHDocVwConst_OLECMDID_ONTOOLBARACTIVATED OLECMDID_FIND SHDocVwConst_OLECMDID_FIND OLECMDID_DELETE SHDocVwConst_OLECMDID_DELETE OLECMDID_HTTPEQUIV SHDocVwConst_OLECMDID_HTTPEQUIV OLECMDID_HTTPEQUIV_DONE SHDocVwConst_OLECMDID_HTTPEQUIV_DONE OLECMDID_ENABLE_INTERACTION SHDocVwConst_OLECMDID_ENABLE_INTERACTION OLECMDID_ONUNLOAD SHDocVwConst_OLECMDID_ONUNLOAD OLECMDID_PROPERTYBAG2 SHDocVwConst_OLECMDID_PROPERTYBAG2 OLECMDID_PREREFRESH SHDocVwConst_OLECMDID_PREREFRESH OLECMDID_SHOWSCRIPTERROR SHDocVwConst_OLECMDID_SHOWSCRIPTERROR OLECMDID_SHOWMESSAGE SHDocVwConst_OLECMDID_SHOWMESSAGE OLECMDID_SHOWFIND SHDocVwConst_OLECMDID_SHOWFIND OLECMDID_SHOWPAGESETUP SHDocVwConst_OLECMDID_SHOWPAGESETUP OLECMDID_SHOWPRINT SHDocVwConst_OLECMDID_SHOWPRINT OLECMDID_CLOSE SHDocVwConst_OLECMDID_CLOSE OLECMDID_ALLOWUILESSSAVEAS SHDocVwConst_OLECMDID_ALLOWUILESSSAVEAS OLECMDID_DONTDOWNLOADCSS SHDocVwConst_OLECMDID_DONTDOWNLOADCSS               �OLECMDEXECOPT_DODEFAULT SHDocVwConst_OLECMDEXECOPT_DODEFAULT OLECMDEXECOPT_PROMPTUSER SHDocVwConst_OLECMDEXECOPT_PROMPTUSER OLECMDEXECOPT_DONTPROMPTUSER SHDocVwConst_OLECMDEXECOPT_DONTPROMPTUSER OLECMDEXECOPT_SHOWHELP SHDocVwConst_OLECMDEXECOPT_SHOWHELP        	                Set BrowserBar to Clsid        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    �    An ActiveX object handle obtained from NewWebBrowserIWebBrowser2, OpenWebBrowserIWebBrowser2, ActiveWebBrowserIWebBrowser2, NewInternetExplorerIWebBrowser2, OpenInternetExplorerIWebBrowser2, ActiveInternetExplorerIWebBrowser2, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   �u
����  �    Status                           � -   �  �    Object Handle                    �v - � �  �    Error Info                       � -� �  �    Pva Clsid                        � �  �  �    Pvar Show                        �n � � �  �    Pvar Size                          	                       NULL               i    Use this function to create a new IShellWindows object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   �
����  �    Status                           � -   �  �    Server                           �� - �     �    Support Multithreading           �� -� �  �    Locale                           �� �      �    Reserved                         �( � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          y    Use this function to load an existing IShellWindows object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   ��
����  �    Status                           �
 -   �  �    File Name                        �L - � �  �    Server                            o -�     �    Support Multithreading           + �  �  �    Locale                           � � �     �    Reserved                         � �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active IShellWindows object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   
����  �    Status                           	# -   �  �    Server                            - �     �    Support Multithreading           � -� �  �    Locale                            �      �    Reserved                         b � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	           -    Return the shell window for the given index        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    X    An ActiveX object handle obtained from NewIShellWindows, OpenIShellWindows, ActiveIShellWindows, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    �    The handle to an ActiveX object returned by the function.

Documentation for this function, if provided by the server, is located in the function help.

Use this handle to call methods and get/set properties of the appropriate ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.

See function help for more information.

NOTE: CAObjHandles created by this function inherit multithreading support and locale values from the Object Handle parameter.

To use different values for multithreading support and locale, you can call CA_SetSupportForMultithreading and CA_SetLocale to specify the desired values.   �
����  �    Status                           	 -   �  �    Object Handle                    i - � �  �    Error Info                       � -� �  �    Index                            � �  �  �    Return Value                       	                       NULL    CA_DEFAULT_VAL    	               Enumerates the figures        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    X    An ActiveX object handle obtained from NewIShellWindows, OpenIShellWindows, ActiveIShellWindows, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    The value returned by the ActiveX server function.

Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                            -   �  �    Object Handle                    x - � �  �    Error Info                        � -� �  �    Return Value                       	                       NULL    	           !    Register a window with the list        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    X    An ActiveX object handle obtained from NewIShellWindows, OpenIShellWindows, ActiveIShellWindows, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   "g
����  �    Status                           $� -   �  �    Object Handle                    %� - � �  �    Error Info                       ( -� �  �    Pid                              (x �     �    HWND                             (� � �    �    Sw Class                         )D ��    �    Pl Cookie                          	                       NULL                	            '    Register a pending open with the list        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    X    An ActiveX object handle obtained from NewIShellWindows, OpenIShellWindows, ActiveIShellWindows, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   +�
����  �    Status                           -� -   �  �    Object Handle                    / - � �  �    Error Info                       1/ -�    �    L Thread Id                      1� �  �  �    Pvarloc                          1� � � �  �    Pvarloc Root                     2a ��    �    Sw Class                         2� �     �    Pl Cookie                          	                       NULL                    	                Remove a window from the list        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    X    An ActiveX object handle obtained from NewIShellWindows, OpenIShellWindows, ActiveIShellWindows, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   58
����  �    Status                           7W -   �  �    Object Handle                    8� - � �  �    Error Info                       :� -�    �    L Cookie                           	                       NULL            Notifies the new location        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    X    An ActiveX object handle obtained from NewIShellWindows, OpenIShellWindows, ActiveIShellWindows, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   <d
����  �    Status                           >� -   �  �    Object Handle                    ?� - � �  �    Error Info                       B -�    �    L Cookie                         Bu �  �  �    Pvarloc                            	                       NULL                Notifies the activation        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    X    An ActiveX object handle obtained from NewIShellWindows, OpenIShellWindows, ActiveIShellWindows, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   D-
����  �    Status                           FL -   �  �    Object Handle                    G� - � �  �    Error Info                       I� -�    �    L Cookie                         J> � C �       F Active                           	                       NULL        VTRUE VTRUE VFALSE VFALSE    '    Find the window based on the location        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    X    An ActiveX object handle obtained from NewIShellWindows, OpenIShellWindows, ActiveIShellWindows, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    �    The handle to an ActiveX object returned by the function.

Documentation for this function, if provided by the server, is located in the function help.

Use this handle to call methods and get/set properties of the appropriate ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.

See function help for more information.

NOTE: CAObjHandles created by this function inherit multithreading support and locale values from the Object Handle parameter.

To use different values for multithreading support and locale, you can call CA_SetSupportForMultithreading and CA_SetLocale to specify the desired values.   L
����  �    Status                           N< -   �  �    Object Handle                    O� - � �  �    Error Info                       Q� -� �  �    Pvarloc                          R. �  �  �    Pvarloc Root                     R� � �    �    Sw Class                         R� ��    �    P HWND                           S` �     �    Swfw Options                     S� � � �  �    Return Value                       	                       NULL                	                	           )    Notifies on creation and frame name set        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    X    An ActiveX object handle obtained from NewIShellWindows, OpenIShellWindows, ActiveIShellWindows, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   X�
����  �    Status                           Z� -   �  �    Object Handle                    \2 - � �  �    Error Info                       ^^ -�    �    L Cookie                         ^� �  �  �    Punk                               	                       NULL            2    Used by IExplore to register different processes        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    X    An ActiveX object handle obtained from NewIShellWindows, OpenIShellWindows, ActiveIShellWindows, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   `�
����  �    Status                           b� -   �  �    Object Handle                    d - � �  �    Error Info                       f@ -� �       F Attach                           	                       NULL    VTRUE VTRUE VFALSE VFALSE   j    Use this function to create a new IShellUIHelper object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   j)
����  �    Status                           k7 -   �  �    Server                           mA - �     �    Support Multithreading           n� -� �  �    Locale                           pX �      �    Reserved                         p� � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          z    Use this function to load an existing IShellUIHelper object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   uw
����  �    Status                           v� -   �  �    File Name                        v� - � �  �    Server                           x� -�     �    Support Multithreading           z� �  �  �    Locale                           | � �     �    Reserved                         |K �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active IShellUIHelper object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   ��
����  �    Status                           �� -   �  �    Server                           �} - �     �    Support Multithreading           �9 -� �  �    Locale                           �� �      �    Reserved                         �� � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	              A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   �1
����  �    Status                           �P -   �  �    Object Handle                    �� - � �  �    Error Info                         	                       NULL       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   ��
����  �    Status                           �� -   �  �    Object Handle                    �  - � �  �    Error Info                         	                       NULL       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   �
����  �    Status                           �* -   �  �    Object Handle                    �� - � �  �    Error Info                         	                       NULL       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   �x
����  �    Status                           �� -   �  �    Object Handle                    �� - � �  �    Error Info                       �& -� �  �    URL                              �� �  �  �    Title                              	                       NULL    ""           A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   �%
����  �    Status                           �D -   �  �    Object Handle                    �� - � �  �    Error Info                       �� -� �  �    URL                                	                       NULL    ""       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   �3
����  �    Status                           �R -   �  �    Object Handle                    �� - � �  �    Error Info                       �� -� �  �    URL                              �G �  �  �    Type                             �� � � �  �    Left                             � �� �  �    Top                              �y �  �  �    Width                            �� � � �  �    Height                             	                       NULL    ""    ""                       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    The value returned by the ActiveX server function.

Documentation for this function, if provided by the server, is located in the function help.   �^
����  �    Status                           �} -   �  �    Object Handle                    �� - � �  �    Error Info                       � -� �  �    URL                              �r �  �  �    Return Value                       	                       NULL    ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   �G
����  �    Status                           �f -   �  �    Object Handle                    �� - � �  �    Error Info                       �� -� �  �    URL                              �[ �  �  �    Str Query                        �� � � �  �    Var Target Frame                   	                       NULL    ""    ""           A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   ŕ
����  �    Status                           Ǵ -   �  �    Object Handle                    � - � �  �    Error Info                       �C -� �       F Import                         ˩ �  �  �    Str Imp Exp Path                   	                       NULL    VTRUE VTRUE VFALSE VFALSE    ""       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   �[
����  �    Status                           �z -   �  �    Object Handle                    �� - � �  �    Error Info                       �	 -� �  �    Form                               	                       NULL           A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   �g
����  �    Status                           ֆ -   �  �    Object Handle                    �� - � �  �    Error Info                       � -� �  �    Str Search                       �{ �  �  �    Str Failure Url                  �� � � �  �    Pvar Target Frame                  	                       NULL    ""    ""           A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   ܵ
����  �    Status                           �� -   �  �    Object Handle                    �7 - � �  �    Error Info                       �c -� �  �    Reserved                           	                       NULL           A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    [    An ActiveX object handle obtained from NewIShellUIHelper, OpenIShellUIHelper, ActiveIShellUIHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    9    The Variant returned by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

   ��
����  �    Status                           �� -   �  �    Object Handle                    �C - � �  �    Error Info                       �o -� �  �    Bstr Name                        �� �  �  �    Pvar In                          �; � � �  �    Return Value                       	                       NULL    ""        	           t    Use this function to create a new IShellFavoritesNameSpace object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   �l
����  �    Status                           �z -   �  �    Server                           � - �     �    Support Multithreading           �@ -� �  �    Locale                           �� �      �    Reserved                         �� � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to load an existing IShellFavoritesNameSpace object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   ��
����  �    Status                           �� -   �  �    File Name                        � - � �  �    Server                           �7 -�     �    Support Multithreading           �� �  �  �    Locale                           N � �     �    Reserved                         � �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active IShellFavoritesNameSpace object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   �
����  �    Status                           � -   �  �    Server                           � - �     �    Support Multithreading           
� -� �  �    Locale                           � �      �    Reserved                         5 � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	               method MoveSelectionUp        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   �
����  �    Status                           � -   �  �    Object Handle                    H - � �  �    Error Info                         	                       NULL        method MoveSelectionDown        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   U
����  �    Status                           t -   �  �    Object Handle                    � - � �  �    Error Info                         	                       NULL        method ResetSort        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   �
����  �    Status                            -   �  �    Object Handle                    � - � �  �    Error Info                         	                       NULL        method NewFolder        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   "�
����  �    Status                           $� -   �  �    Object Handle                    &? - � �  �    Error Info                         	                       NULL        method Synchronize        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   )F
����  �    Status                           +e -   �  �    Object Handle                    ,� - � �  �    Error Info                         	                       NULL        method Import        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   /�
����  �    Status                           2 -   �  �    Object Handle                    3� - � �  �    Error Info                         	                       NULL        method Export        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   6�
����  �    Status                           8� -   �  �    Object Handle                    :* - � �  �    Error Info                         	                       NULL    !    method InvokeContextMenuCommand        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   =>
����  �    Status                           ?] -   �  �    Object Handle                    @� - � �  �    Error Info                       C
 -� �  �    Str Command                        	                       NULL    ""        method MoveSelectionTo        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   D�
����  �    Status                           F� -   �  �    Object Handle                    H* - � �  �    Error Info                         	                       NULL    '    method CreateSubscriptionForSelection        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    The value returned by the ActiveX server function.

Documentation for this function, if provided by the server, is located in the function help.   KD
����  �    Status                           Mc -   �  �    Object Handle                    N� - � �  �    Error Info                       Q -� �  �    Return Value                       	                       NULL    	            '    method DeleteSubscriptionForSelection        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    The value returned by the ActiveX server function.

Documentation for this function, if provided by the server, is located in the function help.   R�
����  �    Status                           T� -   �  �    Object Handle                    Vy - � �  �    Error Info                       X� -� �  �    Return Value                       	                       NULL    	                method SetRoot        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    y    An ActiveX object handle obtained from NewIShellFavoritesNameSpace, OpenIShellFavoritesNameSpace, ActiveIShellFavoritesNameSpace, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   ZW
����  �    Status                           \v -   �  �    Object Handle                    ]� - � �  �    Error Info                       `# -� �  �    Bstr Full Path                     	                       NULL    "" ����         U   �             K.        GetProperty                                                                                                                             ����         ,8  6�             K.        SetProperty                                                                                                                             ����         C  Q�             K.        DWebBrwsrEvnts2RegOnStatusTextChange                                                                                                    ����         R�  a�             K.        DWebBrwsrEvnts2RegOnProgressChange                                                                                                      ����         ch  rd             K.        DWebBrwsrEvnts2RegOnCommandStateChange                                                                                                  ����         s�  �             K.        DWebBrwsrEvnts2RegOnDownloadBegin                                                                                                       ����         �t  ��             K.        DWebBrwsrEvnts2RegOnDownloadComplete                                                                                                    ����         �  ��             K.        DWebBrwsrEvnts2RegOnTitleChange                                                                                                         ����         �  ��             K.        DWebBrwsrEvnts2RegOnPropertyChange                                                                                                      ����         �!  �e             K.        DWebBrwsrEvnts2RegOnBeforeNavigate2                                                                                                     ����         ��  �:             K.        DWebBrwsrEvnts2RegOnNewWindow2                                                                                                          ����         �  ��             K.        DWebBrwsrEvnts2RegOnNavigateComplete2                                                                                                   ����         �N  n             K.        DWebBrwsrEvnts2RegOnDocumentComplete                                                                                                    ����        �              K.        DWebBrwsrEvnts2RegOnOnQuit                                                                                                              ����        w               K.        DWebBrwsrEvnts2RegOnOnVisible                                                                                                           ����        !} 0             K.        DWebBrwsrEvnts2RegOnOnToolBar                                                                                                           ����        1� @             K.        DWebBrwsrEvnts2RegOnOnMenuBar                                                                                                           ����        A� P.             K.        DWebBrwsrEvnts2RegOnOnStatusBar                                                                                                         ����        Q� `?             K.        DWebBrwsrEvnts2RegOnOnFullScreen                                                                                                        ����        a� pQ             K.        DWebBrwsrEvnts2RegOnOnTheaterMode                                                                                                       ����        q� �+             K.        DWebBrwsrEvntsRegOnBeforeNavigate                                                                                                       ����        �� �]             K.        DWebBrwsrEvntsRegOnNavigateComplete                                                                                                     ����        �� �M             K.        DWebBrwsrEvntsRegOnStatusTextChange                                                                                                     ����        �� ��             K.        DWebBrwsrEvntsRegOnProgressChange                                                                                                       ����        �# �S             K.        DWebBrwsrEvntsRegOnDownloadComplete                                                                                                     ����        �� Ҷ             K.        DWebBrwsrEvntsRegOnCommandStateChange                                                                                                   ����        �% �P             K.        DWebBrwsrEvntsRegOnDownloadBegin                                                                                                        ����        � �             K.        DWebBrwsrEvntsRegOnNewWindow                                                                                                            ����        ��              K.        DWebBrwsrEvntsRegOnTitleChange                                                                                                          ����        t �             K.        DWebBrwsrEvntsRegOnFrameBeforeNavigate                                                                                                  ����        c &             K.        DWebBrwsrEvntsRegOnFrameNavigateComplete                                                                                                ����        '� 7�             K.        DWebBrwsrEvntsRegOnFrameNewWindow                                                                                                       ����        9Y G�             K.        DWebBrwsrEvntsRegOnQuit                                                                                                                 ����        IB Wm             K.        DWebBrwsrEvntsRegOnWindowMove                                                                                                           ����        X� g             K.        DWebBrwsrEvntsRegOnWindowResize                                                                                                         ����        hz v�             K.        DWebBrwsrEvntsRegOnWindowActivate                                                                                                       ����        x  ��             K.        DWebBrwsrEvntsRegOnPropertyChange                                                                                                       ����        �/ ��             K.        DShellWindowsEvntsRegOnWindowRegistered                                                                                                 ����        �  ��             K.        DShellWindowsEvntsRegOnWindowRevoked                                                                                                    ����        � ��             K.        _ShellFavoritesNameSpaceEventsRegOnFavoritesSelectionChange                                                                             ����        �: ��             K.        NewIWebBrowser                                                                                                                          ����        �u ϡ             K.        OpenIWebBrowser                                                                                                                         ����        �T �1             K.        ActiveIWebBrowser                                                                                                                       ����        ۫ �             K.        IWebBrowserGoBack                                                                                                                       ����        �L �*             K.        IWebBrowserGoForward                                                                                                                    ����        �� �             K.        IWebBrowserGoHome                                                                                                                       ����        �j �(             K.        IWebBrowserGoSearch                                                                                                                     ����        �� ��             K.        IWebBrowserNavigate                                                                                                                     ����        �� ^             K.        IWebBrowserRefresh                                                                                                                      ����         T             K.        IWebBrowserRefresh2                                                                                                                     ����        L              K.        IWebBrowserStop                                                                                                                         ����        � �             K.        NewWebBrowserIWebBrowser2                                                                                                               ����         )L             K.        OpenWebBrowserIWebBrowser2                                                                                                              ����        *� 3�             K.        ActiveWebBrowserIWebBrowser2                                                                                                            ����        5a ?3             K.        NewInternetExplorerIWebBrowser2                                                                                                         ����        @� J�             K.        OpenInternetExplorerIWebBrowser2                                                                                                        ����        L� U�             K.        ActiveInternetExplorerIWebBrowser2                                                                                                      ����        W ]o             K.        IWebBrowser2GoBack                                                                                                                      ����        ^. d�             K.        IWebBrowser2GoForward                                                                                                                   ����        eS k�             K.        IWebBrowser2GoHome                                                                                                                      ����        l\ r�             K.        IWebBrowser2GoSearch                                                                                                                    ����        sa {�             K.        IWebBrowser2Navigate                                                                                                                    ����        }� ��             K.        IWebBrowser2Refresh                                                                                                                     ����        �� �f             K.        IWebBrowser2Refresh2                                                                                                                    ����        �^ ��             K.        IWebBrowser2Stop                                                                                                                        ����        �i ��             K.        IWebBrowser2Quit                                                                                                                        ����        �� ��             K.        IWebBrowser2ClientToWindow                                                                                                              ����        �� �F             K.        IWebBrowser2PutProperty                                                                                                                 ����        �y ��             K.        IWebBrowser2GetProperty                                                                                                                 ����        �� �>             K.        IWebBrowser2Navigate2                                                                                                                   ����        � �o             K.        IWebBrowser2QueryStatusWB                                                                                                               ����        �@ �             K.        IWebBrowser2ExecWB                                                                                                                      ����        �T ��             K.        IWebBrowser2ShowBrowserBar                                                                                                              ����        �> �             K.        NewIShellWindows                                                                                                                        ����        �{ �             K.        OpenIShellWindows                                                                                                                       ����        \ ;             K.        ActiveIShellWindows                                                                                                                     ����        � �             K.        IShellWindowsItem                                                                                                                       ����        � !>             K.        IShellWindows_NewEnum                                                                                                                   ����        "> )�             K.        IShellWindowsRegister                                                                                                                   ����        +U 3-             K.        IShellWindowsRegisterPending                                                                                                            ����        5 ;I             K.        IShellWindowsRevoke                                                                                                                     ����        <A B�             K.        IShellWindowsOnNavigate                                                                                                                 ����        D J�             K.        IShellWindowsOnActivated                                                                                                                ����        K� V]         	    K.        IShellWindowsFindWindow                                                                                                                 ����        X� _*             K.        IShellWindowsOnCreated                                                                                                                  ����        `[ f�             K.        IShellWindowsProcessAttachDetch                                                                                                         ����        g� q{             K.        NewIShellUIHelper                                                                                                                       ����        r� }$             K.        OpenIShellUIHelper                                                                                                                      ����        ~� ��             K.        ActiveIShellUIHelper                                                                                                                    ����       ���� ��             K.        IShellUIHelperResetFrstBootMode                                                                                                         ����       ���� �L             K.        IShellUIHelperResetSafeMode                                                                                                             ����       ���� ��             K.        IShellUIHelperRefreshOfflnDsktp                                                                                                         ����       ���� ��             K.        IShellUIHelperAddFavorite                                                                                                               ����       ���� �9             K.        IShellUIHelperAddChannel                                                                                                                ����       ���� �E         	    K.        IShellUIHelperAddDsktpComponent                                                                                                         ����       ���� �             K.        IShellUIHelperIsSubscribed                                                                                                              ����       ���� �'             K.        IShellUIHelperNavigateAndFind                                                                                                           ����       ���� �             K.        IShellUIHelperImportExportFavorites                                                                                                     ����       ���� �o             K.        IShellUIHelperAutoCompleteSaveForm                                                                                                      ����       ���� �G             K.        IShellUIHelperAutoScan                                                                                                                  ����       ���� ��             K.        IShellUIHelperAutoCompleteAttach                                                                                                        ����       ���� �|             K.        IShellUIHelperShowBrowserUI                                                                                                             ����        �� ��             K.        NewIShellFavoritesNameSpace                                                                                                             ����        �8 q             K.        OpenIShellFavoritesNameSpace                                                                                                            ����        $              K.        ActiveIShellFavoritesNameSpace                                                                                                          ����        � t             K.        IShellFavoritesNameSpaceMoveSelectionUp                                                                                                 ����        3 !             K.        IShellFavoritesNameSpaceMoveSelectionDown                                                                                               ����        � !�             K.        IShellFavoritesNameSpaceResetSort                                                                                                       ����        "� (k             K.        IShellFavoritesNameSpaceNewFolder                                                                                                       ����        )* /             K.        IShellFavoritesNameSpaceSynchronize                                                                                                     ����        /� 5�             K.        IShellFavoritesNameSpaceImport                                                                                                          ����        6s <V             K.        IShellFavoritesNameSpaceExport                                                                                                          ����        = Cp             K.        IShellFavoritesNameSpaceInvokeContextMenuCommand                                                                                        ����        Dj JV             K.        IShellFavoritesNameSpaceMoveSelectionTo                                                                                                 ����        K Q�             K.        IShellFavoritesNameSpaceCreateSubscriptionForSelection                                                                                  ����        R� Y?             K.        IShellFavoritesNameSpaceDeleteSubscriptionForSelection                                                                                  ����        Z? `�             K.        IShellFavoritesNameSpaceSetRoot                                                                                                               �                                                                                     �Get Property                                                                         �Set Property                                                                        �Event Callback Registration Functions                                               =DWebBrowserEvents2                                                                   �Register StatusTextChange Callback                                                   �Register ProgressChange Callback                                                     �Register CommandStateChange Callback                                                 �Register DownloadBegin Callback                                                      �Register DownloadComplete Callback                                                   �Register TitleChange Callback                                                        �Register PropertyChange Callback                                                     �Register BeforeNavigate2 Callback                                                    �Register NewWindow2 Callback                                                         �Register NavigateComplete2 Callback                                                  �Register DocumentComplete Callback                                                   �Register OnQuit Callback                                                             �Register OnVisible Callback                                                          �Register OnToolBar Callback                                                          �Register OnMenuBar Callback                                                          �Register OnStatusBar Callback                                                        �Register OnFullScreen Callback                                                       �Register OnTheaterMode Callback                                                     �DWebBrowserEvents                                                                    �Register BeforeNavigate Callback                                                     �Register NavigateComplete Callback                                                   �Register StatusTextChange Callback                                                   �Register ProgressChange Callback                                                     �Register DownloadComplete Callback                                                   �Register CommandStateChange Callback                                                 �Register DownloadBegin Callback                                                      �Register NewWindow Callback                                                          �Register TitleChange Callback                                                        �Register FrameBeforeNavigate Callback                                                �Register FrameNavigateComplete Callback                                              �Register FrameNewWindow Callback                                                     �Register Quit Callback                                                               �Register WindowMove Callback                                                         �Register WindowResize Callback                                                       �Register WindowActivate Callback                                                     �Register PropertyChange Callback                                                    �DShellWindowsEvents                                                                  �Register WindowRegistered Callback                                                   �Register WindowRevoked Callback                                                     !_ShellFavoritesNameSpaceEvents                                                       �Register FavoritesSelectionChange Callback                                          �IWebBrowser                                                                          �New IWebBrowser                                                                      �Open IWebBrowser                                                                     �Active IWebBrowser                                                                   �Go Back                                                                              �Go Forward                                                                           �Go Home                                                                              �Go Search                                                                            �Navigate                                                                             �Refresh                                                                              �Refresh2                                                                             �Stop                                                                                �IWebBrowser2                                                                         �New WebBrowserIWebBrowser2                                                           �Open WebBrowserIWebBrowser2                                                          �Active WebBrowserIWebBrowser2                                                        �New InternetExplorerIWebBrowser2                                                     �Open InternetExplorerIWebBrowser2                                                    �Active InternetExplorerIWebBrowser2                                                  �Go Back                                                                              �Go Forward                                                                           �Go Home                                                                              �Go Search                                                                            �Navigate                                                                             �Refresh                                                                              �Refresh2                                                                             �Stop                                                                                 �Quit                                                                                 �Client To Window                                                                     �Put Property                                                                         �Get Property                                                                         �Navigate2                                                                            �Query Status WB                                                                      �Exec WB                                                                              �Show Browser Bar                                                                    �IShellWindows                                                                        �New IShellWindows                                                                    �Open IShellWindows                                                                   �Active IShellWindows                                                                 �Item                                                                                 �_New Enum                                                                            �Register                                                                             �Register Pending                                                                     �Revoke                                                                               �On Navigate                                                                          �On Activated                                                                         �Find Window                                                                          �On Created                                                                           �Process Attach Detach                                                               �IShellUIHelper                                                                       �New IShellUIHelper                                                                   �Open IShellUIHelper                                                                  �Active IShellUIHelper                                                                �Reset First Boot Mode                                                                �Reset Safe Mode                                                                      �Refresh Offline Desktop                                                              �Add Favorite                                                                         �Add Channel                                                                          �Add Desktop Component                                                                �Is Subscribed                                                                        �Navigate And Find                                                                    �Import Export Favorites                                                              �Auto Complete Save Form                                                              �Auto Scan                                                                            �Auto Complete Attach                                                                 �Show Browser UI                                                                     )IShellFavoritesNameSpace                                                             �New IShellFavoritesNameSpace                                                         �Open IShellFavoritesNameSpace                                                        �Active IShellFavoritesNameSpace                                                      �Move Selection Up                                                                    �Move Selection Down                                                                  �Reset Sort                                                                           �New Folder                                                                           �Synchronize                                                                          �Import                                                                               �Export                                                                               �Invoke Context Menu Command                                                          �Move Selection To                                                                    �Create Subscription For Selection                                                    �Delete Subscription For Selection                                                    �Set Root                                                                        