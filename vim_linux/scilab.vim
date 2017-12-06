" Vim syntax file
" Language   : Scilab
" Maintainer : Astonfe
" Last change: 2017-12-06
" Thanks to  : Vaclav Mocek, Patricio Toledo
" Updated to Scilab 5.5.2 with the toolboxes: FACT, GUI Builder, IPT3, JSON, NaN, Quapro and dependencies.
" This software is totally free and comes to you without any warranty.
" You can use it freely and at your own risk.

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" KEYWORDS SECTION

" {{{
syn keyword sciPrimitives getinstalledlookandfeels removeModulePreferences saveconsecutivecommands get_absolute_file_path
syn keyword sciPrimitives addlocalizationdomain datatipSetOrientation fire_closing_finished xcosSimulationStarted
syn keyword sciPrimitives %H5Object_fieldnames addModulePreferences jallowClassReloading parallel_concurrency
syn keyword sciPrimitives xcosConfigureXmlFile fftwlibraryisloaded getrelativefilename getvariablesonstack
syn keyword sciPrimitives matfile_varreadnext xcosDiagramToScilab xcosPalGenerateIcon %XMLAttr_i_XMLElem
syn keyword sciPrimitives %XMLElem_i_XMLElem %XMLElem_i_XMLList %XMLList_i_XMLElem %XMLList_i_XMLList
syn keyword sciPrimitives datatipManagerMode disposefftwlibrary distfun_streaminit distfun_verboseset
syn keyword sciPrimitives fftw_forget_wisdom getdefaultlanguage saveafterncommands scicos_debug_count
syn keyword sciPrimitives setdefaultlanguage system_getproperty system_setproperty xcosPalCategoryAdd
syn keyword sciPrimitives %XMLDoc_i_XMLList %XMLElem_i_XMLDoc csvStringToDouble datatipSetDisplay
syn keyword sciPrimitives distfun_streamget distfun_streamset getcallbackobject iswaitingforinput
syn keyword sciPrimitives jconvMatrixMethod number_properties pointer_xproperty removelinehistory
syn keyword sciPrimitives x_choose_modeless %XMLNs_i_XMLElem datatipSetInterp distfun_cdfpoiss
syn keyword sciPrimitives distfun_incgamma distfun_invpoiss distfun_pdfpoiss distfun_poissrnd
syn keyword sciPrimitives getshortpathname import_from_hdf5 matfile_varwrite phase_simulation
syn keyword sciPrimitives TCL_DeleteInterp xcosAddToolsMenu xmlGetNsByPrefix xmlIsValidObject
syn keyword sciPrimitives xmlSetAttributes %fptr_i_XMLList %XMLAttr_length %XMLList_length
syn keyword sciPrimitives datatipSetStyle distfun_betarnd distfun_binornd distfun_cdfbeta
syn keyword sciPrimitives distfun_cdfbino distfun_cdfchi2 distfun_cdfhyge distfun_cdflogn
syn keyword sciPrimitives distfun_cdfncx2 distfun_cdfnorm distfun_cdfunif distfun_chi2rnd
syn keyword sciPrimitives distfun_hygernd distfun_invbeta distfun_invbino distfun_invchi2
syn keyword sciPrimitives distfun_invhyge distfun_invlogn distfun_invncx2 distfun_invnorm
syn keyword sciPrimitives distfun_invunif distfun_lognrnd distfun_nbinrnd distfun_ncx2rnd
syn keyword sciPrimitives distfun_normrnd distfun_pdfbeta distfun_pdfbino distfun_pdfchi2
syn keyword sciPrimitives distfun_pdfhyge distfun_pdflogn distfun_pdfncx2 distfun_pdfnorm
syn keyword sciPrimitives distfun_pdfunif distfun_permrnd distfun_seedget distfun_seedset
syn keyword sciPrimitives distfun_startup distfun_unidrnd distfun_unifrnd get_fftw_wisdom
syn keyword sciPrimitives getlongpathname graphicfunction is_handle_valid javalibrarypath
syn keyword sciPrimitives listvar_in_hdf5 loadfftwlibrary matfile_listvar set_fftw_wisdom
syn keyword sciPrimitives TCL_ExistInterp updatebrowsevar xcosUpdateBlock %_EObj_1__EObj
syn keyword sciPrimitives %_EObj_2__EObj %_EObj_3__EObj %_EObj_4__EObj %_EObj_a__EObj
syn keyword sciPrimitives %_EObj_d__EObj %_EObj_g__EObj %_EObj_h__EObj %_EObj_i__EObj
syn keyword sciPrimitives %_EObj_j__EObj %_EObj_k__EObj %_EObj_l__EObj %_EObj_m__EObj
syn keyword sciPrimitives %_EObj_n__EObj %_EObj_o__EObj %_EObj_p__EObj %_EObj_q__EObj
syn keyword sciPrimitives %_EObj_r__EObj %_EObj_s__EObj %_EObj_x__EObj %_EObj_y__EObj
syn keyword sciPrimitives %_EObj_z__EObj %lss_i_XMLList %msp_i_XMLList %ptr_i_XMLList
syn keyword sciPrimitives %spb_i_XMLList %XMLSet_length displayhistory distfun_cdfexp
syn keyword sciPrimitives distfun_cdfgam distfun_cdfgeo distfun_cdfnbn distfun_cdfncf
syn keyword sciPrimitives distfun_cdfnct distfun_cdfwbl distfun_exprnd distfun_gamrnd
syn keyword sciPrimitives distfun_genget distfun_genset distfun_geornd distfun_invexp
syn keyword sciPrimitives distfun_invgam distfun_invgeo distfun_invnbn distfun_invncf
syn keyword sciPrimitives distfun_invnct distfun_invwbl distfun_mvnpdf distfun_mvnrnd
syn keyword sciPrimitives distfun_ncfrnd distfun_nctrnd distfun_pdfexp distfun_pdfgam
syn keyword sciPrimitives distfun_pdfgeo distfun_pdfnbn distfun_pdfncf distfun_pdfnct
syn keyword sciPrimitives distfun_pdfwbl distfun_wblrnd export_to_hdf5 gethistoryfile
syn keyword sciPrimitives getlookandfeel historymanager isequalbitwise jautoTranspose
syn keyword sciPrimitives linear_interpn progressionbar sci_haltscicos set_blockerror
syn keyword sciPrimitives sethistoryfile setlookandfeel sumskipnan_mex TCL_DoOneEvent
syn keyword sciPrimitives TCL_ExistArray TCL_GetVersion warnBlockByUID xcosPalDisable
syn keyword sciPrimitives xmlGetNsByHref xmlGetOpenDocs %ce_i_XMLList %hm_i_XMLList
syn keyword sciPrimitives %ip_i_XMLList %mc_i_XMLList %sp_i_XMLList %st_i_XMLList
syn keyword sciPrimitives %XMLAttr_size %XMLList_size browsehistory datatipCreate
syn keyword sciPrimitives datatipRemove datatipToggle definedfields distfun_cdfev
syn keyword sciPrimitives distfun_cdfks distfun_evrnd distfun_invev distfun_invks
syn keyword sciPrimitives distfun_ksrnd distfun_mnrnd distfun_pdfev distfun_pdfks
syn keyword sciPrimitives getblocklabel getscicosvars getscilabmode javaclasspath
syn keyword sciPrimitives jdisableTrace jgetclassname librarieslist matfile_close
syn keyword sciPrimitives printsetupbox res_with_prec set_xproperty taucs_chsolve
syn keyword sciPrimitives uicontextmenu uiDisplayTree xcosPalDelete xcosPalEnable
syn keyword sciPrimitives %b_i_XMLList %c_i_XMLAttr %c_i_XMLElem %c_i_XMLList
syn keyword sciPrimitives %h_i_XMLList %i_i_XMLList %l_i_XMLList %p_i_XMLList
syn keyword sciPrimitives %r_i_XMLList %s_i_XMLList %XMLSet_size c_nnsimulbis
syn keyword sciPrimitives c_nnsimulter closeEditvar distfun_cdff distfun_cdft
syn keyword sciPrimitives distfun_frnd distfun_invf distfun_invt distfun_pdff
syn keyword sciPrimitives distfun_pdft distfun_trnd end_scicosim eval_cshep2d
syn keyword sciPrimitives getdebuginfo getdynlibext h5isCompound ilib_verbose
syn keyword sciPrimitives is_hdf5_file jenableTrace jnewInstance jwrapinfloat
syn keyword sciPrimitives knnclass_mex matfile_open parallel_run raise_window
syn keyword sciPrimitives realtimeinit resethistory scicos_debug swap_handles
syn keyword sciPrimitives taucs_chfact taucs_chinfo TCL_EvalFile TCL_ExistVar
syn keyword sciPrimitives TCL_UnsetVar %_EObj_disp %c_i_XMLDoc %H5Object_e
syn keyword sciPrimitives %H5Object_p %XMLValid_p clearglobal closeEditor
syn keyword sciPrimitives csvTextScan datatipMove filebrowser getlanguage
syn keyword sciPrimitives h5writeattr helpbrowser historysize htmlReadStr
syn keyword sciPrimitives jautoUnwrap jgetmethods kth_element libraryinfo
syn keyword sciPrimitives loadhistory mtlb_sparse pathconvert plotbrowser
syn keyword sciPrimitives preferences printfigure readgateway rotate_axes
syn keyword sciPrimitives savehistory scicos_time setlanguage show_window
syn keyword sciPrimitives stripblanks taucs_chdel taucs_chget TCL_EvalStr
syn keyword sciPrimitives umf_lusolve with_module xcosPalLoad xcosPalMove
syn keyword sciPrimitives xmlAsNumber xmlDocument xmlValidate !!_invoke_
syn keyword sciPrimitives %_EClass_6 %_EClass_e %_EClass_p %_EObj_1_b
syn keyword sciPrimitives %_EObj_1_c %_EObj_1_i %_EObj_1_s %_EObj_2_b
syn keyword sciPrimitives %_EObj_2_c %_EObj_2_i %_EObj_2_s %_EObj_3_b
syn keyword sciPrimitives %_EObj_3_c %_EObj_3_i %_EObj_3_s %_EObj_4_b
syn keyword sciPrimitives %_EObj_4_c %_EObj_4_i %_EObj_4_s %_EObj_a_b
syn keyword sciPrimitives %_EObj_a_c %_EObj_a_i %_EObj_a_s %_EObj_d_b
syn keyword sciPrimitives %_EObj_d_c %_EObj_d_i %_EObj_d_s %_EObj_g_b
syn keyword sciPrimitives %_EObj_g_c %_EObj_g_i %_EObj_g_s %_EObj_h_b
syn keyword sciPrimitives %_EObj_h_c %_EObj_h_i %_EObj_h_s %_EObj_j_b
syn keyword sciPrimitives %_EObj_j_c %_EObj_j_i %_EObj_j_s %_EObj_k_b
syn keyword sciPrimitives %_EObj_k_c %_EObj_k_i %_EObj_k_s %_EObj_l_b
syn keyword sciPrimitives %_EObj_l_c %_EObj_l_i %_EObj_l_s %_EObj_m_b
syn keyword sciPrimitives %_EObj_m_c %_EObj_m_i %_EObj_m_s %_EObj_n_b
syn keyword sciPrimitives %_EObj_n_c %_EObj_n_i %_EObj_n_s %_EObj_o_b
syn keyword sciPrimitives %_EObj_o_c %_EObj_o_i %_EObj_o_s %_EObj_p_b
syn keyword sciPrimitives %_EObj_p_c %_EObj_p_i %_EObj_p_s %_EObj_q_b
syn keyword sciPrimitives %_EObj_q_c %_EObj_q_i %_EObj_q_s %_EObj_r_b
syn keyword sciPrimitives %_EObj_r_c %_EObj_r_i %_EObj_r_s %_EObj_s_b
syn keyword sciPrimitives %_EObj_s_c %_EObj_s_i %_EObj_s_s %_EObj_x_b
syn keyword sciPrimitives %_EObj_x_c %_EObj_x_i %_EObj_x_s %_EObj_y_b
syn keyword sciPrimitives %_EObj_y_c %_EObj_y_i %_EObj_y_s %_EObj_z_b
syn keyword sciPrimitives %_EObj_z_c %_EObj_z_i %_EObj_z_s %b_1__EObj
syn keyword sciPrimitives %b_2__EObj %b_3__EObj %b_4__EObj %b_a__EObj
syn keyword sciPrimitives %b_d__EObj %b_g__EObj %b_h__EObj %b_i__EObj
syn keyword sciPrimitives %b_j__EObj %b_k__EObj %b_l__EObj %b_m__EObj
syn keyword sciPrimitives %b_n__EObj %b_o__EObj %b_p__EObj %b_q__EObj
syn keyword sciPrimitives %b_r__EObj %b_s__EObj %b_x__EObj %b_y__EObj
syn keyword sciPrimitives %b_z__EObj %c_1__EObj %c_2__EObj %c_3__EObj
syn keyword sciPrimitives %c_4__EObj %c_a__EObj %c_d__EObj %c_g__EObj
syn keyword sciPrimitives %c_h__EObj %c_i__EObj %c_j__EObj %c_k__EObj
syn keyword sciPrimitives %c_l__EObj %c_m__EObj %c_n__EObj %c_o__EObj
syn keyword sciPrimitives %c_p__EObj %c_q__EObj %c_r__EObj %c_s__EObj
syn keyword sciPrimitives %c_x__EObj %c_y__EObj %c_z__EObj %i_1__EObj
syn keyword sciPrimitives %i_2__EObj %i_3__EObj %i_4__EObj %i_a__EObj
syn keyword sciPrimitives %i_cumprod %i_d__EObj %i_g__EObj %i_h__EObj
syn keyword sciPrimitives %i_i__EObj %i_j__EObj %i_k__EObj %i_l__EObj
syn keyword sciPrimitives %i_m__EObj %i_n__EObj %i_o__EObj %i_p__EObj
syn keyword sciPrimitives %i_q__EObj %i_r__EObj %i_s__EObj %i_x__EObj
syn keyword sciPrimitives %i_y__EObj %i_z__EObj %l_i__EObj %msp_spget
syn keyword sciPrimitives %s_1__EObj %s_2__EObj %s_3__EObj %s_4__EObj
syn keyword sciPrimitives %s_a__EObj %s_d__EObj %s_g__EObj %s_h__EObj
syn keyword sciPrimitives %s_i__EObj %s_j__EObj %s_k__EObj %s_l__EObj
syn keyword sciPrimitives %s_m__EObj %s_n__EObj %s_o__EObj %s_p__EObj
syn keyword sciPrimitives %s_q__EObj %s_r__EObj %s_s__EObj %s_x__EObj
syn keyword sciPrimitives %s_y__EObj %s_z__EObj %XMLAttr_6 %XMLAttr_e
syn keyword sciPrimitives %XMLAttr_p %XMLElem_6 %XMLElem_e %XMLElem_p
syn keyword sciPrimitives %XMLList_6 %XMLList_e %XMLList_p addhistory
syn keyword sciPrimitives bsplin3val buildouttb completion contour2di
syn keyword sciPrimitives contour2dm csvDefault deletefile fftw_flags
syn keyword sciPrimitives fprintfMat gethistory getmodules getversion
syn keyword sciPrimitives gstacksize h5readattr havewindow isalphanum
syn keyword sciPrimitives jcreatejar jgetfields jinvoke_db junwraprem
syn keyword sciPrimitives loadScicos messagebox TCL_GetVar TCL_SetVar
syn keyword sciPrimitives testmatrix uigetcolor umf_lufact umf_luinfo
syn keyword sciPrimitives xcosPalGet xmlElement xmlReadStr xmlRelaxNG
syn keyword sciPrimitives _code2str _str2code %i_cumsum %i_matrix
syn keyword sciPrimitives %msp_full %XMLDoc_6 %XMLDoc_e %XMLDoc_p
syn keyword sciPrimitives %XMLSet_6 %XMLSet_e %XMLSet_p backslash
syn keyword sciPrimitives browsevar c_nnsimul ClipBoard closeXcos
syn keyword sciPrimitives createdir curblockc drawlater duplicate
syn keyword sciPrimitives fileparts findfiles fscanfMat getdrives
syn keyword sciPrimitives getmemory h5dataset h5isArray h5isGroup
syn keyword sciPrimitives h5isSpace histo_mex htmlWrite invoke_lu
syn keyword sciPrimitives jgetfield jsetfield lasterror lsq_splin
syn keyword sciPrimitives lsqrsolve macr2tree mclearerr model2blk
syn keyword sciPrimitives mtlb_mode nearfloat PlaySound removedir
syn keyword sciPrimitives rubberbox sci_tree2 sci_tree3 sci_tree4
syn keyword sciPrimitives simp_mode spcompack stacksize str2array
syn keyword sciPrimitives stringbox TCL_UpVar uicontrol uigetfile
syn keyword sciPrimitives uigetfont uiputfile umf_ludel umf_luget
syn keyword sciPrimitives unsetmenu usecanvas useeditor write_csv
syn keyword sciPrimitives x_mdialog xchoicesi xgetmouse xgraduate
syn keyword sciPrimitives xmlAppend xmlAsText xmlDelete xmlFormat
syn keyword sciPrimitives xmlRemove xmlSchema zoom_rect %_EObj_0
syn keyword sciPrimitives %_EObj_5 %_EObj_6 %_EObj_e %_EObj_p
syn keyword sciPrimitives %_EObj_t %XMLNs_6 %XMLNs_e %XMLNs_p
syn keyword sciPrimitives addcolor addinter arl2_ius base2dec
syn keyword sciPrimitives basename buildDoc Calendar captions
syn keyword sciPrimitives clearfun code2str copyfile coserror
syn keyword sciPrimitives covm_mex csvIsnum csvWrite curblock
syn keyword sciPrimitives data2sig dec2base dgettext diffobjs
syn keyword sciPrimitives drawaxis emptystr errcatch errclear
syn keyword sciPrimitives exportUI fileinfo fromjava fullpath
syn keyword sciPrimitives funcprot getfield grayplot h5exists
syn keyword sciPrimitives h5isAttr h5isFile h5isList h5isType
syn keyword sciPrimitives h5isVlen h5umount htmlDump htmlRead
syn keyword sciPrimitives iconvert iconvert interp2d interp3d
syn keyword sciPrimitives isglobal isletter jcompile jgetinfo
syn keyword sciPrimitives legendre loadXcos macr2lst Matplot1
syn keyword sciPrimitives maxfiles mfprintf movefile msprintf
syn keyword sciPrimitives name2rgb param3d1 qp_solve read_csv
syn keyword sciPrimitives realtime scicosim scinotes setfield
syn keyword sciPrimitives sig2data splitURL str2code strindex
syn keyword sciPrimitives strsplit strsubst tempname typename
syn keyword sciPrimitives uigetdir x_choose x_dialog xls_open
syn keyword sciPrimitives xls_read xmlAddNs xmlWrite xmlXPath
syn keyword sciPrimitives xstringb %i_diag %i_maxi %i_mini
syn keyword sciPrimitives %i_mput %i_prod %i_tril %i_triu
syn keyword sciPrimitives besselh besseli besselj besselk
syn keyword sciPrimitives bessely blkfc1i blkslvi callblk
syn keyword sciPrimitives convstr cshep2d csvRead cumprod
syn keyword sciPrimitives delmenu dispbpt dlgamma drawnow
syn keyword sciPrimitives dsearch editvar execstr fadj2sp
syn keyword sciPrimitives fileext filesep gammaln getdate
syn keyword sciPrimitives gettext h5close h5flush h5group
syn keyword sciPrimitives h5isRef h5isSet h5label h5mount
syn keyword sciPrimitives h5write intppty inttype isascii
syn keyword sciPrimitives isdigit isequal iserror jexists
syn keyword sciPrimitives jimport jinvoke jremove junwrap
syn keyword sciPrimitives loadGui lsslist lstsize lusolve
syn keyword sciPrimitives Matplot mfscanf mgetstr mprintf
syn keyword sciPrimitives mputstr msscanf newaxes openged
syn keyword sciPrimitives param3d pathsep plot2d1 plot2d2
syn keyword sciPrimitives plot2d3 plot2d4 plot3d1 readmps
syn keyword sciPrimitives saveGui sciargs semidef setmenu
syn keyword sciPrimitives splin2d splin3d sprintf strcspn
syn keyword sciPrimitives strncpy strrchr symfcti toolbar
syn keyword sciPrimitives toprint uipopup umfpack var2vec
syn keyword sciPrimitives vec2var waitbar warning whereis
syn keyword sciPrimitives write4b xarrows xchange xfpolys
syn keyword sciPrimitives xmlDump xmlName xmlRead xstring
syn keyword sciPrimitives %_eigs %_load %i_abs %i_max
syn keyword sciPrimitives %i_min %i_sum balanc banner
syn keyword sciPrimitives bezout bfinit bool2s c_link
syn keyword sciPrimitives cdfbet cdfbin cdfchi cdfchn
syn keyword sciPrimitives cdffnc cdfgam cdfnbn cdfnor
syn keyword sciPrimitives cdfpoi champ1 ctree2 ctree3
syn keyword sciPrimitives ctree4 cumsum dawson degree
syn keyword sciPrimitives delbpt delete dnaupd dneupd
syn keyword sciPrimitives double driver dsaupd dseupd
syn keyword sciPrimitives ereduc exists figure findBD
syn keyword sciPrimitives format fsolve fstair funptr
syn keyword sciPrimitives geom3d getenv getmd5 getpid
syn keyword sciPrimitives getURL global h5attr h5dump
syn keyword sciPrimitives h5open h5read inpnvi interp
syn keyword sciPrimitives isfile isreal jarray length
syn keyword sciPrimitives linmeq lstcat lufact matrix
syn keyword sciPrimitives mclose merror mscanf mucomp
syn keyword sciPrimitives newest newfun notify opentk
syn keyword sciPrimitives ordmmd plot2d plot3d pppdiv
syn keyword sciPrimitives predef printf prompt qpqpqp
syn keyword sciPrimitives rankqr read4b regexp residu
syn keyword sciPrimitives sctree setbpt setenv sfinit
syn keyword sciPrimitives sident sorder sparse spchol
syn keyword sciPrimitives spones strcat strchr strcmp
syn keyword sciPrimitives string strrev strspn strstr
syn keyword sciPrimitives strtod strtok syredi ta2lpd
syn keyword sciPrimitives tohome tokens tr_zer uimenu
syn keyword sciPrimitives uint16 uint32 uiwait unglue
syn keyword sciPrimitives unzoom winsid xclick xfarcs
syn keyword sciPrimitives xfpoly xfrect xlfont xmlDTD
syn keyword sciPrimitives xpause xpolys xrects xs2bmp
syn keyword sciPrimitives xs2emf xs2eps xs2gif xs2jpg
syn keyword sciPrimitives xs2pdf xs2png xs2ppm xs2svg
syn keyword sciPrimitives xtitle znaupd zneupd about
syn keyword sciPrimitives amell ascii bdiag bvode
syn keyword sciPrimitives champ chdir clean coeff
syn keyword sciPrimitives color contr conv2 daskr
syn keyword sciPrimitives dasrt dassl debug delip
syn keyword sciPrimitives dhinf diary erfcx error
syn keyword sciPrimitives feval floor frexp fromc
syn keyword sciPrimitives gamma getio getos glist
syn keyword sciPrimitives grand gsort h5get imult
syn keyword sciPrimitives int16 int2d int32 int3d
syn keyword sciPrimitives isdef isdir isnum jcast
syn keyword sciPrimitives jdeff jwrap ldivf light
syn keyword sciPrimitives lines log10 log1p ltitr
syn keyword sciPrimitives ludel luget mgeti mgetl
syn keyword sciPrimitives mlist mopen mputl mseek
syn keyword sciPrimitives mtell odedc optim print
syn keyword sciPrimitives rcond rdivf readb remez
syn keyword sciPrimitives rlist roots round rtitr
syn keyword sciPrimitives schur sfact slash sleep
syn keyword sciPrimitives spget splin timer tlist
syn keyword sciPrimitives uint8 ulink where writb
syn keyword sciPrimitives write xarcs xfarc xgrid
syn keyword sciPrimitives xinit xmlNs xname xpoly
syn keyword sciPrimitives xrect xs2ps xsegs zeros
syn keyword sciPrimitives %i_p acos addf argn
syn keyword sciPrimitives asin atan beep beta
syn keyword sciPrimitives call cdff cdft ceil
syn keyword sciPrimitives chol comp conj copy
syn keyword sciPrimitives corr deff diag disp
syn keyword sciPrimitives erfc erfi exec expm
syn keyword sciPrimitives fftw file find fort
syn keyword sciPrimitives freq full glue grep
syn keyword sciPrimitives h5cp h5ln h5ls h5mv
syn keyword sciPrimitives h5rm hess hinf host
syn keyword sciPrimitives ieee imag impl int8
syn keyword sciPrimitives intg kron ldiv link
syn keyword sciPrimitives list load meof mget
syn keyword sciPrimitives mode move mput mulf
syn keyword sciPrimitives norm ones part poly
syn keyword sciPrimitives ppol prod rand read
syn keyword sciPrimitives real ricc rpem save
syn keyword sciPrimitives sign simp size spec
syn keyword sciPrimitives sqrt subf tril triu
syn keyword sciPrimitives type unix user varn
syn keyword sciPrimitives xarc xcos xdel xend
syn keyword sciPrimitives xget xset abs and
syn keyword sciPrimitives cos dct det dst
syn keyword sciPrimitives erf exp eye fec
syn keyword sciPrimitives fft get int inv
syn keyword sciPrimitives lib log lsq max
syn keyword sciPrimitives min nnz ode qld
syn keyword sciPrimitives rat set sin sum
syn keyword sciPrimitives svd tan _d cd
syn keyword sciPrimitives lu or qr _
" Keywords from Scilab 5.5.1
syn keyword sciPrimitives findfileassociation detectforeground getsystemmetrics relocate_handle
syn keyword sciPrimitives distfun_rndmvn int_immultiply int_imsubtract avilistopened
syn keyword sciPrimitives detectobjects int_imabsdiff mcisendstring avireadframe
syn keyword sciPrimitives int_cvtcolor int_imdivide int_imresize avicloseall
syn keyword sciPrimitives int_imwrite istssession winqueryreg consolebox
syn keyword sciPrimitives createGUID mat2utfimg impyramid int_canny
syn keyword sciPrimitives int_imadd int_sobel meanshift sivp_init
syn keyword sciPrimitives addframe aviclose camshift imfilter
syn keyword sciPrimitives sivptest avifile aviinfo aviopen
syn keyword sciPrimitives camopen filter2 imfinfo ind2rgb
syn keyword sciPrimitives winopen imread win64 dos
" }}}

" {{{
syn keyword sciCommands endfunction continue function apropos
syn keyword sciCommands elseif resume return select
syn keyword sciCommands abort break catch clear
syn keyword sciCommands pause while case else
syn keyword sciCommands exit help quit then
syn keyword sciCommands what clc end for
syn keyword sciCommands pwd try who do
syn keyword sciCommands if
" }}}

" {{{
syn keyword sciVariables differential_equationlib compatibility_functilib elementary_functionslib simulated_annealinglib
syn keyword sciVariables genetic_algorithmslib development_toolslib signal_processinglib special_functionslib
syn keyword sciVariables external_objectslib data_structureslib modules_managerlib linear_algebralib
syn keyword sciVariables interpolationlib output_streamlib dynamic_linklib optimizationlib
syn keyword sciVariables optimsimplexlib scicos_utilslib overloadinglib polynomialslib
syn keyword sciVariables preferenceslib scicos_autolib spreadsheetlib demo_toolslib
syn keyword sciVariables guibuilderlib neldermeadlib parameterslib statisticslib
syn keyword sciVariables functionslib helptoolslib optimbaselib atomsguilib
syn keyword sciVariables datatipslib graphicslib scinoteslib arnoldilib
syn keyword sciVariables distfunlib integerlib libhelptbx magicSqlib
syn keyword sciVariables randliblib specfunlib umfpacklib apifunlib
syn keyword sciVariables assertlib fileiolib quaprolib sparselib
syn keyword sciVariables stringlib tclscilib uitreelib atomslib
syn keyword sciVariables cacsdlib m2scilib matiolib soundlib
syn keyword sciVariables corelib factlib JSONlib SCIHOME
syn keyword sciVariables timelib xcoslib guilib jvmlib
syn keyword sciVariables moclib nanlib TMPDIR %fftw
syn keyword sciVariables enull evoid iolib jnull
syn keyword sciVariables jvoid %eps %gui %inf
syn keyword sciVariables %nan home %io %pi
syn keyword sciVariables %tk PWD SCI %e
syn keyword sciVariables %F %f %i %s
syn keyword sciVariables %T %t %z $
" Keywords from Scilab 5.5.1
syn keyword sciVariables windows_toolslib sivplib WSCI
" }}}

" {{{
syn keyword sciFunctions gencompilationflags_unix getTitleLabelPropertyNam neldermead_defaultoutput optimbase_hasconstraints
syn keyword sciFunctions optimbase_isinnonlincons tbx_build_gateway_loader tbx_builder_gateway_lang xcosValidateCompareBlock
syn keyword sciFunctions add_module_help_chapter assert_checkalmostequal del_module_help_chapter optimsimplex_compsomefv
syn keyword sciFunctions optimsimplex_deltafvmax optimsimplex_fvvariance optimsimplex_gradientfv tbx_build_gateway_clean
syn keyword sciFunctions xcosPalGenerateAllIcons %Block_xcosUpdateBlock assert_checkfilesequal datatipCreatePopupMenu
syn keyword sciFunctions datatipGUIEventHandler flag_impl_significance glx_mat2div_struct2div helptbx_iscontentupdte
syn keyword sciFunctions nyquistfrequencybounds optimbase_checkcostfun optimsimplex_computefv tbx_build_localization
syn keyword sciFunctions apifun_expandfromsize arobasestring2strings assert_comparecomplex assert_cond2reqdigits
syn keyword sciFunctions atomsGetInstalledPath datatipDefaultDisplay datatipDeleteSelected datatipSetTipPosition
syn keyword sciFunctions extract_help_examples formatNicholsPhaseTip formatSgridDampingTip formatZgridDampingTip
syn keyword sciFunctions nan_coef_of_variation neldermead_updatesimp nmplot_simplexhistory optimbase_checkbounds
syn keyword sciFunctions optimbase_logshutdown optimsimplex_getallfv optimsimplex_setallfv patch_pls_c_yloadings
syn keyword sciFunctions setTitleLabelProperty specfun_combinerepeat tbx_build_help_loader tbx_builder_help_lang
syn keyword sciFunctions xcosConfigureModelica apifun_checkcallable apifun_keyvaluepairs assert_computedigits
syn keyword sciFunctions compute_initial_temp createXConfiguration crossover_ga_default datatipRadioCallback
syn keyword sciFunctions datatipRemoveNearest demo_function_choice detectmsifort64tools devtools_run_builder
syn keyword sciFunctions formatNicholsGainTip helptbx_updtifneeded ica_durbwatmatrix_op ica_pca_tall_pct_dnr
syn keyword sciFunctions nan_row_col_deletion nan_train_lda_sparse neldermead_configure optimbase_isfeasible
syn keyword sciFunctions optimbase_isinbounds optimbase_logstartup optimsimplex_deltafv optimsimplex_destroy
syn keyword sciFunctions optimsimplex_fvstdev optimsimplex_getallx optimsimplex_getnbve optimsimplex_reflect
syn keyword sciFunctions optimsimplex_setallx optimsimplex_setnbve output_nsga2_default selection_ga_elitist
syn keyword sciFunctions specfun_factoriallog tbx_build_pal_loader tbx_builder_src_lang xcosShowBlockWarning
syn keyword sciFunctions xcosValidateBlockSet accept_func_default apifun_argindefault apifun_checkcomplex
syn keyword sciFunctions atomsRepositoryList colored_map_options createLayoutOptions crossover_ga_binary
syn keyword sciFunctions distfun_histocreate findmsifortcompiler flag_accuracy_level formatHallModuleTip
syn keyword sciFunctions generateBlockImages getPlotPropertyName getPreferencesValue getSurfPropertyName
syn keyword sciFunctions importScicosDiagram mutation_ga_default neldermead_function optimbase_configure
syn keyword sciFunctions optimbase_hasbounds optimbase_hasnlcons optimbase_outputcmd optimbase_outstruct
syn keyword sciFunctions optimbase_proj2bnds optimbase_terminate optimsimplex_center optimsimplex_dirmat
syn keyword sciFunctions optimsimplex_fvmean optimsimplex_getall optimsimplex_setall optimsimplex_shrink
syn keyword sciFunctions output_moga_default output_nsga_default selection_ga_random setPreferencesValue
syn keyword sciFunctions tbx_builder_gateway tbx_generate_pofile %hmS_k_hmS_generic apifun_checkoption
syn keyword sciFunctions apifun_checkscalar apifun_checksquare apifun_checkveccol apifun_checkvecrow
syn keyword sciFunctions apifun_checkvector assert_cond2reltol atomsGetLoadedPath atomsRepositoryAdd
syn keyword sciFunctions atomsRepositoryDel atomsRestoreConfig coding_ga_identity datatipGetEntities
syn keyword sciFunctions datatipGetSelected datatipSetSelected datatipSetTipStyle demo_folder_choice
syn keyword sciFunctions distfun_genericpdf distfun_plotintcdf div2mat_div2struct flag_impl_skip_nan
syn keyword sciFunctions formatBodePhaseTip formatHallPhaseTip formatPhaseplotTip formatSgridFreqTip
syn keyword sciFunctions formatZgridFreqTip generateBlockImage helptbx_helpupdate icacolumnpartition
syn keyword sciFunctions ilib_gen_Make_unix mutation_ga_binary nan_parallelcoords neigh_func_default
syn keyword sciFunctions neldermead_destroy neldermead_restart nmplot_historyplot optimbase_function
syn keyword sciFunctions optimbase_incriter optimplotfunccount optimsimplex_check optimsimplex_getfv
syn keyword sciFunctions optimsimplex_getve optimsimplex_setfv optimsimplex_setve tbx_builder_macros
syn keyword sciFunctions with_macros_source xcosBlockInterface xcosCodeGeneration apifun_checkflint
syn keyword sciFunctions apifun_checkloweq apifun_checkrange assert_checkequal assert_checkerror
syn keyword sciFunctions assert_checkfalse atomsAutoloadList atomsCategoryList atomsGetInstalled
syn keyword sciFunctions atomsSystemUpdate check_librarypath check_modules_xml configure_msifort
syn keyword sciFunctions createConstraints detectmsvc64tools distfun_betafitmm distfun_binofitmm
syn keyword sciFunctions distfun_histostat distfun_hygetable distfun_name2func distfun_poissstat
syn keyword sciFunctions distfun_tnormstat distfun_uniffitmm distfun_vectorrnd distfun_wblloglik
syn keyword sciFunctions firstnonsingleton flag_nans_occured formatGainplotTip get_figure_handle
syn keyword sciFunctions get_function_path getDiagramVersion getscilabkeywords ica_blocs_signals
syn keyword sciFunctions ilib_include_flag importXcosDiagram neldermead_search optimbase_checkx0
syn keyword sciFunctions optimbase_destroy optimbase_histget optimbase_histset optimbase_stoplog
syn keyword sciFunctions optimsimplex_getn optimsimplex_getx optimsimplex_setn optimsimplex_setx
syn keyword sciFunctions optimsimplex_size optimsimplex_sort optimsimplex_xbar output_ga_default
syn keyword sciFunctions recompilefunction setStringPosition specfun_factorial tbx_build_cleaner
syn keyword sciFunctions tbx_build_gateway uiGetChildrenNode uiGetNodePosition %cblock_c_cblock
syn keyword sciFunctions %cblock_f_cblock %TSIMPLEX_string %xlssheet_string accept_func_vfsa
syn keyword sciFunctions add_help_chapter apifun_checkdims apifun_checkgreq apifun_checkreal
syn keyword sciFunctions apifun_checktype apifun_expandvar assert_checktrue atomsAutoloadAdd
syn keyword sciFunctions atomsAutoloadDel atomsCheckModule atomsDepTreeShow atomsIsInstalled
syn keyword sciFunctions coding_ga_binary convert_to_float createBorderFont datatipGetStruct
syn keyword sciFunctions datatipRemoveAll datatipSetStruct del_help_chapter demo_file_choice
syn keyword sciFunctions distfun_betastat distfun_binostat distfun_chi2stat distfun_gamfitmm
syn keyword sciFunctions distfun_gammainc distfun_histocdf distfun_histoinv distfun_histopdf
syn keyword sciFunctions distfun_histornd distfun_hygestat distfun_inthisto distfun_lognstat
syn keyword sciFunctions distfun_logustat distfun_nbinstat distfun_ncx2stat distfun_normstat
syn keyword sciFunctions distfun_poisscdf distfun_poissinv distfun_poisspdf distfun_tnormcdf
syn keyword sciFunctions distfun_tnorminv distfun_tnormpdf distfun_tnormrnd distfun_unidstat
syn keyword sciFunctions distfun_unifstat distfun_wblfitmm findmsvccompiler formatBodeMagTip
syn keyword sciFunctions formatNyquistTip guicontrolcreate ilib_gen_cleaner ilib_gen_gateway
syn keyword sciFunctions instruction2code is_absolute_path nan_bland_altman nan_confusionmat
syn keyword sciFunctions nan_partcorrcoef nan_zScoreMedian neldermead_costf nmplot_configure
syn keyword sciFunctions nmplot_outputcmd optimsimplex_log optimsimplex_new remove_profiling
syn keyword sciFunctions replace_Ix_by_Fx specfun_gammainc specfun_ismember specfun_lambertw
syn keyword sciFunctions specfun_nchoosek tbx_build_blocks tbx_build_loader tbx_build_macros
syn keyword sciFunctions tbx_builder_help temp_law_default %_listvarinfile %TNELDER_string
syn keyword sciFunctions %TNMPLOT_string apifun_checklhs apifun_checkrhs assert_generror
syn keyword sciFunctions atomsSaveConfig atomsSystemInit check_classpath distfun_betacdf
syn keyword sciFunctions distfun_betainc distfun_betainv distfun_betapdf distfun_binocdf
syn keyword sciFunctions distfun_binoinv distfun_binopdf distfun_chi2cdf distfun_chi2inv
syn keyword sciFunctions distfun_chi2pdf distfun_erfcinv distfun_expstat distfun_gamstat
syn keyword sciFunctions distfun_geostat distfun_getpath distfun_hygecdf distfun_hygeinv
syn keyword sciFunctions distfun_hygepdf distfun_logncdf distfun_logninv distfun_lognpdf
syn keyword sciFunctions distfun_logucdf distfun_loguinv distfun_logupdf distfun_logurnd
syn keyword sciFunctions distfun_nbincdf distfun_nbininv distfun_nbinpdf distfun_ncfstat
syn keyword sciFunctions distfun_nctstat distfun_ncx2cdf distfun_ncx2inv distfun_ncx2pdf
syn keyword sciFunctions distfun_normcdf distfun_norminv distfun_normpdf distfun_unidcdf
syn keyword sciFunctions distfun_unidinv distfun_unidpdf distfun_unifcdf distfun_unifinv
syn keyword sciFunctions distfun_unifpdf distfun_wbllike distfun_wblplot distfun_wblstat
syn keyword sciFunctions expression2code getModelicaPath glx_list2struct glx_struct2list
syn keyword sciFunctions glx_xml2xstruct glx_xstruct2xml helptbx_getpath ica_dwresiduals
syn keyword sciFunctions icarowpartition ilib_gen_loader importScicosPal init_ga_default
syn keyword sciFunctions nan_andrewsplot nan_gplotmatrix neigh_func_vfsa neldermead_cget
syn keyword sciFunctions nmplot_function nns_nnplsrepeat nonreg_test_run rainbowcolormap
syn keyword sciFunctions reset_profiling setDefaultColor seteventhandler setPlotProperty
syn keyword sciFunctions setSurfProperty specfun_combine specfun_getpath tbx_builder_src
syn keyword sciFunctions TCL_CreateSlave test_on_columns uiGetParentNode xcosPalAddBlock
syn keyword sciFunctions !_deff_wrapper %TOPTIM_string %xlssheet_size atomsGetConfig
syn keyword sciFunctions atomsGetLoaded atomsSetConfig autumncolormap check_gateways
syn keyword sciFunctions check_versions classtestknnda conf_obs2pcent configure_msvc
syn keyword sciFunctions coppercolormap distfun_evstat distfun_expcdf distfun_expinv
syn keyword sciFunctions distfun_exppdf distfun_gamcdf distfun_gaminv distfun_gampdf
syn keyword sciFunctions distfun_geocdf distfun_geoinv distfun_geopdf distfun_ksstat
syn keyword sciFunctions distfun_mnstat distfun_ncfcdf distfun_ncfinv distfun_ncfpdf
syn keyword sciFunctions distfun_nctcdf distfun_nctinv distfun_nctpdf distfun_wblcdf
syn keyword sciFunctions distfun_wblfit distfun_wblinv distfun_wblpdf DominationRank
syn keyword sciFunctions formatBlackTip glx_div2struct glx_resreg2xml glx_struct2div
syn keyword sciFunctions glx_xml2resreg guialignements ilib_build_jar ilib_mex_build
syn keyword sciFunctions kernel_rebuild moc_accumarray moc_size_equal nan_meanAbsDev
syn keyword sciFunctions nan_percentile nan_plotmatrix nan_squareform neigh_func_csa
syn keyword sciFunctions neigh_func_fsa neldermead_get neldermead_log neldermead_new
syn keyword sciFunctions nmplot_contour nmplot_destroy nmplot_restart nns_buildbayes
syn keyword sciFunctions optimbase_cget pop_dtop_optim ResetFigureDDM specfun_pascal
syn keyword sciFunctions specfun_subset springcolormap summercolormap tbx_build_help
syn keyword sciFunctions temp_law_huang test_run_level translatepaths wintercolormap
syn keyword sciFunctions xcos_debug_gui %BevelBor_i_h %BorderCo_i_h %champdat_i_h
syn keyword sciFunctions %Compound_i_h %diagram_xcos %EmptyBor_i_h %EtchedBo_i_h
syn keyword sciFunctions %grayplot_i_h %GridBagC_i_h %GridCons_i_h %LineBord_i_h
syn keyword sciFunctions %MatteBor_i_h %NoBorder_i_h %NoLayout_i_h %OptBorde_i_h
syn keyword sciFunctions %OptGridB_i_h %OptNoLay_i_h %plist_string %SoftBeve_i_h
syn keyword sciFunctions %TitledBo_i_h add_profiling atomsAutoload atomsIsLoaded
syn keyword sciFunctions barhomogenize barycentermap calstackedpls datatipHilite
syn keyword sciFunctions datatipSetGUI demo_compiler demo_viewCode distfun_evcdf
syn keyword sciFunctions distfun_evinv distfun_evpdf distfun_fstat distfun_kscdf
syn keyword sciFunctions distfun_ksinv distfun_kspdf distfun_mnpdf distfun_tstat
syn keyword sciFunctions enlarge_shape get_file_path getColorIndex glx_xlist2xml
syn keyword sciFunctions glx_xml2xlist graypolarplot guicheckprops guimenueditor
syn keyword sciFunctions haveacompiler head_comments help_from_sci help_skeleton
syn keyword sciFunctions ilib_for_link ilib_gen_Make listfunctions listvarinfile
syn keyword sciFunctions moc_circshift moc_inpolygon moc_islogical moc_isnumeric
syn keyword sciFunctions mtlb_colordef mtlb_fftshift mtlb_isletter mtlb_legendre
syn keyword sciFunctions mtlb_linspace mtlb_semilogx mtlb_semilogy mtlb_sortrows
syn keyword sciFunctions mtlb_toeplitz nan_fscatter3 nan_medAbsDev nan_statistic
syn keyword sciFunctions nmplot_search numderivative oceancolormap optimbase_get
syn keyword sciFunctions optimbase_log optimbase_new optimbase_set optimplotfval
syn keyword sciFunctions pareto_filter resize_matrix specfun_expm1 specfun_log1p
syn keyword sciFunctions tbx_build_src temp_law_vfsa unit_test_run whitecolormap
syn keyword sciFunctions xcos_simulate xcosBlockEval xcosPalExport %cblock_size
syn keyword sciFunctions %hm_iconvert %i_contour2d %OptGrid_i_h %spb_cumprod
syn keyword sciFunctions ascii2string atomsInstall atomsVersion bonecolormap
syn keyword sciFunctions bytecodewalk cb_m2sci_gui convertindex coolcolormap
syn keyword sciFunctions createBorder createstruct createWindow distfun_fcdf
syn keyword sciFunctions distfun_finv distfun_fpdf distfun_list distfun_tcdf
syn keyword sciFunctions distfun_tinv distfun_tpdf fseek_origin generic_i_ce
syn keyword sciFunctions generic_i_hm generic_i_st graycolormap guiaxistight
syn keyword sciFunctions guipropsedit ica_sort_ics ilib_compile loadXcosLibs
syn keyword sciFunctions moc_filtfilt moc_gaussian moc_ismember moc_isvector
syn keyword sciFunctions mtlb_choices mtlb_cumprod mtlb_dec2hex mtlb_findstr
syn keyword sciFunctions mtlb_fprintf mtlb_isfield mtlb_isspace mtlb_logical
syn keyword sciFunctions mtlb_meshdom mtlb_num2str mtlb_realmax mtlb_realmin
syn keyword sciFunctions mtlb_sprintf mtlb_strcmpi mtlb_strfind mtlb_subplot
syn keyword sciFunctions nan_classify nan_conv2nan nan_corrcoef nan_crosstab
syn keyword sciFunctions nan_ecdfhist nan_errorbar nan_grpstats nan_gscatter
syn keyword sciFunctions nan_harmmean nan_hist2res nan_kurtosis nan_mgrp2idx
syn keyword sciFunctions nan_normplot nan_probplot nan_quantile nan_rankcorr
syn keyword sciFunctions nan_skewness nan_spearman nan_tiedrank nan_train_sc
syn keyword sciFunctions nan_trimmean nicholschart nns_simulbis nns_simulter
syn keyword sciFunctions paramfplot2d pinkcolormap pop_dextract ReadHBSparse
syn keyword sciFunctions remove_param show_margins st_i_generic temp_law_csa
syn keyword sciFunctions temp_law_fsa testexamples uiConcatTree uiCreateNode
syn keyword sciFunctions uiCreateTree uiDeleteNode uiEqualsTree uiInsertNode
syn keyword sciFunctions warnobsolete with_javasci xcos_compile %b_iconvert
syn keyword sciFunctions %BevelBor_p %BorderCo_p %BorderFo_p %cblock_c_s
syn keyword sciFunctions %Compound_p %datatips_p %EmptyBor_p %EtchedBo_p
syn keyword sciFunctions %grand_perm %GridBagC_p %GridCons_p %hm_cumprod
syn keyword sciFunctions %hm_dsearch %i_mfprintf %i_msprintf %LineBord_p
syn keyword sciFunctions %MatteBor_p %mps_string %msp_length %msp_sparse
syn keyword sciFunctions %msp_spones %NoBorder_p %NoLayout_p %OptBorde_p
syn keyword sciFunctions %OptGridB_p %OptNoLay_p %s_c_cblock %s_f_cblock
syn keyword sciFunctions %SoftBeve_p %sp_cumprod %spb_cumsum %TitledBo_p
syn keyword sciFunctions %TSIMPLEX_p %xlssheet_e %xlssheet_p atomsRemove
syn keyword sciFunctions atomsResize atomsSearch atomsUpdate checkXYPair
syn keyword sciFunctions classforwda classmarkov classtestxx covsel_auto
syn keyword sciFunctions covsel_mncn datatipsGUI demo_choose eigenmarkov
syn keyword sciFunctions example_run findContour generic_i_h generic_i_s
syn keyword sciFunctions get_profile getLineSpec ghdl_fields glx_div2xml
syn keyword sciFunctions glx_mat2div glx_tab2div glx_x3D2xml glx_xml2x3D
syn keyword sciFunctions groupcreate hotcolormap householder hsvcolormap
syn keyword sciFunctions jetcolormap loadmatfile matfile2sci moc_cholinv
syn keyword sciFunctions moc_columns moc_corrcov moc_logical moc_polyfit
syn keyword sciFunctions moc_polyval moc_postpad moc_spdiags moc_squeeze
syn keyword sciFunctions mtlb_cumsum mtlb_delete mtlb_double mtlb_filter
syn keyword sciFunctions mtlb_fliplr mtlb_format mtlb_fscanf mtlb_fwrite
syn keyword sciFunctions mtlb_loglog mtlb_median mtlb_pcolor mtlb_setstr
syn keyword sciFunctions mtlb_sscanf mtlb_strcmp mtlb_strrep mtlb_uint16
syn keyword sciFunctions mtlb_uint32 mw2formulae nan_betainc nan_boxplot
syn keyword sciFunctions nan_cat2bin nan_cdfplot nan_cluster nan_detrend
syn keyword sciFunctions nan_geomean nan_getpath nan_grp2idx nan_linkage
syn keyword sciFunctions nan_meandev nan_partest nan_prctile nan_regress
syn keyword sciFunctions nan_rocplot nan_test_sc nan_trimean nmplot_cget
syn keyword sciFunctions optim_nsga2 plotprofile prettyprint savematfile
syn keyword sciFunctions sciGUI_init showprofile simufilters standardize
syn keyword sciFunctions tbx_builder ui_observer xmltoformat %_grayplot
syn keyword sciFunctions %_Matplot1 %_param3d1 %_strsplit %_xstringb
syn keyword sciFunctions %b_cumprod %c_dsearch %ce_matrix %ce_string
syn keyword sciFunctions %div_a_div %div_c_div %div_d_div %div_f_div
syn keyword sciFunctions %div_m_div %div_s_div %div_x_div %fptr_i_st
syn keyword sciFunctions %hm_bool2s %hm_cumsum %hm_degree %hm_isreal
syn keyword sciFunctions %hm_matrix %hm_median %hm_string %i_contour
syn keyword sciFunctions %i_dsearch %i_Matplot %i_mprintf %i_plot2d1
syn keyword sciFunctions %i_plot2d2 %ip_string %l_isequal %lss_a_lss
syn keyword sciFunctions %lss_c_lss %lss_f_lss %lss_i_lss %lss_l_lss
syn keyword sciFunctions %lss_m_lss %lss_n_lss %lss_o_lss %lss_r_lss
syn keyword sciFunctions %lss_s_lss %lss_v_lss %mc_string %msp_n_msp
syn keyword sciFunctions %msp_o_msp %OptGrid_p %p_cumprod %r_cumprod
syn keyword sciFunctions %sp_cumsum %sp_length %sp_string %spb_g_spb
syn keyword sciFunctions %spb_h_spb %st_i_fptr %st_matrix %st_string
syn keyword sciFunctions %ticks_i_h %TNELDER_p %TNMPLOT_p adapthresh
syn keyword sciFunctions applyknnda bode_asymp cbAtomsGui check2dFun
syn keyword sciFunctions classcopda classknnda classplsda clean_help
syn keyword sciFunctions coloredmap daeoptions demo_begin dendrogram
syn keyword sciFunctions derivative detrending div2struct edit_error
syn keyword sciFunctions fcontour2d fieldnames find_links fminsearch
syn keyword sciFunctions format_txt fun2string ged_insert guibuilder
syn keyword sciFunctions guigencode guigetfile ilib_build init_param
syn keyword sciFunctions isLeapYear iterthresh launchtest list_param
syn keyword sciFunctions maskthresh memberpred membership moc_fliplr
syn keyword sciFunctions moc_flipud moc_prepad moc_unique moc_unwrap
syn keyword sciFunctions moc_xcorr2 mps2linpro mtlb_close mtlb_error
syn keyword sciFunctions mtlb_exist mtlb_false mtlb_fopen mtlb_fread
syn keyword sciFunctions mtlb_image mtlb_int16 mtlb_int32 mtlb_logic
syn keyword sciFunctions mtlb_lower mtlb_randn mtlb_rcond mtlb_uint8
syn keyword sciFunctions mtlb_upper mtlb_zeros nan_center nan_cumsum
syn keyword sciFunctions nan_decovm nan_errorb nan_filter nan_histo2
syn keyword sciFunctions nan_histo3 nan_histo4 nan_kmeans nan_meansq
syn keyword sciFunctions nan_median nan_moment nan_qqplot nan_zscore
syn keyword sciFunctions nmplot_get nmplot_log nmplot_new odeoptions
syn keyword sciFunctions optim_moga optim_nsga optimplotx OS_Version
syn keyword sciFunctions PlotSparse randpencil sci_sparse scisptdemo
syn keyword sciFunctions Sfgrayplot squarewave sumskipnan test_clean
syn keyword sciFunctions TitleLabel uiDumpTree uiFindNode vectorfind
syn keyword sciFunctions xcosPalAdd %_EVoid_p %_Matplot %_param3d
syn keyword sciFunctions %_plot2d1 %_plot2d2 %_plot2d3 %_plot2d4
syn keyword sciFunctions %_plot3d1 %_sodload %b_cumsum %b_matrix
syn keyword sciFunctions %b_string %bicgstab %c_matrix %cblock_e
syn keyword sciFunctions %cblock_p %h_delete %h_matrix %hm_floor
syn keyword sciFunctions %hm_grand %hm_gsort %hm_isnan %hm_round
syn keyword sciFunctions %hm_stdev %hm_zeros %i_bezout %i_champ1
syn keyword sciFunctions %i_length %i_plot2d %i_string %lss_i_ce
syn keyword sciFunctions %lss_i_st %lss_norm %lss_ones %lss_rand
syn keyword sciFunctions %lss_size %msp_find %msp_i_st %msp_maxi
syn keyword sciFunctions %p_cumsum %p_matrix %p_string %r_cumsum
syn keyword sciFunctions %r_matrix %r_string %s_matrix %sp_floor
syn keyword sciFunctions %sp_grand %sp_gsort %sp_round %spb_diag
syn keyword sciFunctions %spb_i_ce %spb_i_st %spb_prod %spb_tril
syn keyword sciFunctions %spb_triu %st_i_lss %st_i_msp %st_i_spb
syn keyword sciFunctions %TOPTIM_p add_param ana_style atomsList
syn keyword sciFunctions atomsLoad atomsQuit atomsShow atomsTest
syn keyword sciFunctions bench_run binaryand binaryxor bricontra
syn keyword sciFunctions calsimpls caltestxx centering clipboard
syn keyword sciFunctions colsierra companion condestsp contour2d
syn keyword sciFunctions createfun dcsv2div2 dispfiles edit_curv
syn keyword sciFunctions factorial fgrayplot filt_sinc find_freq
syn keyword sciFunctions gapremove genmarkov get_param ghdl2tree
syn keyword sciFunctions hallchart icascores ifftshift indexseek
syn keyword sciFunctions integrate intersect inv_coeff invsyslin
syn keyword sciFunctions iscellstr JSONParse karmarkar lindquist
syn keyword sciFunctions listfiles lmisolver m2sci_gui mfile2sci
syn keyword sciFunctions moc_angle moc_conv2 moc_fzero moc_randi
syn keyword sciFunctions moc_range moc_rot90 moc_sumsq moc_xcorr
syn keyword sciFunctions mtlb_axes mtlb_axis mtlb_beta mtlb_cond
syn keyword sciFunctions mtlb_diag mtlb_diff mtlb_echo mtlb_eval
syn keyword sciFunctions mtlb_find mtlb_full mtlb_grid mtlb_hold
syn keyword sciFunctions mtlb_ifft mtlb_int8 mtlb_mean mtlb_mesh
syn keyword sciFunctions mtlb_more mtlb_ones mtlb_plot mtlb_prod
syn keyword sciFunctions mtlb_rand mtlb_size mtlb_sort mtlb_tril
syn keyword sciFunctions mtlb_triu mtlb_true mtlb_type nan_anova
syn keyword sciFunctions nan_ecovm nan_histc nan_histo nan_kappa
syn keyword sciFunctions nan_mahal nan_nhist nan_pdist nan_ranks
syn keyword sciFunctions nan_sumsq nan_xcovf nan_y2res nancumsum
syn keyword sciFunctions nand2mean nanmedian nanreglin nns_simul
syn keyword sciFunctions pds_apply phaseplot plotframe polarplot
syn keyword sciFunctions pop_dtune set_param Sgrayplot spaninter
syn keyword sciFunctions statislda titlepage toolboxes tree_show
syn keyword sciFunctions tree2code variancef x_choices xmltohtml
syn keyword sciFunctions %_champ1 %_plot2d %_plot3d %_unwrap
syn keyword sciFunctions %_xtitle %b_c_spb %b_f_spb %b_g_spb
syn keyword sciFunctions %b_grand %b_h_spb %b_i_spb %c_grand
syn keyword sciFunctions %c_i_lss %ce_c_ce %ce_f_ce %ce_i_ce
syn keyword sciFunctions %ce_i_st %ce_size %div_r_s %hm_1_hm
syn keyword sciFunctions %hm_2_hm %hm_3_hm %hm_4_hm %hm_a_hm
syn keyword sciFunctions %hm_c_hm %hm_ceil %hm_conj %hm_d_hm
syn keyword sciFunctions %hm_f_hm %hm_find %hm_g_hm %hm_h_hm
syn keyword sciFunctions %hm_i_ce %hm_i_hm %hm_i_st %hm_imag
syn keyword sciFunctions %hm_j_hm %hm_k_hm %hm_mean %hm_n_hm
syn keyword sciFunctions %hm_o_hm %hm_ones %hm_prod %hm_q_hm
syn keyword sciFunctions %hm_rand %hm_real %hm_s_hm %hm_sign
syn keyword sciFunctions %hm_size %hm_sqrt %hm_x_hm %i_ascii
syn keyword sciFunctions %i_champ %i_grand %i_round %ip_i_st
syn keyword sciFunctions %ip_n_ip %ip_o_ip %ip_part %lss_a_p
syn keyword sciFunctions %lss_a_r %lss_a_s %lss_c_p %lss_c_r
syn keyword sciFunctions %lss_c_s %lss_eye %lss_f_p %lss_f_r
syn keyword sciFunctions %lss_f_s %lss_i_p %lss_i_r %lss_i_s
syn keyword sciFunctions %lss_inv %lss_l_p %lss_l_r %lss_l_s
syn keyword sciFunctions %lss_m_p %lss_m_r %lss_m_s %lss_n_p
syn keyword sciFunctions %lss_n_r %lss_n_s %lss_o_p %lss_o_r
syn keyword sciFunctions %lss_o_s %lss_r_p %lss_r_r %lss_r_s
syn keyword sciFunctions %lss_s_p %lss_s_r %lss_s_s %lss_v_p
syn keyword sciFunctions %lss_v_r %lss_v_s %mc_i_st %mc_n_st
syn keyword sciFunctions %mc_o_st %msp_a_s %msp_abs %msp_i_s
syn keyword sciFunctions %msp_m_s %msp_nnz %p_a_lss %p_c_lss
syn keyword sciFunctions %p_f_lss %p_grand %p_i_lss %p_l_lss
syn keyword sciFunctions %p_m_lss %p_n_lss %p_o_lss %p_r_lss
syn keyword sciFunctions %p_s_lss %p_v_lss %plist_p %r_a_lss
syn keyword sciFunctions %r_c_lss %r_clean %r_f_lss %r_i_lss
syn keyword sciFunctions %r_l_lss %r_m_lss %r_n_lss %r_o_lss
syn keyword sciFunctions %r_r_lss %r_s_lss %r_v_lss %s_a_lss
syn keyword sciFunctions %s_a_msp %s_c_lss %s_f_lss %s_grand
syn keyword sciFunctions %s_i_div %s_i_lss %s_i_spb %s_l_lss
syn keyword sciFunctions %s_log10 %s_m_div %s_m_lss %s_m_msp
syn keyword sciFunctions %s_n_lss %s_o_lss %s_r_lss %s_s_lss
syn keyword sciFunctions %s_v_lss %sp_a_sp %sp_ceil %sp_conj
syn keyword sciFunctions %sp_d_sp %sp_diag %sp_i_ce %sp_i_sp
syn keyword sciFunctions %sp_i_st %sp_k_sp %sp_l_sp %sp_norm
syn keyword sciFunctions %sp_prod %sp_q_sp %sp_r_sp %sp_s_sp
syn keyword sciFunctions %sp_sqrt %sp_tril %sp_triu %sp_y_sp
syn keyword sciFunctions %sp_z_sp %spb_and %spb_c_b %spb_f_b
syn keyword sciFunctions %spb_g_b %spb_h_b %spb_i_b %spb_i_h
syn keyword sciFunctions %spb_sum %st_c_st %st_f_st %st_i_ip
syn keyword sciFunctions %st_i_sp %st_i_st %st_n_mc %st_o_mc
syn keyword sciFunctions %st_o_tl %st_size add_demo asciimat
syn keyword sciFunctions atomsGui avgfilt2 binaryor binomial
syn keyword sciFunctions bloc2exp bytecode calendar calikpls
syn keyword sciFunctions calnnpls calridge calvodka cat_code
syn keyword sciFunctions cell2mat cepstrum cheb1mag cheb2mag
syn keyword sciFunctions classfda colcompr colinout colorbar
syn keyword sciFunctions colordef colregul conj2dis conjgrad
syn keyword sciFunctions cont_frm cont_mat contourf convol2d
syn keyword sciFunctions corrplot csv2div2 ctr_gram cvclass2
syn keyword sciFunctions cvgroups dcsv2div demo_end demo_gui
syn keyword sciFunctions demo_run diophant dis2conj div2dcsv
syn keyword sciFunctions dragrect dt_ility fcontour fftshift
syn keyword sciFunctions findABCD findx0BD fourplan fplot3d1
syn keyword sciFunctions fsfirlin fullfile g_margin gainplot
syn keyword sciFunctions genfac3d getcolor getshell gettklib
syn keyword sciFunctions getvalue gfrancis graduate h_inf_st
syn keyword sciFunctions hankelsv histplot hypermat icasigns
syn keyword sciFunctions iirgroup imrep2ss inistate interpln
syn keyword sciFunctions intsplin is_param iscolumn ismatrix
syn keyword sciFunctions isscalar issparse issquare isstruct
syn keyword sciFunctions isvector jre_path lex_sort linsolve
syn keyword sciFunctions linspace list2vec loadwave logspace
syn keyword sciFunctions lqg2stan m_circle macrovar makecell
syn keyword sciFunctions mapsound markp2ss medfilt2 meshgrid
syn keyword sciFunctions moc_conv moc_corr moc_deal moc_ifft
syn keyword sciFunctions moc_null moc_poly moc_rows moc_xcov
syn keyword sciFunctions mstr2sci mtlb_all mtlb_any mtlb_box
syn keyword sciFunctions mtlb_cov mtlb_dir mtlb_eye mtlb_fft
syn keyword sciFunctions mtlb_get mtlb_imp mtlb_isa mtlb_max
syn keyword sciFunctions mtlb_min mtlb_std mtlb_sum mtlb_var
syn keyword sciFunctions mvcorrel nan_covm nan_ecdf nan_hist
syn keyword sciFunctions nan_mean nan_xval nanmeanf nanstdev
syn keyword sciFunctions narsimul nextpow2 nns_init noisegen
syn keyword sciFunctions num2cell obs_gram observer obsv_mat
syn keyword sciFunctions optim_ga optim_sa optimget optimset
syn keyword sciFunctions orthProj p_margin pcaapply pds_calc
syn keyword sciFunctions pertrans pfactors phasemag pop_dtop
syn keyword sciFunctions popapply princomp projspec regapply
syn keyword sciFunctions rgb2name rhs2code ric_desc rowcompr
syn keyword sciFunctions rowinout rowregul rowshuff savewave
syn keyword sciFunctions scsv2sci show_pca skeleton soundsec
syn keyword sciFunctions spanplus specfact st_ility starcmap
syn keyword sciFunctions statgain str2conj test_run thrownan
syn keyword sciFunctions toeplitz tokenpos trianfml trimmean
syn keyword sciFunctions trisolve variance vec2list wavwrite
syn keyword sciFunctions wfir_gui whereami who_user x_matrix
syn keyword sciFunctions xcos_run xmltojar xmltopdf xmltoweb
syn keyword sciFunctions xstringl yulewalk %_champ %_gsort
syn keyword sciFunctions %_rlist %0_i_st %3d_i_h %b_diag
syn keyword sciFunctions %b_i_ce %b_i_hm %b_i_sp %b_i_st
syn keyword sciFunctions %b_n_hm %b_o_hm %b_prod %b_tril
syn keyword sciFunctions %b_triu %c_diag %c_i_ce %c_i_hm
syn keyword sciFunctions %c_i_st %c_n_st %c_o_st %c_ones
syn keyword sciFunctions %c_rand %c_tril %c_triu %ce_i_s
syn keyword sciFunctions %choose %h_copy %h_i_st %h_load
syn keyword sciFunctions %h_save %hm_1_s %hm_2_s %hm_3_s
syn keyword sciFunctions %hm_4_s %hm_a_r %hm_a_s %hm_abs
syn keyword sciFunctions %hm_and %hm_cos %hm_d_s %hm_exp
syn keyword sciFunctions %hm_eye %hm_i_b %hm_i_h %hm_i_i
syn keyword sciFunctions %hm_i_p %hm_i_r %hm_i_s %hm_int
syn keyword sciFunctions %hm_j_s %hm_k_s %hm_log %hm_m_p
syn keyword sciFunctions %hm_m_r %hm_m_s %hm_max %hm_min
syn keyword sciFunctions %hm_n_b %hm_n_c %hm_n_i %hm_n_p
syn keyword sciFunctions %hm_n_s %hm_o_b %hm_o_c %hm_o_i
syn keyword sciFunctions %hm_o_p %hm_o_s %hm_r_s %hm_s_r
syn keyword sciFunctions %hm_s_s %hm_sin %hm_sum %hm_x_p
syn keyword sciFunctions %hm_x_s %i_i_ce %i_i_hm %i_i_st
syn keyword sciFunctions %i_sign %ip_a_s %ip_m_s %ip_s_s
syn keyword sciFunctions %l_i_st %l_n_st %l_o_st %lt_i_s
syn keyword sciFunctions %mc_i_h %mc_i_s %p_i_ce %p_i_hm
syn keyword sciFunctions %p_i_st %p_m_hm %p_o_sp %p_part
syn keyword sciFunctions %p_prod %p_simp %p_x_hm %r_a_hm
syn keyword sciFunctions %r_diag %r_i_ce %r_i_hm %r_i_st
syn keyword sciFunctions %r_m_hm %r_norm %r_ones %r_prod
syn keyword sciFunctions %r_rand %r_s_hm %r_simp %r_size
syn keyword sciFunctions %r_tril %r_triu %r_varn %s_1_hm
syn keyword sciFunctions %s_2_hm %s_3_hm %s_4_hm %s_a_hm
syn keyword sciFunctions %s_a_ip %s_a_sp %s_c_sp %s_d_sp
syn keyword sciFunctions %s_f_sp %s_i_ce %s_i_hm %s_i_sp
syn keyword sciFunctions %s_i_st %s_k_hm %s_k_sp %s_l_hm
syn keyword sciFunctions %s_l_sp %s_m_hm %s_m_ip %s_n_hm
syn keyword sciFunctions %s_n_st %s_o_hm %s_o_st %s_q_hm
syn keyword sciFunctions %s_q_sp %s_r_sp %s_s_hm %s_s_ip
syn keyword sciFunctions %s_s_sp %s_simp %s_x_hm %s_y_sp
syn keyword sciFunctions %s_z_sp %sp_a_s %sp_and %sp_c_s
syn keyword sciFunctions %sp_cos %sp_d_s %sp_det %sp_exp
syn keyword sciFunctions %sp_f_s %sp_i_h %sp_i_s %sp_int
syn keyword sciFunctions %sp_inv %sp_k_s %sp_l_s %sp_max
syn keyword sciFunctions %sp_min %sp_p_s %sp_q_s %sp_r_s
syn keyword sciFunctions %sp_s_s %sp_sin %sp_sum %sp_y_s
syn keyword sciFunctions %sp_z_s %spb_or %st_i_b %st_i_c
syn keyword sciFunctions %st_i_h %st_i_i %st_i_p %st_i_r
syn keyword sciFunctions %st_i_s %st_n_c %st_n_l %st_n_p
syn keyword sciFunctions %st_n_s %st_o_c %st_o_l %st_o_p
syn keyword sciFunctions %st_o_s addmenu analyze arma2ss
syn keyword sciFunctions arsimul augment auwrite balreal
syn keyword sciFunctions bin2dec bloc2ss buttmag ccontrg
syn keyword sciFunctions cellstr chsolve cls2dls cmb_lin
syn keyword sciFunctions cmndred cmoment colcomp comet3d
syn keyword sciFunctions complex cond2sp contour contrss
syn keyword sciFunctions corrmat cspcana csv2div cvclass
syn keyword sciFunctions daapply datafit datenum datevec
syn keyword sciFunctions dec2bin dec2hex dec2oct derivat
syn keyword sciFunctions detrend diacmap dirname div2csv
syn keyword sciFunctions div2mat div2tab dllinfo dotcmap
syn keyword sciFunctions ell1mag emaxseg entropy eval3dp
syn keyword sciFunctions factors findBDK findobj flipdim
syn keyword sciFunctions fplot2d fplot3d frep2tf fstabst
syn keyword sciFunctions fullrfk geomean harmean hex2dec
syn keyword sciFunctions hilbert holdoff hsv2rgb htrianr
syn keyword sciFunctions icajade ind2sub interp1 inttrap
syn keyword sciFunctions isempty isfield isoview justify
syn keyword sciFunctions kcmeans kroneck lcmdiag leastsq
syn keyword sciFunctions legends linkage lmitool lqg_ltr
syn keyword sciFunctions macglov manedit mdelete members
syn keyword sciFunctions menubar minreal moc_cov moc_fft
syn keyword sciFunctions mtlb_is mtlb_qr mtlb_qz mvvacov
syn keyword sciFunctions nan_cor nan_cov nan_fss nan_iqr
syn keyword sciFunctions nan_mad nan_rms nan_sem nan_std
syn keyword sciFunctions nan_var nanmean nthroot num2str
syn keyword sciFunctions numdiff nyquist obscont oct2dec
syn keyword sciFunctions outlier padding pencost penlaur
syn keyword sciFunctions permute pixDist playsnd plot3d2
syn keyword sciFunctions plot3d3 pmodulo pol2des pol2str
syn keyword sciFunctions polfact profile projaff qpsolve
syn keyword sciFunctions quaskro rafiter readxls regplot
syn keyword sciFunctions reorder repfreq riccati routh_t
syn keyword sciFunctions rowcomp samplef scaling sci2exp
syn keyword sciFunctions scitest secto3d setdiff spantwo
syn keyword sciFunctions spzeros sqrform squeeze ssprint
syn keyword sciFunctions strange strcmpi strseek sub2ind
syn keyword sciFunctions subplot sysconv sysdiag sysfact
syn keyword sciFunctions syssize systmat time_id trzeros
syn keyword sciFunctions twinkle uitable vanderm wavread
syn keyword sciFunctions wcenter weekday winlist with_tk
syn keyword sciFunctions xcosPal xgetech xmltops xsetech
syn keyword sciFunctions zeropen %_save %_xget %_xset
syn keyword sciFunctions %b_a_b %b_a_s %b_c_s %b_d_s
syn keyword sciFunctions %b_f_s %b_g_s %b_h_s %b_i_b
syn keyword sciFunctions %b_i_h %b_i_s %b_l_b %b_l_s
syn keyword sciFunctions %b_m_b %b_m_s %b_p_s %b_r_b
syn keyword sciFunctions %b_r_s %b_s_b %b_s_s %b_sum
syn keyword sciFunctions %b_x_b %b_x_s %c_a_c %c_b_c
syn keyword sciFunctions %c_b_s %c_eye %c_f_s %c_i_c
syn keyword sciFunctions %c_i_h %c_i_r %c_i_s %c_n_l
syn keyword sciFunctions %c_o_l %dir_p %div_e %div_p
syn keyword sciFunctions %div_t %h_get %h_i_h %h_set
syn keyword sciFunctions %hm_or %i_1_s %i_2_s %i_3_s
syn keyword sciFunctions %i_4_s %i_a_i %i_a_s %i_and
syn keyword sciFunctions %i_b_s %i_d_i %i_d_s %i_fft
syn keyword sciFunctions %i_g_i %i_gcd %i_h_i %i_i_h
syn keyword sciFunctions %i_i_i %i_i_s %i_j_i %i_j_s
syn keyword sciFunctions %i_l_s %i_lcm %i_m_i %i_m_s
syn keyword sciFunctions %i_n_s %i_o_s %i_p_i %i_p_s
syn keyword sciFunctions %i_q_s %i_r_i %i_r_s %i_s_i
syn keyword sciFunctions %i_s_s %i_x_i %i_x_s %l_i_h
syn keyword sciFunctions %l_i_s %l_n_c %l_n_l %l_n_m
syn keyword sciFunctions %l_n_p %l_n_s %l_o_c %l_o_l
syn keyword sciFunctions %l_o_m %l_o_p %l_o_s %lss_e
syn keyword sciFunctions %lss_s %lss_t %m_n_l %m_o_l
syn keyword sciFunctions %mps_p %msp_e %msp_p %msp_t
syn keyword sciFunctions %p_a_r %p_c_r %p_d_p %p_d_r
syn keyword sciFunctions %p_d_s %p_det %p_f_r %p_i_h
syn keyword sciFunctions %p_i_p %p_i_r %p_i_s %p_inv
syn keyword sciFunctions %p_j_s %p_k_p %p_k_r %p_k_s
syn keyword sciFunctions %p_l_p %p_l_r %p_l_s %p_m_r
syn keyword sciFunctions %p_n_l %p_n_r %p_o_l %p_o_r
syn keyword sciFunctions %p_p_s %p_q_p %p_q_r %p_q_s
syn keyword sciFunctions %p_r_p %p_r_r %p_r_s %p_s_r
syn keyword sciFunctions %p_sum %p_v_p %p_v_r %p_v_s
syn keyword sciFunctions %p_x_r %p_y_p %p_y_r %p_y_s
syn keyword sciFunctions %p_z_p %p_z_r %p_z_s %r_a_p
syn keyword sciFunctions %r_a_r %r_a_s %r_c_p %r_c_r
syn keyword sciFunctions %r_c_s %r_d_p %r_d_r %r_d_s
syn keyword sciFunctions %r_det %r_eye %r_f_p %r_f_r
syn keyword sciFunctions %r_f_s %r_i_p %r_i_r %r_i_s
syn keyword sciFunctions %r_inv %r_j_s %r_k_p %r_k_r
syn keyword sciFunctions %r_k_s %r_l_p %r_l_r %r_l_s
syn keyword sciFunctions %r_m_p %r_m_r %r_m_s %r_n_p
syn keyword sciFunctions %r_n_r %r_n_s %r_o_p %r_o_r
syn keyword sciFunctions %r_o_s %r_p_s %r_q_p %r_q_r
syn keyword sciFunctions %r_q_s %r_r_p %r_r_r %r_r_s
syn keyword sciFunctions %r_s_p %r_s_r %r_s_s %r_sum
syn keyword sciFunctions %r_v_p %r_v_r %r_v_s %r_x_p
syn keyword sciFunctions %r_x_r %r_x_s %r_y_p %r_y_r
syn keyword sciFunctions %r_y_s %r_z_p %r_z_r %r_z_s
syn keyword sciFunctions %s_1_i %s_2_i %s_3_i %s_4_i
syn keyword sciFunctions %s_a_b %s_a_i %s_a_r %s_and
syn keyword sciFunctions %s_b_i %s_b_s %s_c_b %s_c_r
syn keyword sciFunctions %s_d_b %s_d_i %s_d_p %s_d_r
syn keyword sciFunctions %s_f_b %s_f_r %s_g_b %s_g_s
syn keyword sciFunctions %s_h_b %s_h_s %s_i_b %s_i_c
syn keyword sciFunctions %s_i_h %s_i_i %s_i_p %s_i_r
syn keyword sciFunctions %s_i_s %s_j_i %s_k_p %s_k_r
syn keyword sciFunctions %s_l_b %s_l_i %s_l_p %s_l_r
syn keyword sciFunctions %s_l_s %s_m_b %s_m_i %s_m_r
syn keyword sciFunctions %s_n_i %s_n_l %s_n_r %s_o_i
syn keyword sciFunctions %s_o_l %s_o_r %s_p_b %s_p_i
syn keyword sciFunctions %s_pow %s_q_i %s_q_p %s_q_r
syn keyword sciFunctions %s_r_b %s_r_i %s_r_p %s_r_r
syn keyword sciFunctions %s_r_s %s_s_b %s_s_i %s_s_r
syn keyword sciFunctions %s_v_p %s_v_r %s_v_s %s_x_b
syn keyword sciFunctions %s_x_i %s_x_r %s_y_p %s_y_r
syn keyword sciFunctions %s_z_p %s_z_r %sp_or %spb_e
syn keyword sciFunctions %xls_e %xls_p acoshm adj2sp
syn keyword sciFunctions aff2ab analpf arma2p armax1
syn keyword sciFunctions asinhm atanhm auread bitand
syn keyword sciFunctions bitcmp bitget bitset bitxor
syn keyword sciFunctions blanks bvodeS calerf calfrq
syn keyword sciFunctions calmlr calpcr calpls cdfsnk
syn keyword sciFunctions center cfspec chepol chfact
syn keyword sciFunctions comdim convol copfac correl
syn keyword sciFunctions covmat covsel cspect curves
syn keyword sciFunctions des2ss des2tf determ dhnorm
syn keyword sciFunctions dsimul editor eomday equil1
syn keyword sciFunctions erfinv errbar eval3d fac3d1
syn keyword sciFunctions factor faurre fchamp filter
syn keyword sciFunctions findAC forwda freson fspecg
syn keyword sciFunctions ftuneq fullrf G_make gamitg
syn keyword sciFunctions genlib givens glever gschur
syn keyword sciFunctions h_norm h2norm hermit hist3d
syn keyword sciFunctions holdon horner iirmod im_inv
syn keyword sciFunctions intdec iscell isconj isdisj
syn keyword sciFunctions islist kernel kscmap legend
syn keyword sciFunctions lin2mu linpro locate median
syn keyword sciFunctions modulo moment mtlb_0 mtlb_a
syn keyword sciFunctions mtlb_e mtlb_i mtlb_l mtlb_s
syn keyword sciFunctions mtlb_t mu2lin nandel nanmax
syn keyword sciFunctions nanmin nansum NDcost ndgrid
syn keyword sciFunctions nehari obsvss parrot pen2ea
syn keyword sciFunctions pencan perctl prbs_a primes
syn keyword sciFunctions projsl psmall pspect quapro
syn keyword sciFunctions recons reglin remezb replot
syn keyword sciFunctions repmat rotate sample savgol
syn keyword sciFunctions sierra sm2des smooth sp2adj
syn keyword sciFunctions sprand sqroot square srfaur
syn keyword sciFunctions ss2des ssrand stabil statis
syn keyword sciFunctions stdevf struct svplot syslin
syn keyword sciFunctions system tf2des trfmod typeof
syn keyword sciFunctions unique unix_g unix_s unix_w
syn keyword sciFunctions unix_x unpack unwrap wiener
syn keyword sciFunctions wigner window xclear xlabel
syn keyword sciFunctions xrpoly ylabel zlabel zpbutt
syn keyword sciFunctions %_fec %ar_p %bicg %ce_6
syn keyword sciFunctions %ce_e %ce_p %ce_t %hm_5
syn keyword sciFunctions %hm_e %hm_p %hm_s %i_or
syn keyword sciFunctions %ip_p %s_or %sp_e %st_6
syn keyword sciFunctions %st_e %st_p %st_t abinv
syn keyword sciFunctions acom1 acosd acosh acosm
syn keyword sciFunctions acotd acoth acscd acsch
syn keyword sciFunctions aplat arhnk armac armax
syn keyword sciFunctions asecd asech asind asinh
syn keyword sciFunctions asinm atand atanh atanm
syn keyword sciFunctions bilin bitor black bstap
syn keyword sciFunctions cainv canon ccswa clock
syn keyword sciFunctions close coffg comet copda
syn keyword sciFunctions coshm cothm covar cross
syn keyword sciFunctions cvreg dbphi denom epred
syn keyword sciFunctions eqfir eqiir equil etime
syn keyword sciFunctions evans evstr fac3d ffilt
syn keyword sciFunctions findm findR frfit frmag
syn keyword sciFunctions fspec ftest gcare gfare
syn keyword sciFunctions gmres group gspec gtild
syn keyword sciFunctions h_inf hiseq histc iirlp
syn keyword sciFunctions ikpls input invrs isinf
syn keyword sciFunctions isnan isrow kcmap knnda
syn keyword sciFunctions kpure krac2 lattn lattp
syn keyword sciFunctions levin linfn meanf minss
syn keyword sciFunctions mkdir mrfit ndims nnpls
syn keyword sciFunctions normc numer pcana pdist
syn keyword sciFunctions perms plsda polar quart
syn keyword sciFunctions range ridge rmdir rot90
syn keyword sciFunctions samwr scanf scmap sdiff
syn keyword sciFunctions sensi sgrid signm sincd
syn keyword sciFunctions sinhm sm2ss solve sound
syn keyword sciFunctions speye sqrtm ss2ss ss2tf
syn keyword sciFunctions stdev tabul tanhm tf2ss
syn keyword sciFunctions title trace trans union
syn keyword sciFunctions unobs vodka wilks xcorr
syn keyword sciFunctions xdisp xinfo xload xnumb
syn keyword sciFunctions xsave zgrid zpch1 zpch2
syn keyword sciFunctions zpell %b_e %c_e %cgs
syn keyword sciFunctions %h_e %h_p %i_e %p_e
syn keyword sciFunctions %pcg %r_0 %r_e %r_p
syn keyword sciFunctions %r_s %r_t %s_5 %s_e
syn keyword sciFunctions abcd acot acsc arl2
syn keyword sciFunctions asec barh bilt bode
syn keyword sciFunctions casc cdel cell char
syn keyword sciFunctions coff cond conv cosd
syn keyword sciFunctions cosh cosm cotd cotg
syn keyword sciFunctions coth cscd csch csgn
syn keyword sciFunctions csim cvxx damp date
syn keyword sciFunctions detr diff dscr dtsi
syn keyword sciFunctions edit eigs epoe eros
syn keyword sciFunctions eval fft2 flts getd
syn keyword sciFunctions h_cl halt hank hilb
syn keyword sciFunctions hrmt idct idst ifft
syn keyword sciFunctions iirp intc intl invr
syn keyword sciFunctions jstr kalm leqe leqr
syn keyword sciFunctions linf log2 logm lyap
syn keyword sciFunctions mean mese mesh mtlb
syn keyword sciFunctions nf3d nlev null orth
syn keyword sciFunctions pack pbig pdiv perl
syn keyword sciFunctions pfss pinv plot plzr
syn keyword sciFunctions proj rank rdel rref
syn keyword sciFunctions secd sech sinc sind
syn keyword sciFunctions sinh sinm smga spls
syn keyword sciFunctions srkf sskf surf sylm
syn keyword sciFunctions sylv tand tanh tanm
syn keyword sciFunctions wfir whos xcov %sn
syn keyword sciFunctions acf bar cat clf
syn keyword sciFunctions cov csc czt dae
syn keyword sciFunctions dcf ddp dir div
syn keyword sciFunctions dop epo fda fix
syn keyword sciFunctions gca gcd gce gcf
syn keyword sciFunctions gda gdf ged iir
syn keyword sciFunctions iqr lcf lcm lev
syn keyword sciFunctions lft lin lqe lqg
syn keyword sciFunctions lqr mad map mlr
syn keyword sciFunctions msc now osc pca
syn keyword sciFunctions pcr phc pie pls
syn keyword sciFunctions qmr sca scf sda
syn keyword sciFunctions sdf sec snk snv
syn keyword sciFunctions std sva tic toc
syn keyword sciFunctions ver %k ca ls
" Keywords from Scilab 5.5.1
syn keyword sciFunctions detectrighteyes detectlefteyes imcomplement st_deviation
syn keyword sciFunctions detectfaces getSIVPpath immultiply imsubtract
syn keyword sciFunctions powershell %s_bezout im2double im2uint16
syn keyword sciFunctions imabsdiff imlincomb IsAScalar milk_drop
syn keyword sciFunctions rectangle rgb2ycbcr ycbcr2rgb fspecial
syn keyword sciFunctions im2int16 im2int32 im2uint8 imdivide
syn keyword sciFunctions imresize mat2gray ntsc2rgb rgb2gray
syn keyword sciFunctions rgb2ntsc xmltochm im2int8 imnoise
syn keyword sciFunctions imwrite regress rgb2hsv %s_gcd
syn keyword sciFunctions %s_lcm imcrop imhist imshow
syn keyword sciFunctions stdev2 chart corr2 im2bw
syn keyword sciFunctions imadd mean2 nfreq xs2im
syn keyword sciFunctions xsetm %asn edge isbw
syn keyword sciFunctions jmat mfft std2 msd
syn keyword sciFunctions pcg
" }}}

" {{{
syn keyword sciXcosfuns with_modelica_compiler block_parameter_error initial_scicos_tables scicos_workspace_init
syn keyword sciXcosfuns find_scicos_version get_scicos_version scicos_getvalue scicos_simulate
syn keyword sciXcosfuns returntoscilab fixedpointgcd steadycos lincos
" }}}

" MATCH SECTION

syn match sciArithmeticOperator "[-+]"
syn match sciArithmeticOperator "\.\=[*/\\^]"
syn match sciLineContinuation   "\.\{3}"
syn match sciLogicalOperator    "[&|~]"
syn match sciRelationalOperator "[=~]="
syn match sciRelationalOperator "[<>]=\="
syn match sciTransposeOperator  "[])a-zA-Z0-9.]'"lc=1
syn match sciIdentifier         "\<\a\w*\>"
syn match sciTab                "\t"
syn match sciNumber             "\<\d\+[ij]\=\>"
syn match sciFloat              "\<\d\+\(\.\d*\)\=\([edED][-+]\=\d\+\)\=[ij]\=\>"
syn match sciFloat              "\.\d\+\([edED][-+]\=\d\+\)\=[ij]\=\>"
syn match sciDelimiter          "[][]"
syn match sciDelimiter          "[][()]"
syn match sciSizeOperator       "\$"
syn match sciSemicolon          ";"
syn match sciColon              ","
syn match sciComment            "//.*$" contains=sciTodo,sciTab
syn match sciError              "-\=\<\d\+\.\d\+\.[^*/\\^]"
syn match sciError              "-\=\<\d\+\.\d\+[eEdD][-+]\=\d\+\.\([^*/\\^]\)"

syn region sciString            start=+"+ end=+"+ oneline

" Define the default highlighting
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet

setlocal iskeyword+=!-!
setlocal iskeyword+=$-$
setlocal iskeyword+=%-%

" | Keywords                  | Color            | RGB         | HEX     |
" +---------------------------+------------------+-------------+---------+
" | Primitives     (Operator) | Medium blue      |   0,  0,205 | #0000CD |
" | Commands       (Float)    | Crimson          | 220, 20, 60 | #DC143C |
" | Variables      (Type)     | Dark orange      | 255,140,  0 | #FF8C00 |
" | Functions      (Function) | Dodger blue      |  30,144,255 | #1E90FF |
" | Xcos functions (Label)    | Purple           | 128,  0,128 | #800080 |
" | String         (String)   | Gray             | 128,128,128 | #808080 |
" | Comment        (Comment)  | Medium sea green |  60,179,113 | #3CB371 |

" hi Normal    guibg=#F5F5F5 " White smoke
" hi Operator  guifg=#0000CD
" hi Type      guifg=#DC143C gui=none
" hi Statement guifg=#FF8C00 gui=none
" hi Function  guifg=#1E90FF
" hi Label     guifg=#800080
" hi String    guifg=#808080
" hi Comment   guifg=#3CB371

if version >= 508 || !exists("did_scilab_syntax_inits")
    if version < 508
        let did_scilab_syntax_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif

    " HiLink sciArithmeticOperator Operator
    " HiLink sciRelationalOperator Operator
    " HiLink sciLogicalOperator    Operator
    HiLink sciLineContinuation     Special
    " HiLink sciIdentifier         Identifier
    " HiLink sciTab                Error
    " HiLink sciNumber             Number
    " HiLink sciFloat              Float
    " HiLink sciDelimiter          Identifier
    " HiLink sciTransposeOperator  Operator
    " HiLink sciSizeOperator       Float
    " HiLink sciSemicolon          SpecialChar
    " HiLink sciColon              SpecialChar
    HiLink sciComment              Comment
    HiLink sciError                Error
    HiLink sciTodo                 Todo
    HiLink sciString               String

    HiLink sciPrimitives           Operator
    HiLink sciCommands             Float
    HiLink sciVariables            Type
    HiLink sciFunctions            Function
    HiLink sciXcosfuns             Label

    delcommand HiLink
endif

let b:current_syntax="scilab"
