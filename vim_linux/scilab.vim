" Vim syntax file
" Language   : Scilab
" Maintainer : Astonfe
" Last change: 2017-04-24
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
syn keyword sciPrimitives !!_invoke_ %H5Object_e %H5Object_fieldnames %H5Object_p
syn keyword sciPrimitives %XMLAttr_6 %XMLAttr_e %XMLAttr_i_XMLElem %XMLAttr_length
syn keyword sciPrimitives %XMLAttr_p %XMLAttr_size %XMLDoc_6 %XMLDoc_e
syn keyword sciPrimitives %XMLDoc_i_XMLList %XMLDoc_p %XMLElem_6 %XMLElem_e
syn keyword sciPrimitives %XMLElem_i_XMLDoc %XMLElem_i_XMLElem %XMLElem_i_XMLList %XMLElem_p
syn keyword sciPrimitives %XMLList_6 %XMLList_e %XMLList_i_XMLElem %XMLList_i_XMLList
syn keyword sciPrimitives %XMLList_length %XMLList_p %XMLList_size %XMLNs_6
syn keyword sciPrimitives %XMLNs_e %XMLNs_i_XMLElem %XMLNs_p %XMLSet_6
syn keyword sciPrimitives %XMLSet_e %XMLSet_length %XMLSet_p %XMLSet_size
syn keyword sciPrimitives %XMLValid_p %_EClass_6 %_EClass_e %_EClass_p
syn keyword sciPrimitives %_EObj_0 %_EObj_1__EObj %_EObj_1_b %_EObj_1_c
syn keyword sciPrimitives %_EObj_1_i %_EObj_1_s %_EObj_2__EObj %_EObj_2_b
syn keyword sciPrimitives %_EObj_2_c %_EObj_2_i %_EObj_2_s %_EObj_3__EObj
syn keyword sciPrimitives %_EObj_3_b %_EObj_3_c %_EObj_3_i %_EObj_3_s
syn keyword sciPrimitives %_EObj_4__EObj %_EObj_4_b %_EObj_4_c %_EObj_4_i
syn keyword sciPrimitives %_EObj_4_s %_EObj_5 %_EObj_6 %_EObj_a__EObj
syn keyword sciPrimitives %_EObj_a_b %_EObj_a_c %_EObj_a_i %_EObj_a_s
syn keyword sciPrimitives %_EObj_d__EObj %_EObj_d_b %_EObj_d_c %_EObj_d_i
syn keyword sciPrimitives %_EObj_d_s %_EObj_disp %_EObj_e %_EObj_g__EObj
syn keyword sciPrimitives %_EObj_g_b %_EObj_g_c %_EObj_g_i %_EObj_g_s
syn keyword sciPrimitives %_EObj_h__EObj %_EObj_h_b %_EObj_h_c %_EObj_h_i
syn keyword sciPrimitives %_EObj_h_s %_EObj_i__EObj %_EObj_j__EObj %_EObj_j_b
syn keyword sciPrimitives %_EObj_j_c %_EObj_j_i %_EObj_j_s %_EObj_k__EObj
syn keyword sciPrimitives %_EObj_k_b %_EObj_k_c %_EObj_k_i %_EObj_k_s
syn keyword sciPrimitives %_EObj_l__EObj %_EObj_l_b %_EObj_l_c %_EObj_l_i
syn keyword sciPrimitives %_EObj_l_s %_EObj_m__EObj %_EObj_m_b %_EObj_m_c
syn keyword sciPrimitives %_EObj_m_i %_EObj_m_s %_EObj_n__EObj %_EObj_n_b
syn keyword sciPrimitives %_EObj_n_c %_EObj_n_i %_EObj_n_s %_EObj_o__EObj
syn keyword sciPrimitives %_EObj_o_b %_EObj_o_c %_EObj_o_i %_EObj_o_s
syn keyword sciPrimitives %_EObj_p %_EObj_p__EObj %_EObj_p_b %_EObj_p_c
syn keyword sciPrimitives %_EObj_p_i %_EObj_p_s %_EObj_q__EObj %_EObj_q_b
syn keyword sciPrimitives %_EObj_q_c %_EObj_q_i %_EObj_q_s %_EObj_r__EObj
syn keyword sciPrimitives %_EObj_r_b %_EObj_r_c %_EObj_r_i %_EObj_r_s
syn keyword sciPrimitives %_EObj_s__EObj %_EObj_s_b %_EObj_s_c %_EObj_s_i
syn keyword sciPrimitives %_EObj_s_s %_EObj_t %_EObj_x__EObj %_EObj_x_b
syn keyword sciPrimitives %_EObj_x_c %_EObj_x_i %_EObj_x_s %_EObj_y__EObj
syn keyword sciPrimitives %_EObj_y_b %_EObj_y_c %_EObj_y_i %_EObj_y_s
syn keyword sciPrimitives %_EObj_z__EObj %_EObj_z_b %_EObj_z_c %_EObj_z_i
syn keyword sciPrimitives %_EObj_z_s %_eigs %_load %b_1__EObj
syn keyword sciPrimitives %b_2__EObj %b_3__EObj %b_4__EObj %b_a__EObj
syn keyword sciPrimitives %b_d__EObj %b_g__EObj %b_h__EObj %b_i_XMLList
syn keyword sciPrimitives %b_i__EObj %b_j__EObj %b_k__EObj %b_l__EObj
syn keyword sciPrimitives %b_m__EObj %b_n__EObj %b_o__EObj %b_p__EObj
syn keyword sciPrimitives %b_q__EObj %b_r__EObj %b_s__EObj %b_x__EObj
syn keyword sciPrimitives %b_y__EObj %b_z__EObj %c_1__EObj %c_2__EObj
syn keyword sciPrimitives %c_3__EObj %c_4__EObj %c_a__EObj %c_d__EObj
syn keyword sciPrimitives %c_g__EObj %c_h__EObj %c_i_XMLAttr %c_i_XMLDoc
syn keyword sciPrimitives %c_i_XMLElem %c_i_XMLList %c_i__EObj %c_j__EObj
syn keyword sciPrimitives %c_k__EObj %c_l__EObj %c_m__EObj %c_n__EObj
syn keyword sciPrimitives %c_o__EObj %c_p__EObj %c_q__EObj %c_r__EObj
syn keyword sciPrimitives %c_s__EObj %c_x__EObj %c_y__EObj %c_z__EObj
syn keyword sciPrimitives %ce_i_XMLList %fptr_i_XMLList %h_i_XMLList %hm_i_XMLList
syn keyword sciPrimitives %i_1__EObj %i_2__EObj %i_3__EObj %i_4__EObj
syn keyword sciPrimitives %i_a__EObj %i_abs %i_cumprod %i_cumsum
syn keyword sciPrimitives %i_d__EObj %i_diag %i_g__EObj %i_h__EObj
syn keyword sciPrimitives %i_i_XMLList %i_i__EObj %i_j__EObj %i_k__EObj
syn keyword sciPrimitives %i_l__EObj %i_m__EObj %i_matrix %i_max
syn keyword sciPrimitives %i_maxi %i_min %i_mini %i_mput
syn keyword sciPrimitives %i_n__EObj %i_o__EObj %i_p %i_p__EObj
syn keyword sciPrimitives %i_prod %i_q__EObj %i_r__EObj %i_s__EObj
syn keyword sciPrimitives %i_sum %i_tril %i_triu %i_x__EObj
syn keyword sciPrimitives %i_y__EObj %i_z__EObj %ip_i_XMLList %l_i_XMLList
syn keyword sciPrimitives %l_i__EObj %lss_i_XMLList %mc_i_XMLList %msp_full
syn keyword sciPrimitives %msp_i_XMLList %msp_spget %p_i_XMLList %ptr_i_XMLList
syn keyword sciPrimitives %r_i_XMLList %s_1__EObj %s_2__EObj %s_3__EObj
syn keyword sciPrimitives %s_4__EObj %s_a__EObj %s_d__EObj %s_g__EObj
syn keyword sciPrimitives %s_h__EObj %s_i_XMLList %s_i__EObj %s_j__EObj
syn keyword sciPrimitives %s_k__EObj %s_l__EObj %s_m__EObj %s_n__EObj
syn keyword sciPrimitives %s_o__EObj %s_p__EObj %s_q__EObj %s_r__EObj
syn keyword sciPrimitives %s_s__EObj %s_x__EObj %s_y__EObj %s_z__EObj
syn keyword sciPrimitives %sp_i_XMLList %spb_i_XMLList %st_i_XMLList Calendar
syn keyword sciPrimitives ClipBoard Matplot Matplot1 PlaySound
syn keyword sciPrimitives TCL_DeleteInterp TCL_DoOneEvent TCL_EvalFile TCL_EvalStr
syn keyword sciPrimitives TCL_ExistArray TCL_ExistInterp TCL_ExistVar TCL_GetVar
syn keyword sciPrimitives TCL_GetVersion TCL_SetVar TCL_UnsetVar TCL_UpVar
syn keyword sciPrimitives _ _code2str _d _str2code
syn keyword sciPrimitives about abs acos addModulePreferences
syn keyword sciPrimitives addcolor addf addhistory addinter
syn keyword sciPrimitives addlocalizationdomain amell and argn
syn keyword sciPrimitives arl2_ius ascii asin atan
syn keyword sciPrimitives backslash balanc banner base2dec
syn keyword sciPrimitives basename bdiag beep besselh
syn keyword sciPrimitives besseli besselj besselk bessely
syn keyword sciPrimitives beta bezout bfinit blkfc1i
syn keyword sciPrimitives blkslvi bool2s browsehistory browsevar
syn keyword sciPrimitives bsplin3val buildDoc buildouttb bvode
syn keyword sciPrimitives c_link c_nnsimul c_nnsimulbis c_nnsimulter
syn keyword sciPrimitives call callblk captions cd
syn keyword sciPrimitives cdfbet cdfbin cdfchi cdfchn
syn keyword sciPrimitives cdff cdffnc cdfgam cdfnbn
syn keyword sciPrimitives cdfnor cdfpoi cdft ceil
syn keyword sciPrimitives champ champ1 chdir chol
syn keyword sciPrimitives clean clearfun clearglobal closeEditor
syn keyword sciPrimitives closeEditvar closeXcos code2str coeff
syn keyword sciPrimitives color comp completion conj
syn keyword sciPrimitives contour2di contour2dm contr conv2
syn keyword sciPrimitives convstr copy copyfile corr
syn keyword sciPrimitives cos coserror covm_mex createdir
syn keyword sciPrimitives cshep2d csvDefault csvIsnum csvRead
syn keyword sciPrimitives csvStringToDouble csvTextScan csvWrite ctree2
syn keyword sciPrimitives ctree3 ctree4 cumprod cumsum
syn keyword sciPrimitives curblock curblockc daskr dasrt
syn keyword sciPrimitives dassl data2sig datatipCreate datatipManagerMode
syn keyword sciPrimitives datatipMove datatipRemove datatipSetDisplay datatipSetInterp
syn keyword sciPrimitives datatipSetOrientation datatipSetStyle datatipToggle dawson
syn keyword sciPrimitives dct debug dec2base deff
syn keyword sciPrimitives definedfields degree delbpt delete
syn keyword sciPrimitives deletefile delip delmenu det
syn keyword sciPrimitives dgettext dhinf diag diary
syn keyword sciPrimitives diffobjs disp dispbpt displayhistory
syn keyword sciPrimitives disposefftwlibrary distfun_betarnd distfun_binornd distfun_cdfbeta
syn keyword sciPrimitives distfun_cdfbino distfun_cdfchi2 distfun_cdfev distfun_cdfexp
syn keyword sciPrimitives distfun_cdff distfun_cdfgam distfun_cdfgeo distfun_cdfhyge
syn keyword sciPrimitives distfun_cdfks distfun_cdflogn distfun_cdfnbn distfun_cdfncf
syn keyword sciPrimitives distfun_cdfnct distfun_cdfncx2 distfun_cdfnorm distfun_cdfpoiss
syn keyword sciPrimitives distfun_cdft distfun_cdfunif distfun_cdfwbl distfun_chi2rnd
syn keyword sciPrimitives distfun_evrnd distfun_exprnd distfun_frnd distfun_gamrnd
syn keyword sciPrimitives distfun_genget distfun_genset distfun_geornd distfun_hygernd
syn keyword sciPrimitives distfun_incgamma distfun_invbeta distfun_invbino distfun_invchi2
syn keyword sciPrimitives distfun_invev distfun_invexp distfun_invf distfun_invgam
syn keyword sciPrimitives distfun_invgeo distfun_invhyge distfun_invks distfun_invlogn
syn keyword sciPrimitives distfun_invnbn distfun_invncf distfun_invnct distfun_invncx2
syn keyword sciPrimitives distfun_invnorm distfun_invpoiss distfun_invt distfun_invunif
syn keyword sciPrimitives distfun_invwbl distfun_ksrnd distfun_lognrnd distfun_mnrnd
syn keyword sciPrimitives distfun_mvnpdf distfun_mvnrnd distfun_nbinrnd distfun_ncfrnd
syn keyword sciPrimitives distfun_nctrnd distfun_ncx2rnd distfun_normrnd distfun_pdfbeta
syn keyword sciPrimitives distfun_pdfbino distfun_pdfchi2 distfun_pdfev distfun_pdfexp
syn keyword sciPrimitives distfun_pdff distfun_pdfgam distfun_pdfgeo distfun_pdfhyge
syn keyword sciPrimitives distfun_pdfks distfun_pdflogn distfun_pdfnbn distfun_pdfncf
syn keyword sciPrimitives distfun_pdfnct distfun_pdfncx2 distfun_pdfnorm distfun_pdfpoiss
syn keyword sciPrimitives distfun_pdft distfun_pdfunif distfun_pdfwbl distfun_permrnd
syn keyword sciPrimitives distfun_poissrnd distfun_seedget distfun_seedset distfun_startup
syn keyword sciPrimitives distfun_streamget distfun_streaminit distfun_streamset distfun_trnd
syn keyword sciPrimitives distfun_unidrnd distfun_unifrnd distfun_verboseset distfun_wblrnd
syn keyword sciPrimitives dlgamma dnaupd dneupd double
syn keyword sciPrimitives drawaxis drawlater drawnow driver
syn keyword sciPrimitives dsaupd dsearch dseupd dst
syn keyword sciPrimitives duplicate editvar emptystr end_scicosim
syn keyword sciPrimitives ereduc erf erfc erfcx
syn keyword sciPrimitives erfi errcatch errclear error
syn keyword sciPrimitives eval_cshep2d exec execstr exists
syn keyword sciPrimitives exp expm exportUI export_to_hdf5
syn keyword sciPrimitives eye fadj2sp fec feval
syn keyword sciPrimitives fft fftw fftw_flags fftw_forget_wisdom
syn keyword sciPrimitives fftwlibraryisloaded figure file filebrowser
syn keyword sciPrimitives fileext fileinfo fileparts filesep
syn keyword sciPrimitives find findBD findfiles fire_closing_finished
syn keyword sciPrimitives floor format fort fprintfMat
syn keyword sciPrimitives freq frexp fromc fromjava
syn keyword sciPrimitives fscanfMat fsolve fstair full
syn keyword sciPrimitives fullpath funcprot funptr gamma
syn keyword sciPrimitives gammaln geom3d get getURL
syn keyword sciPrimitives get_absolute_file_path get_fftw_wisdom getblocklabel getcallbackobject
syn keyword sciPrimitives getdate getdebuginfo getdefaultlanguage getdrives
syn keyword sciPrimitives getdynlibext getenv getfield gethistory
syn keyword sciPrimitives gethistoryfile getinstalledlookandfeels getio getlanguage
syn keyword sciPrimitives getlongpathname getlookandfeel getmd5 getmemory
syn keyword sciPrimitives getmodules getos getpid getrelativefilename
syn keyword sciPrimitives getscicosvars getscilabmode getshortpathname gettext
syn keyword sciPrimitives getvariablesonstack getversion glist global
syn keyword sciPrimitives glue grand graphicfunction grayplot
syn keyword sciPrimitives grep gsort gstacksize h5attr
syn keyword sciPrimitives h5close h5cp h5dataset h5dump
syn keyword sciPrimitives h5exists h5flush h5get h5group
syn keyword sciPrimitives h5isArray h5isAttr h5isCompound h5isFile
syn keyword sciPrimitives h5isGroup h5isList h5isRef h5isSet
syn keyword sciPrimitives h5isSpace h5isType h5isVlen h5label
syn keyword sciPrimitives h5ln h5ls h5mount h5mv
syn keyword sciPrimitives h5open h5read h5readattr h5rm
syn keyword sciPrimitives h5umount h5write h5writeattr havewindow
syn keyword sciPrimitives helpbrowser hess hinf histo_mex
syn keyword sciPrimitives historymanager historysize host htmlDump
syn keyword sciPrimitives htmlRead htmlReadStr htmlWrite iconvert
syn keyword sciPrimitives iconvert ieee ilib_verbose imag
syn keyword sciPrimitives impl import_from_hdf5 imult inpnvi
syn keyword sciPrimitives int int16 int2d int32
syn keyword sciPrimitives int3d int8 interp interp2d
syn keyword sciPrimitives interp3d intg intppty inttype
syn keyword sciPrimitives inv invoke_lu is_handle_valid is_hdf5_file
syn keyword sciPrimitives isalphanum isascii isdef isdigit
syn keyword sciPrimitives isdir isequal isequalbitwise iserror
syn keyword sciPrimitives isfile isglobal isletter isnum
syn keyword sciPrimitives isreal iswaitingforinput jallowClassReloading jarray
syn keyword sciPrimitives jautoTranspose jautoUnwrap javaclasspath javalibrarypath
syn keyword sciPrimitives jcast jcompile jconvMatrixMethod jcreatejar
syn keyword sciPrimitives jdeff jdisableTrace jenableTrace jexists
syn keyword sciPrimitives jgetclassname jgetfield jgetfields jgetinfo
syn keyword sciPrimitives jgetmethods jimport jinvoke jinvoke_db
syn keyword sciPrimitives jnewInstance jremove jsetfield junwrap
syn keyword sciPrimitives junwraprem jwrap jwrapinfloat knnclass_mex
syn keyword sciPrimitives kron kth_element lasterror ldiv
syn keyword sciPrimitives ldivf legendre length lib
syn keyword sciPrimitives librarieslist libraryinfo light linear_interpn
syn keyword sciPrimitives lines link linmeq list
syn keyword sciPrimitives listvar_in_hdf5 load loadGui loadScicos
syn keyword sciPrimitives loadXcos loadfftwlibrary loadhistory log
syn keyword sciPrimitives log10 log1p lsq lsq_splin
syn keyword sciPrimitives lsqrsolve lsslist lstcat lstsize
syn keyword sciPrimitives ltitr lu ludel lufact
syn keyword sciPrimitives luget lusolve macr2lst macr2tree
syn keyword sciPrimitives matfile_close matfile_listvar matfile_open matfile_varreadnext
syn keyword sciPrimitives matfile_varwrite matrix max maxfiles
syn keyword sciPrimitives mclearerr mclose meof merror
syn keyword sciPrimitives messagebox mfprintf mfscanf mget
syn keyword sciPrimitives mgeti mgetl mgetstr min
syn keyword sciPrimitives mlist mode model2blk mopen
syn keyword sciPrimitives move movefile mprintf mput
syn keyword sciPrimitives mputl mputstr mscanf mseek
syn keyword sciPrimitives msprintf msscanf mtell mtlb_mode
syn keyword sciPrimitives mtlb_sparse mucomp mulf name2rgb
syn keyword sciPrimitives nearfloat newaxes newest newfun
syn keyword sciPrimitives nnz norm notify number_properties
syn keyword sciPrimitives ode odedc ones openged
syn keyword sciPrimitives opentk optim or ordmmd
syn keyword sciPrimitives parallel_concurrency parallel_run param3d param3d1
syn keyword sciPrimitives part pathconvert pathsep phase_simulation
syn keyword sciPrimitives plot2d plot2d1 plot2d2 plot2d3
syn keyword sciPrimitives plot2d4 plot3d plot3d1 plotbrowser
syn keyword sciPrimitives pointer_xproperty poly ppol pppdiv
syn keyword sciPrimitives predef preferences print printf
syn keyword sciPrimitives printfigure printsetupbox prod progressionbar
syn keyword sciPrimitives prompt qld qp_solve qpqpqp
syn keyword sciPrimitives qr raise_window rand rankqr
syn keyword sciPrimitives rat rcond rdivf read
syn keyword sciPrimitives read4b read_csv readb readgateway
syn keyword sciPrimitives readmps real realtime realtimeinit
syn keyword sciPrimitives regexp remez removeModulePreferences removedir
syn keyword sciPrimitives removelinehistory res_with_prec resethistory residu
syn keyword sciPrimitives ricc rlist roots rotate_axes
syn keyword sciPrimitives round rpem rtitr rubberbox
syn keyword sciPrimitives save saveGui saveafterncommands saveconsecutivecommands
syn keyword sciPrimitives savehistory schur sci_haltscicos sci_tree2
syn keyword sciPrimitives sci_tree3 sci_tree4 sciargs scicos_debug
syn keyword sciPrimitives scicos_debug_count scicos_time scicosim scinotes
syn keyword sciPrimitives sctree semidef set set_blockerror
syn keyword sciPrimitives set_fftw_wisdom set_xproperty setbpt setdefaultlanguage
syn keyword sciPrimitives setenv setfield sethistoryfile setlanguage
syn keyword sciPrimitives setlookandfeel setmenu sfact sfinit
syn keyword sciPrimitives show_window sident sig2data sign
syn keyword sciPrimitives simp simp_mode sin size
syn keyword sciPrimitives slash sleep sorder sparse
syn keyword sciPrimitives spchol spcompack spec spget
syn keyword sciPrimitives splin splin2d splin3d splitURL
syn keyword sciPrimitives spones sprintf sqrt stacksize
syn keyword sciPrimitives str2array str2code strcat strchr
syn keyword sciPrimitives strcmp strcspn strindex string
syn keyword sciPrimitives stringbox stripblanks strncpy strrchr
syn keyword sciPrimitives strrev strsplit strspn strstr
syn keyword sciPrimitives strsubst strtod strtok subf
syn keyword sciPrimitives sum sumskipnan_mex svd swap_handles
syn keyword sciPrimitives symfcti syredi system_getproperty system_setproperty
syn keyword sciPrimitives ta2lpd tan taucs_chdel taucs_chfact
syn keyword sciPrimitives taucs_chget taucs_chinfo taucs_chsolve tempname
syn keyword sciPrimitives testmatrix timer tlist tohome
syn keyword sciPrimitives tokens toolbar toprint tr_zer
syn keyword sciPrimitives tril triu type typename
syn keyword sciPrimitives uiDisplayTree uicontextmenu uicontrol uigetcolor
syn keyword sciPrimitives uigetdir uigetfile uigetfont uimenu
syn keyword sciPrimitives uint16 uint32 uint8 uipopup
syn keyword sciPrimitives uiputfile uiwait ulink umf_ludel
syn keyword sciPrimitives umf_lufact umf_luget umf_luinfo umf_lusolve
syn keyword sciPrimitives umfpack unglue unix unsetmenu
syn keyword sciPrimitives unzoom updatebrowsevar usecanvas useeditor
syn keyword sciPrimitives user var2vec varn vec2var
syn keyword sciPrimitives waitbar warnBlockByUID warning where
syn keyword sciPrimitives whereis winsid with_module writb
syn keyword sciPrimitives write write4b write_csv x_choose
syn keyword sciPrimitives x_choose_modeless x_dialog x_mdialog xarc
syn keyword sciPrimitives xarcs xarrows xchange xchoicesi
syn keyword sciPrimitives xclick xcos xcosAddToolsMenu xcosConfigureXmlFile
syn keyword sciPrimitives xcosDiagramToScilab xcosPalCategoryAdd xcosPalDelete xcosPalDisable
syn keyword sciPrimitives xcosPalEnable xcosPalGenerateIcon xcosPalGet xcosPalLoad
syn keyword sciPrimitives xcosPalMove xcosSimulationStarted xcosUpdateBlock xdel
syn keyword sciPrimitives xend xfarc xfarcs xfpoly
syn keyword sciPrimitives xfpolys xfrect xget xgetmouse
syn keyword sciPrimitives xgraduate xgrid xinit xlfont
syn keyword sciPrimitives xls_open xls_read xmlAddNs xmlAppend
syn keyword sciPrimitives xmlAsNumber xmlAsText xmlDTD xmlDelete
syn keyword sciPrimitives xmlDocument xmlDump xmlElement xmlFormat
syn keyword sciPrimitives xmlGetNsByHref xmlGetNsByPrefix xmlGetOpenDocs xmlIsValidObject
syn keyword sciPrimitives xmlName xmlNs xmlRead xmlReadStr
syn keyword sciPrimitives xmlRelaxNG xmlRemove xmlSchema xmlSetAttributes
syn keyword sciPrimitives xmlValidate xmlWrite xmlXPath xname
syn keyword sciPrimitives xpause xpoly xpolys xrect
syn keyword sciPrimitives xrects xs2bmp xs2emf xs2eps
syn keyword sciPrimitives xs2gif xs2jpg xs2pdf xs2png
syn keyword sciPrimitives xs2ppm xs2ps xs2svg xsegs
syn keyword sciPrimitives xset xstring xstringb xtitle
syn keyword sciPrimitives zeros znaupd zneupd zoom_rect
" Keywords from Scilab 5.5.1
syn keyword sciPrimitives addframe aviclose avicloseall avifile
syn keyword sciPrimitives aviinfo avilistopened aviopen avireadframe
syn keyword sciPrimitives camopen camshift consolebox createGUID
syn keyword sciPrimitives detectforeground detectobjects distfun_rndmvn dos
syn keyword sciPrimitives filter2 findfileassociation getsystemmetrics imfilter
syn keyword sciPrimitives imfinfo impyramid imread ind2rgb
syn keyword sciPrimitives int_canny int_cvtcolor int_imabsdiff int_imadd
syn keyword sciPrimitives int_imdivide int_immultiply int_imresize int_imsubtract
syn keyword sciPrimitives int_imwrite int_sobel istssession mat2utfimg
syn keyword sciPrimitives mcisendstring meanshift relocate_handle sivp_init
syn keyword sciPrimitives sivptest win64 winopen winqueryreg
" }}}

" {{{
syn keyword sciCommands abort apropos break case
syn keyword sciCommands catch clc clear continue
syn keyword sciCommands do else elseif end
syn keyword sciCommands endfunction exit for function
syn keyword sciCommands help if pause pwd
syn keyword sciCommands quit resume return select
syn keyword sciCommands then try what while
syn keyword sciCommands who
" }}}

" {{{
syn keyword sciVariables $ %F %T %e
syn keyword sciVariables %eps %f %fftw %gui
syn keyword sciVariables %i %inf %io %nan
syn keyword sciVariables %pi %s %t %tk
syn keyword sciVariables %z JSONlib PWD SCI
syn keyword sciVariables SCIHOME TMPDIR apifunlib arnoldilib
syn keyword sciVariables assertlib atomsguilib atomslib cacsdlib
syn keyword sciVariables compatibility_functilib corelib data_structureslib datatipslib
syn keyword sciVariables demo_toolslib development_toolslib differential_equationlib distfunlib
syn keyword sciVariables dynamic_linklib elementary_functionslib enull evoid
syn keyword sciVariables external_objectslib factlib fileiolib functionslib
syn keyword sciVariables genetic_algorithmslib graphicslib guibuilderlib guilib
syn keyword sciVariables helptoolslib home integerlib interpolationlib
syn keyword sciVariables iolib jnull jvmlib jvoid
syn keyword sciVariables libhelptbx linear_algebralib m2scilib magicSqlib
syn keyword sciVariables matiolib moclib modules_managerlib nanlib
syn keyword sciVariables neldermeadlib optimbaselib optimizationlib optimsimplexlib
syn keyword sciVariables output_streamlib overloadinglib parameterslib polynomialslib
syn keyword sciVariables preferenceslib quaprolib randliblib scicos_autolib
syn keyword sciVariables scicos_utilslib scinoteslib signal_processinglib simulated_annealinglib
syn keyword sciVariables soundlib sparselib specfunlib special_functionslib
syn keyword sciVariables spreadsheetlib statisticslib stringlib tclscilib
syn keyword sciVariables timelib uitreelib umfpacklib xcoslib
" Keywords from Scilab 5.5.1
syn keyword sciVariables WSCI sivplib windows_toolslib
" }}}

" {{{
syn keyword sciFunctions !_deff_wrapper %0_i_st %3d_i_h %BevelBor_i_h
syn keyword sciFunctions %BevelBor_p %Block_xcosUpdateBlock %BorderCo_i_h %BorderCo_p
syn keyword sciFunctions %BorderFo_p %Compound_i_h %Compound_p %EmptyBor_i_h
syn keyword sciFunctions %EmptyBor_p %EtchedBo_i_h %EtchedBo_p %GridBagC_i_h
syn keyword sciFunctions %GridBagC_p %GridCons_i_h %GridCons_p %LineBord_i_h
syn keyword sciFunctions %LineBord_p %MatteBor_i_h %MatteBor_p %NoBorder_i_h
syn keyword sciFunctions %NoBorder_p %NoLayout_i_h %NoLayout_p %OptBorde_i_h
syn keyword sciFunctions %OptBorde_p %OptGridB_i_h %OptGridB_p %OptGrid_i_h
syn keyword sciFunctions %OptGrid_p %OptNoLay_i_h %OptNoLay_p %SoftBeve_i_h
syn keyword sciFunctions %SoftBeve_p %TNELDER_p %TNELDER_string %TNMPLOT_p
syn keyword sciFunctions %TNMPLOT_string %TOPTIM_p %TOPTIM_string %TSIMPLEX_p
syn keyword sciFunctions %TSIMPLEX_string %TitledBo_i_h %TitledBo_p %_EVoid_p
syn keyword sciFunctions %_Matplot %_Matplot1 %_champ %_champ1
syn keyword sciFunctions %_fec %_grayplot %_gsort %_listvarinfile
syn keyword sciFunctions %_param3d %_param3d1 %_plot2d %_plot2d1
syn keyword sciFunctions %_plot2d2 %_plot2d3 %_plot2d4 %_plot3d
syn keyword sciFunctions %_plot3d1 %_rlist %_save %_sodload
syn keyword sciFunctions %_strsplit %_unwrap %_xget %_xset
syn keyword sciFunctions %_xstringb %_xtitle %ar_p %b_a_b
syn keyword sciFunctions %b_a_s %b_c_s %b_c_spb %b_cumprod
syn keyword sciFunctions %b_cumsum %b_d_s %b_diag %b_e
syn keyword sciFunctions %b_f_s %b_f_spb %b_g_s %b_g_spb
syn keyword sciFunctions %b_grand %b_h_s %b_h_spb %b_i_b
syn keyword sciFunctions %b_i_ce %b_i_h %b_i_hm %b_i_s
syn keyword sciFunctions %b_i_sp %b_i_spb %b_i_st %b_iconvert
syn keyword sciFunctions %b_l_b %b_l_s %b_m_b %b_m_s
syn keyword sciFunctions %b_matrix %b_n_hm %b_o_hm %b_p_s
syn keyword sciFunctions %b_prod %b_r_b %b_r_s %b_s_b
syn keyword sciFunctions %b_s_s %b_string %b_sum %b_tril
syn keyword sciFunctions %b_triu %b_x_b %b_x_s %bicg
syn keyword sciFunctions %bicgstab %c_a_c %c_b_c %c_b_s
syn keyword sciFunctions %c_diag %c_dsearch %c_e %c_eye
syn keyword sciFunctions %c_f_s %c_grand %c_i_c %c_i_ce
syn keyword sciFunctions %c_i_h %c_i_hm %c_i_lss %c_i_r
syn keyword sciFunctions %c_i_s %c_i_st %c_matrix %c_n_l
syn keyword sciFunctions %c_n_st %c_o_l %c_o_st %c_ones
syn keyword sciFunctions %c_rand %c_tril %c_triu %cblock_c_cblock
syn keyword sciFunctions %cblock_c_s %cblock_e %cblock_f_cblock %cblock_p
syn keyword sciFunctions %cblock_size %ce_6 %ce_c_ce %ce_e
syn keyword sciFunctions %ce_f_ce %ce_i_ce %ce_i_s %ce_i_st
syn keyword sciFunctions %ce_matrix %ce_p %ce_size %ce_string
syn keyword sciFunctions %ce_t %cgs %champdat_i_h %choose
syn keyword sciFunctions %datatips_p %diagram_xcos %dir_p %div_a_div
syn keyword sciFunctions %div_c_div %div_d_div %div_e %div_f_div
syn keyword sciFunctions %div_m_div %div_p %div_r_s %div_s_div
syn keyword sciFunctions %div_t %div_x_div %fptr_i_st %grand_perm
syn keyword sciFunctions %grayplot_i_h %h_copy %h_delete %h_e
syn keyword sciFunctions %h_get %h_i_h %h_i_st %h_load
syn keyword sciFunctions %h_matrix %h_p %h_save %h_set
syn keyword sciFunctions %hmS_k_hmS_generic %hm_1_hm %hm_1_s %hm_2_hm
syn keyword sciFunctions %hm_2_s %hm_3_hm %hm_3_s %hm_4_hm
syn keyword sciFunctions %hm_4_s %hm_5 %hm_a_hm %hm_a_r
syn keyword sciFunctions %hm_a_s %hm_abs %hm_and %hm_bool2s
syn keyword sciFunctions %hm_c_hm %hm_ceil %hm_conj %hm_cos
syn keyword sciFunctions %hm_cumprod %hm_cumsum %hm_d_hm %hm_d_s
syn keyword sciFunctions %hm_degree %hm_dsearch %hm_e %hm_exp
syn keyword sciFunctions %hm_eye %hm_f_hm %hm_find %hm_floor
syn keyword sciFunctions %hm_g_hm %hm_grand %hm_gsort %hm_h_hm
syn keyword sciFunctions %hm_i_b %hm_i_ce %hm_i_h %hm_i_hm
syn keyword sciFunctions %hm_i_i %hm_i_p %hm_i_r %hm_i_s
syn keyword sciFunctions %hm_i_st %hm_iconvert %hm_imag %hm_int
syn keyword sciFunctions %hm_isnan %hm_isreal %hm_j_hm %hm_j_s
syn keyword sciFunctions %hm_k_hm %hm_k_s %hm_log %hm_m_p
syn keyword sciFunctions %hm_m_r %hm_m_s %hm_matrix %hm_max
syn keyword sciFunctions %hm_mean %hm_median %hm_min %hm_n_b
syn keyword sciFunctions %hm_n_c %hm_n_hm %hm_n_i %hm_n_p
syn keyword sciFunctions %hm_n_s %hm_o_b %hm_o_c %hm_o_hm
syn keyword sciFunctions %hm_o_i %hm_o_p %hm_o_s %hm_ones
syn keyword sciFunctions %hm_or %hm_p %hm_prod %hm_q_hm
syn keyword sciFunctions %hm_r_s %hm_rand %hm_real %hm_round
syn keyword sciFunctions %hm_s %hm_s_hm %hm_s_r %hm_s_s
syn keyword sciFunctions %hm_sign %hm_sin %hm_size %hm_sqrt
syn keyword sciFunctions %hm_stdev %hm_string %hm_sum %hm_x_hm
syn keyword sciFunctions %hm_x_p %hm_x_s %hm_zeros %i_1_s
syn keyword sciFunctions %i_2_s %i_3_s %i_4_s %i_Matplot
syn keyword sciFunctions %i_a_i %i_a_s %i_and %i_ascii
syn keyword sciFunctions %i_b_s %i_bezout %i_champ %i_champ1
syn keyword sciFunctions %i_contour %i_contour2d %i_d_i %i_d_s
syn keyword sciFunctions %i_dsearch %i_e %i_fft %i_g_i
syn keyword sciFunctions %i_gcd %i_grand %i_h_i %i_i_ce
syn keyword sciFunctions %i_i_h %i_i_hm %i_i_i %i_i_s
syn keyword sciFunctions %i_i_st %i_j_i %i_j_s %i_l_s
syn keyword sciFunctions %i_lcm %i_length %i_m_i %i_m_s
syn keyword sciFunctions %i_mfprintf %i_mprintf %i_msprintf %i_n_s
syn keyword sciFunctions %i_o_s %i_or %i_p_i %i_p_s
syn keyword sciFunctions %i_plot2d %i_plot2d1 %i_plot2d2 %i_q_s
syn keyword sciFunctions %i_r_i %i_r_s %i_round %i_s_i
syn keyword sciFunctions %i_s_s %i_sign %i_string %i_x_i
syn keyword sciFunctions %i_x_s %ip_a_s %ip_i_st %ip_m_s
syn keyword sciFunctions %ip_n_ip %ip_o_ip %ip_p %ip_part
syn keyword sciFunctions %ip_s_s %ip_string %k %l_i_h
syn keyword sciFunctions %l_i_s %l_i_st %l_isequal %l_n_c
syn keyword sciFunctions %l_n_l %l_n_m %l_n_p %l_n_s
syn keyword sciFunctions %l_n_st %l_o_c %l_o_l %l_o_m
syn keyword sciFunctions %l_o_p %l_o_s %l_o_st %lss_a_lss
syn keyword sciFunctions %lss_a_p %lss_a_r %lss_a_s %lss_c_lss
syn keyword sciFunctions %lss_c_p %lss_c_r %lss_c_s %lss_e
syn keyword sciFunctions %lss_eye %lss_f_lss %lss_f_p %lss_f_r
syn keyword sciFunctions %lss_f_s %lss_i_ce %lss_i_lss %lss_i_p
syn keyword sciFunctions %lss_i_r %lss_i_s %lss_i_st %lss_inv
syn keyword sciFunctions %lss_l_lss %lss_l_p %lss_l_r %lss_l_s
syn keyword sciFunctions %lss_m_lss %lss_m_p %lss_m_r %lss_m_s
syn keyword sciFunctions %lss_n_lss %lss_n_p %lss_n_r %lss_n_s
syn keyword sciFunctions %lss_norm %lss_o_lss %lss_o_p %lss_o_r
syn keyword sciFunctions %lss_o_s %lss_ones %lss_r_lss %lss_r_p
syn keyword sciFunctions %lss_r_r %lss_r_s %lss_rand %lss_s
syn keyword sciFunctions %lss_s_lss %lss_s_p %lss_s_r %lss_s_s
syn keyword sciFunctions %lss_size %lss_t %lss_v_lss %lss_v_p
syn keyword sciFunctions %lss_v_r %lss_v_s %lt_i_s %m_n_l
syn keyword sciFunctions %m_o_l %mc_i_h %mc_i_s %mc_i_st
syn keyword sciFunctions %mc_n_st %mc_o_st %mc_string %mps_p
syn keyword sciFunctions %mps_string %msp_a_s %msp_abs %msp_e
syn keyword sciFunctions %msp_find %msp_i_s %msp_i_st %msp_length
syn keyword sciFunctions %msp_m_s %msp_maxi %msp_n_msp %msp_nnz
syn keyword sciFunctions %msp_o_msp %msp_p %msp_sparse %msp_spones
syn keyword sciFunctions %msp_t %p_a_lss %p_a_r %p_c_lss
syn keyword sciFunctions %p_c_r %p_cumprod %p_cumsum %p_d_p
syn keyword sciFunctions %p_d_r %p_d_s %p_det %p_e
syn keyword sciFunctions %p_f_lss %p_f_r %p_grand %p_i_ce
syn keyword sciFunctions %p_i_h %p_i_hm %p_i_lss %p_i_p
syn keyword sciFunctions %p_i_r %p_i_s %p_i_st %p_inv
syn keyword sciFunctions %p_j_s %p_k_p %p_k_r %p_k_s
syn keyword sciFunctions %p_l_lss %p_l_p %p_l_r %p_l_s
syn keyword sciFunctions %p_m_hm %p_m_lss %p_m_r %p_matrix
syn keyword sciFunctions %p_n_l %p_n_lss %p_n_r %p_o_l
syn keyword sciFunctions %p_o_lss %p_o_r %p_o_sp %p_p_s
syn keyword sciFunctions %p_part %p_prod %p_q_p %p_q_r
syn keyword sciFunctions %p_q_s %p_r_lss %p_r_p %p_r_r
syn keyword sciFunctions %p_r_s %p_s_lss %p_s_r %p_simp
syn keyword sciFunctions %p_string %p_sum %p_v_lss %p_v_p
syn keyword sciFunctions %p_v_r %p_v_s %p_x_hm %p_x_r
syn keyword sciFunctions %p_y_p %p_y_r %p_y_s %p_z_p
syn keyword sciFunctions %p_z_r %p_z_s %pcg %plist_p
syn keyword sciFunctions %plist_string %r_0 %r_a_hm %r_a_lss
syn keyword sciFunctions %r_a_p %r_a_r %r_a_s %r_c_lss
syn keyword sciFunctions %r_c_p %r_c_r %r_c_s %r_clean
syn keyword sciFunctions %r_cumprod %r_cumsum %r_d_p %r_d_r
syn keyword sciFunctions %r_d_s %r_det %r_diag %r_e
syn keyword sciFunctions %r_eye %r_f_lss %r_f_p %r_f_r
syn keyword sciFunctions %r_f_s %r_i_ce %r_i_hm %r_i_lss
syn keyword sciFunctions %r_i_p %r_i_r %r_i_s %r_i_st
syn keyword sciFunctions %r_inv %r_j_s %r_k_p %r_k_r
syn keyword sciFunctions %r_k_s %r_l_lss %r_l_p %r_l_r
syn keyword sciFunctions %r_l_s %r_m_hm %r_m_lss %r_m_p
syn keyword sciFunctions %r_m_r %r_m_s %r_matrix %r_n_lss
syn keyword sciFunctions %r_n_p %r_n_r %r_n_s %r_norm
syn keyword sciFunctions %r_o_lss %r_o_p %r_o_r %r_o_s
syn keyword sciFunctions %r_ones %r_p %r_p_s %r_prod
syn keyword sciFunctions %r_q_p %r_q_r %r_q_s %r_r_lss
syn keyword sciFunctions %r_r_p %r_r_r %r_r_s %r_rand
syn keyword sciFunctions %r_s %r_s_hm %r_s_lss %r_s_p
syn keyword sciFunctions %r_s_r %r_s_s %r_simp %r_size
syn keyword sciFunctions %r_string %r_sum %r_t %r_tril
syn keyword sciFunctions %r_triu %r_v_lss %r_v_p %r_v_r
syn keyword sciFunctions %r_v_s %r_varn %r_x_p %r_x_r
syn keyword sciFunctions %r_x_s %r_y_p %r_y_r %r_y_s
syn keyword sciFunctions %r_z_p %r_z_r %r_z_s %s_1_hm
syn keyword sciFunctions %s_1_i %s_2_hm %s_2_i %s_3_hm
syn keyword sciFunctions %s_3_i %s_4_hm %s_4_i %s_5
syn keyword sciFunctions %s_a_b %s_a_hm %s_a_i %s_a_ip
syn keyword sciFunctions %s_a_lss %s_a_msp %s_a_r %s_a_sp
syn keyword sciFunctions %s_and %s_b_i %s_b_s %s_c_b
syn keyword sciFunctions %s_c_cblock %s_c_lss %s_c_r %s_c_sp
syn keyword sciFunctions %s_d_b %s_d_i %s_d_p %s_d_r
syn keyword sciFunctions %s_d_sp %s_e %s_f_b %s_f_cblock
syn keyword sciFunctions %s_f_lss %s_f_r %s_f_sp %s_g_b
syn keyword sciFunctions %s_g_s %s_grand %s_h_b %s_h_s
syn keyword sciFunctions %s_i_b %s_i_c %s_i_ce %s_i_div
syn keyword sciFunctions %s_i_h %s_i_hm %s_i_i %s_i_lss
syn keyword sciFunctions %s_i_p %s_i_r %s_i_s %s_i_sp
syn keyword sciFunctions %s_i_spb %s_i_st %s_j_i %s_k_hm
syn keyword sciFunctions %s_k_p %s_k_r %s_k_sp %s_l_b
syn keyword sciFunctions %s_l_hm %s_l_i %s_l_lss %s_l_p
syn keyword sciFunctions %s_l_r %s_l_s %s_l_sp %s_log10
syn keyword sciFunctions %s_m_b %s_m_div %s_m_hm %s_m_i
syn keyword sciFunctions %s_m_ip %s_m_lss %s_m_msp %s_m_r
syn keyword sciFunctions %s_matrix %s_n_hm %s_n_i %s_n_l
syn keyword sciFunctions %s_n_lss %s_n_r %s_n_st %s_o_hm
syn keyword sciFunctions %s_o_i %s_o_l %s_o_lss %s_o_r
syn keyword sciFunctions %s_o_st %s_or %s_p_b %s_p_i
syn keyword sciFunctions %s_pow %s_q_hm %s_q_i %s_q_p
syn keyword sciFunctions %s_q_r %s_q_sp %s_r_b %s_r_i
syn keyword sciFunctions %s_r_lss %s_r_p %s_r_r %s_r_s
syn keyword sciFunctions %s_r_sp %s_s_b %s_s_hm %s_s_i
syn keyword sciFunctions %s_s_ip %s_s_lss %s_s_r %s_s_sp
syn keyword sciFunctions %s_simp %s_v_lss %s_v_p %s_v_r
syn keyword sciFunctions %s_v_s %s_x_b %s_x_hm %s_x_i
syn keyword sciFunctions %s_x_r %s_y_p %s_y_r %s_y_sp
syn keyword sciFunctions %s_z_p %s_z_r %s_z_sp %sn
syn keyword sciFunctions %sp_a_s %sp_a_sp %sp_and %sp_c_s
syn keyword sciFunctions %sp_ceil %sp_conj %sp_cos %sp_cumprod
syn keyword sciFunctions %sp_cumsum %sp_d_s %sp_d_sp %sp_det
syn keyword sciFunctions %sp_diag %sp_e %sp_exp %sp_f_s
syn keyword sciFunctions %sp_floor %sp_grand %sp_gsort %sp_i_ce
syn keyword sciFunctions %sp_i_h %sp_i_s %sp_i_sp %sp_i_st
syn keyword sciFunctions %sp_int %sp_inv %sp_k_s %sp_k_sp
syn keyword sciFunctions %sp_l_s %sp_l_sp %sp_length %sp_max
syn keyword sciFunctions %sp_min %sp_norm %sp_or %sp_p_s
syn keyword sciFunctions %sp_prod %sp_q_s %sp_q_sp %sp_r_s
syn keyword sciFunctions %sp_r_sp %sp_round %sp_s_s %sp_s_sp
syn keyword sciFunctions %sp_sin %sp_sqrt %sp_string %sp_sum
syn keyword sciFunctions %sp_tril %sp_triu %sp_y_s %sp_y_sp
syn keyword sciFunctions %sp_z_s %sp_z_sp %spb_and %spb_c_b
syn keyword sciFunctions %spb_cumprod %spb_cumsum %spb_diag %spb_e
syn keyword sciFunctions %spb_f_b %spb_g_b %spb_g_spb %spb_h_b
syn keyword sciFunctions %spb_h_spb %spb_i_b %spb_i_ce %spb_i_h
syn keyword sciFunctions %spb_i_st %spb_or %spb_prod %spb_sum
syn keyword sciFunctions %spb_tril %spb_triu %st_6 %st_c_st
syn keyword sciFunctions %st_e %st_f_st %st_i_b %st_i_c
syn keyword sciFunctions %st_i_fptr %st_i_h %st_i_i %st_i_ip
syn keyword sciFunctions %st_i_lss %st_i_msp %st_i_p %st_i_r
syn keyword sciFunctions %st_i_s %st_i_sp %st_i_spb %st_i_st
syn keyword sciFunctions %st_matrix %st_n_c %st_n_l %st_n_mc
syn keyword sciFunctions %st_n_p %st_n_s %st_o_c %st_o_l
syn keyword sciFunctions %st_o_mc %st_o_p %st_o_s %st_o_tl
syn keyword sciFunctions %st_p %st_size %st_string %st_t
syn keyword sciFunctions %ticks_i_h %xls_e %xls_p %xlssheet_e
syn keyword sciFunctions %xlssheet_p %xlssheet_size %xlssheet_string DominationRank
syn keyword sciFunctions G_make JSONParse NDcost OS_Version
syn keyword sciFunctions PlotSparse ReadHBSparse ResetFigureDDM Sfgrayplot
syn keyword sciFunctions Sgrayplot TCL_CreateSlave TitleLabel abcd
syn keyword sciFunctions abinv accept_func_default accept_func_vfsa acf
syn keyword sciFunctions acom1 acosd acosh acoshm
syn keyword sciFunctions acosm acot acotd acoth
syn keyword sciFunctions acsc acscd acsch adapthresh
syn keyword sciFunctions add_demo add_help_chapter add_module_help_chapter add_param
syn keyword sciFunctions add_profiling addmenu adj2sp aff2ab
syn keyword sciFunctions ana_style analpf analyze apifun_argindefault
syn keyword sciFunctions apifun_checkcallable apifun_checkcomplex apifun_checkdims apifun_checkflint
syn keyword sciFunctions apifun_checkgreq apifun_checklhs apifun_checkloweq apifun_checkoption
syn keyword sciFunctions apifun_checkrange apifun_checkreal apifun_checkrhs apifun_checkscalar
syn keyword sciFunctions apifun_checksquare apifun_checktype apifun_checkveccol apifun_checkvecrow
syn keyword sciFunctions apifun_checkvector apifun_expandfromsize apifun_expandvar apifun_keyvaluepairs
syn keyword sciFunctions aplat applyknnda arhnk arl2
syn keyword sciFunctions arma2p arma2ss armac armax
syn keyword sciFunctions armax1 arobasestring2strings arsimul ascii2string
syn keyword sciFunctions asciimat asec asecd asech
syn keyword sciFunctions asind asinh asinhm asinm
syn keyword sciFunctions assert_checkalmostequal assert_checkequal assert_checkerror assert_checkfalse
syn keyword sciFunctions assert_checkfilesequal assert_checktrue assert_comparecomplex assert_computedigits
syn keyword sciFunctions assert_cond2reltol assert_cond2reqdigits assert_generror atand
syn keyword sciFunctions atanh atanhm atanm atomsAutoload
syn keyword sciFunctions atomsAutoloadAdd atomsAutoloadDel atomsAutoloadList atomsCategoryList
syn keyword sciFunctions atomsCheckModule atomsDepTreeShow atomsGetConfig atomsGetInstalled
syn keyword sciFunctions atomsGetInstalledPath atomsGetLoaded atomsGetLoadedPath atomsGui
syn keyword sciFunctions atomsInstall atomsIsInstalled atomsIsLoaded atomsList
syn keyword sciFunctions atomsLoad atomsQuit atomsRemove atomsRepositoryAdd
syn keyword sciFunctions atomsRepositoryDel atomsRepositoryList atomsResize atomsRestoreConfig
syn keyword sciFunctions atomsSaveConfig atomsSearch atomsSetConfig atomsShow
syn keyword sciFunctions atomsSystemInit atomsSystemUpdate atomsTest atomsUpdate
syn keyword sciFunctions atomsVersion augment auread autumncolormap
syn keyword sciFunctions auwrite avgfilt2 balreal bar
syn keyword sciFunctions barh barhomogenize barycentermap bench_run
syn keyword sciFunctions bilin bilt bin2dec binaryand
syn keyword sciFunctions binaryor binaryxor binomial bitand
syn keyword sciFunctions bitcmp bitget bitor bitset
syn keyword sciFunctions bitxor black blanks bloc2exp
syn keyword sciFunctions bloc2ss bode bode_asymp bonecolormap
syn keyword sciFunctions bricontra bstap buttmag bvodeS
syn keyword sciFunctions bytecode bytecodewalk ca cainv
syn keyword sciFunctions calendar calerf calfrq calikpls
syn keyword sciFunctions calmlr calnnpls calpcr calpls
syn keyword sciFunctions calridge calsimpls calstackedpls caltestxx
syn keyword sciFunctions calvodka canon casc cat
syn keyword sciFunctions cat_code cbAtomsGui cb_m2sci_gui ccontrg
syn keyword sciFunctions ccswa cdel cdfsnk cell
syn keyword sciFunctions cell2mat cellstr center centering
syn keyword sciFunctions cepstrum cfspec char cheb1mag
syn keyword sciFunctions cheb2mag check2dFun checkXYPair check_classpath
syn keyword sciFunctions check_gateways check_librarypath check_modules_xml check_versions
syn keyword sciFunctions chepol chfact chsolve classcopda
syn keyword sciFunctions classfda classforwda classknnda classmarkov
syn keyword sciFunctions classplsda classtestknnda classtestxx clean_help
syn keyword sciFunctions clf clipboard clock close
syn keyword sciFunctions cls2dls cmb_lin cmndred cmoment
syn keyword sciFunctions coding_ga_binary coding_ga_identity coff coffg
syn keyword sciFunctions colcomp colcompr colinout colorbar
syn keyword sciFunctions colordef colored_map_options coloredmap colregul
syn keyword sciFunctions colsierra comdim comet comet3d
syn keyword sciFunctions companion complex compute_initial_temp cond
syn keyword sciFunctions cond2sp condestsp conf_obs2pcent configure_msifort
syn keyword sciFunctions configure_msvc conj2dis conjgrad cont_frm
syn keyword sciFunctions cont_mat contour contour2d contourf
syn keyword sciFunctions contrss conv convert_to_float convertindex
syn keyword sciFunctions convol convol2d coolcolormap copda
syn keyword sciFunctions copfac coppercolormap correl corrmat
syn keyword sciFunctions corrplot cosd cosh coshm
syn keyword sciFunctions cosm cotd cotg coth
syn keyword sciFunctions cothm cov covar covmat
syn keyword sciFunctions covsel covsel_auto covsel_mncn createBorder
syn keyword sciFunctions createBorderFont createConstraints createLayoutOptions createWindow
syn keyword sciFunctions createXConfiguration createfun createstruct cross
syn keyword sciFunctions crossover_ga_binary crossover_ga_default csc cscd
syn keyword sciFunctions csch csgn csim cspcana
syn keyword sciFunctions cspect csv2div csv2div2 ctr_gram
syn keyword sciFunctions curves cvclass cvclass2 cvgroups
syn keyword sciFunctions cvreg cvxx czt daapply
syn keyword sciFunctions dae daeoptions damp datafit
syn keyword sciFunctions datatipCreatePopupMenu datatipDefaultDisplay datatipDeleteSelected datatipGUIEventHandler
syn keyword sciFunctions datatipGetEntities datatipGetSelected datatipGetStruct datatipHilite
syn keyword sciFunctions datatipRadioCallback datatipRemoveAll datatipRemoveNearest datatipSetGUI
syn keyword sciFunctions datatipSetSelected datatipSetStruct datatipSetTipPosition datatipSetTipStyle
syn keyword sciFunctions datatipsGUI date datenum datevec
syn keyword sciFunctions dbphi dcf dcsv2div dcsv2div2
syn keyword sciFunctions ddp dec2bin dec2hex dec2oct
syn keyword sciFunctions del_help_chapter del_module_help_chapter demo_begin demo_choose
syn keyword sciFunctions demo_compiler demo_end demo_file_choice demo_folder_choice
syn keyword sciFunctions demo_function_choice demo_gui demo_run demo_viewCode
syn keyword sciFunctions dendrogram denom derivat derivative
syn keyword sciFunctions des2ss des2tf detectmsifort64tools detectmsvc64tools
syn keyword sciFunctions determ detr detrend detrending
syn keyword sciFunctions devtools_run_builder dhnorm diacmap diff
syn keyword sciFunctions diophant dir dirname dis2conj
syn keyword sciFunctions dispfiles distfun_betacdf distfun_betafitmm distfun_betainc
syn keyword sciFunctions distfun_betainv distfun_betapdf distfun_betastat distfun_binocdf
syn keyword sciFunctions distfun_binofitmm distfun_binoinv distfun_binopdf distfun_binostat
syn keyword sciFunctions distfun_chi2cdf distfun_chi2inv distfun_chi2pdf distfun_chi2stat
syn keyword sciFunctions distfun_erfcinv distfun_evcdf distfun_evinv distfun_evpdf
syn keyword sciFunctions distfun_evstat distfun_expcdf distfun_expinv distfun_exppdf
syn keyword sciFunctions distfun_expstat distfun_fcdf distfun_finv distfun_fpdf
syn keyword sciFunctions distfun_fstat distfun_gamcdf distfun_gamfitmm distfun_gaminv
syn keyword sciFunctions distfun_gammainc distfun_gampdf distfun_gamstat distfun_genericpdf
syn keyword sciFunctions distfun_geocdf distfun_geoinv distfun_geopdf distfun_geostat
syn keyword sciFunctions distfun_getpath distfun_histocdf distfun_histocreate distfun_histoinv
syn keyword sciFunctions distfun_histopdf distfun_histornd distfun_histostat distfun_hygecdf
syn keyword sciFunctions distfun_hygeinv distfun_hygepdf distfun_hygestat distfun_hygetable
syn keyword sciFunctions distfun_inthisto distfun_kscdf distfun_ksinv distfun_kspdf
syn keyword sciFunctions distfun_ksstat distfun_list distfun_logncdf distfun_logninv
syn keyword sciFunctions distfun_lognpdf distfun_lognstat distfun_logucdf distfun_loguinv
syn keyword sciFunctions distfun_logupdf distfun_logurnd distfun_logustat distfun_mnpdf
syn keyword sciFunctions distfun_mnstat distfun_name2func distfun_nbincdf distfun_nbininv
syn keyword sciFunctions distfun_nbinpdf distfun_nbinstat distfun_ncfcdf distfun_ncfinv
syn keyword sciFunctions distfun_ncfpdf distfun_ncfstat distfun_nctcdf distfun_nctinv
syn keyword sciFunctions distfun_nctpdf distfun_nctstat distfun_ncx2cdf distfun_ncx2inv
syn keyword sciFunctions distfun_ncx2pdf distfun_ncx2stat distfun_normcdf distfun_norminv
syn keyword sciFunctions distfun_normpdf distfun_normstat distfun_plotintcdf distfun_poisscdf
syn keyword sciFunctions distfun_poissinv distfun_poisspdf distfun_poissstat distfun_tcdf
syn keyword sciFunctions distfun_tinv distfun_tnormcdf distfun_tnorminv distfun_tnormpdf
syn keyword sciFunctions distfun_tnormrnd distfun_tnormstat distfun_tpdf distfun_tstat
syn keyword sciFunctions distfun_unidcdf distfun_unidinv distfun_unidpdf distfun_unidstat
syn keyword sciFunctions distfun_unifcdf distfun_uniffitmm distfun_unifinv distfun_unifpdf
syn keyword sciFunctions distfun_unifstat distfun_vectorrnd distfun_wblcdf distfun_wblfit
syn keyword sciFunctions distfun_wblfitmm distfun_wblinv distfun_wbllike distfun_wblloglik
syn keyword sciFunctions distfun_wblpdf distfun_wblplot distfun_wblstat div
syn keyword sciFunctions div2csv div2dcsv div2mat div2mat_div2struct
syn keyword sciFunctions div2struct div2tab dllinfo dop
syn keyword sciFunctions dotcmap dragrect dscr dsimul
syn keyword sciFunctions dt_ility dtsi edit edit_curv
syn keyword sciFunctions edit_error editor eigenmarkov eigs
syn keyword sciFunctions ell1mag emaxseg enlarge_shape entropy
syn keyword sciFunctions eomday epo epoe epred
syn keyword sciFunctions eqfir eqiir equil equil1
syn keyword sciFunctions erfinv eros errbar etime
syn keyword sciFunctions eval eval3d eval3dp evans
syn keyword sciFunctions evstr example_run expression2code extract_help_examples
syn keyword sciFunctions fac3d fac3d1 factor factorial
syn keyword sciFunctions factors faurre fchamp fcontour
syn keyword sciFunctions fcontour2d fda ffilt fft2
syn keyword sciFunctions fftshift fgrayplot fieldnames filt_sinc
syn keyword sciFunctions filter findABCD findAC findBDK
syn keyword sciFunctions findContour findR find_freq find_links
syn keyword sciFunctions findm findmsifortcompiler findmsvccompiler findobj
syn keyword sciFunctions findx0BD firstnonsingleton fix flag_accuracy_level
syn keyword sciFunctions flag_impl_significance flag_impl_skip_nan flag_nans_occured flipdim
syn keyword sciFunctions flts fminsearch formatBlackTip formatBodeMagTip
syn keyword sciFunctions formatBodePhaseTip formatGainplotTip formatHallModuleTip formatHallPhaseTip
syn keyword sciFunctions formatNicholsGainTip formatNicholsPhaseTip formatNyquistTip formatPhaseplotTip
syn keyword sciFunctions formatSgridDampingTip formatSgridFreqTip formatZgridDampingTip formatZgridFreqTip
syn keyword sciFunctions format_txt forwda fourplan fplot2d
syn keyword sciFunctions fplot3d fplot3d1 frep2tf freson
syn keyword sciFunctions frfit frmag fseek_origin fsfirlin
syn keyword sciFunctions fspec fspecg fstabst ftest
syn keyword sciFunctions ftuneq fullfile fullrf fullrfk
syn keyword sciFunctions fun2string g_margin gainplot gamitg
syn keyword sciFunctions gapremove gca gcare gcd
syn keyword sciFunctions gce gcf gda gdf
syn keyword sciFunctions ged ged_insert gencompilationflags_unix generateBlockImage
syn keyword sciFunctions generateBlockImages generic_i_ce generic_i_h generic_i_hm
syn keyword sciFunctions generic_i_s generic_i_st genfac3d genlib
syn keyword sciFunctions genmarkov geomean getColorIndex getDiagramVersion
syn keyword sciFunctions getLineSpec getModelicaPath getPlotPropertyName getPreferencesValue
syn keyword sciFunctions getSurfPropertyName getTitleLabelPropertyNam get_figure_handle get_file_path
syn keyword sciFunctions get_function_path get_param get_profile getcolor
syn keyword sciFunctions getd getscilabkeywords getshell gettklib
syn keyword sciFunctions getvalue gfare gfrancis ghdl2tree
syn keyword sciFunctions ghdl_fields givens glever glx_div2struct
syn keyword sciFunctions glx_div2xml glx_list2struct glx_mat2div glx_mat2div_struct2div
syn keyword sciFunctions glx_resreg2xml glx_struct2div glx_struct2list glx_tab2div
syn keyword sciFunctions glx_x3D2xml glx_xlist2xml glx_xml2resreg glx_xml2x3D
syn keyword sciFunctions glx_xml2xlist glx_xml2xstruct glx_xstruct2xml gmres
syn keyword sciFunctions graduate graycolormap graypolarplot group
syn keyword sciFunctions groupcreate gschur gspec gtild
syn keyword sciFunctions guialignements guiaxistight guibuilder guicheckprops
syn keyword sciFunctions guicontrolcreate guigencode guigetfile guimenueditor
syn keyword sciFunctions guipropsedit h2norm h_cl h_inf
syn keyword sciFunctions h_inf_st h_norm hallchart halt
syn keyword sciFunctions hank hankelsv harmean haveacompiler
syn keyword sciFunctions head_comments help_from_sci help_skeleton helptbx_getpath
syn keyword sciFunctions helptbx_helpupdate helptbx_iscontentupdte helptbx_updtifneeded hermit
syn keyword sciFunctions hex2dec hilb hilbert hiseq
syn keyword sciFunctions hist3d histc histplot holdoff
syn keyword sciFunctions holdon horner hotcolormap householder
syn keyword sciFunctions hrmt hsv2rgb hsvcolormap htrianr
syn keyword sciFunctions hypermat ica_blocs_signals ica_durbwatmatrix_op ica_dwresiduals
syn keyword sciFunctions ica_pca_tall_pct_dnr ica_sort_ics icacolumnpartition icajade
syn keyword sciFunctions icarowpartition icascores icasigns idct
syn keyword sciFunctions idst ifft ifftshift iir
syn keyword sciFunctions iirgroup iirlp iirmod iirp
syn keyword sciFunctions ikpls ilib_build ilib_build_jar ilib_compile
syn keyword sciFunctions ilib_for_link ilib_gen_Make ilib_gen_Make_unix ilib_gen_cleaner
syn keyword sciFunctions ilib_gen_gateway ilib_gen_loader ilib_include_flag ilib_mex_build
syn keyword sciFunctions im_inv importScicosDiagram importScicosPal importXcosDiagram
syn keyword sciFunctions imrep2ss ind2sub indexseek inistate
syn keyword sciFunctions init_ga_default init_param input instruction2code
syn keyword sciFunctions intc intdec integrate interp1
syn keyword sciFunctions interpln intersect intl intsplin
syn keyword sciFunctions inttrap inv_coeff invr invrs
syn keyword sciFunctions invsyslin iqr isLeapYear is_absolute_path
syn keyword sciFunctions is_param iscell iscellstr iscolumn
syn keyword sciFunctions isconj isdisj isempty isfield
syn keyword sciFunctions isinf islist ismatrix isnan
syn keyword sciFunctions isoview isrow isscalar issparse
syn keyword sciFunctions issquare isstruct isvector iterthresh
syn keyword sciFunctions jetcolormap jre_path jstr justify
syn keyword sciFunctions kalm karmarkar kcmap kcmeans
syn keyword sciFunctions kernel kernel_rebuild knnda kpure
syn keyword sciFunctions krac2 kroneck kscmap lattn
syn keyword sciFunctions lattp launchtest lcf lcm
syn keyword sciFunctions lcmdiag leastsq legend legends
syn keyword sciFunctions leqe leqr lev levin
syn keyword sciFunctions lex_sort lft lin lin2mu
syn keyword sciFunctions lindquist linf linfn linkage
syn keyword sciFunctions linpro linsolve linspace list2vec
syn keyword sciFunctions list_param listfiles listfunctions listvarinfile
syn keyword sciFunctions lmisolver lmitool loadXcosLibs loadmatfile
syn keyword sciFunctions loadwave locate log2 logm
syn keyword sciFunctions logspace lqe lqg lqg2stan
syn keyword sciFunctions lqg_ltr lqr ls lyap
syn keyword sciFunctions m2sci_gui m_circle macglov macrovar
syn keyword sciFunctions mad makecell manedit map
syn keyword sciFunctions mapsound markp2ss maskthresh matfile2sci
syn keyword sciFunctions mdelete mean meanf medfilt2
syn keyword sciFunctions median memberpred members membership
syn keyword sciFunctions menubar mese mesh meshgrid
syn keyword sciFunctions mfile2sci minreal minss mkdir
syn keyword sciFunctions mlr moc_accumarray moc_angle moc_cholinv
syn keyword sciFunctions moc_circshift moc_columns moc_conv moc_conv2
syn keyword sciFunctions moc_corr moc_corrcov moc_cov moc_deal
syn keyword sciFunctions moc_fft moc_filtfilt moc_fliplr moc_flipud
syn keyword sciFunctions moc_fzero moc_gaussian moc_ifft moc_inpolygon
syn keyword sciFunctions moc_islogical moc_ismember moc_isnumeric moc_isvector
syn keyword sciFunctions moc_logical moc_null moc_poly moc_polyfit
syn keyword sciFunctions moc_polyval moc_postpad moc_prepad moc_randi
syn keyword sciFunctions moc_range moc_rot90 moc_rows moc_size_equal
syn keyword sciFunctions moc_spdiags moc_squeeze moc_sumsq moc_unique
syn keyword sciFunctions moc_unwrap moc_xcorr moc_xcorr2 moc_xcov
syn keyword sciFunctions modulo moment mps2linpro mrfit
syn keyword sciFunctions msc mstr2sci mtlb mtlb_0
syn keyword sciFunctions mtlb_a mtlb_all mtlb_any mtlb_axes
syn keyword sciFunctions mtlb_axis mtlb_beta mtlb_box mtlb_choices
syn keyword sciFunctions mtlb_close mtlb_colordef mtlb_cond mtlb_cov
syn keyword sciFunctions mtlb_cumprod mtlb_cumsum mtlb_dec2hex mtlb_delete
syn keyword sciFunctions mtlb_diag mtlb_diff mtlb_dir mtlb_double
syn keyword sciFunctions mtlb_e mtlb_echo mtlb_error mtlb_eval
syn keyword sciFunctions mtlb_exist mtlb_eye mtlb_false mtlb_fft
syn keyword sciFunctions mtlb_fftshift mtlb_filter mtlb_find mtlb_findstr
syn keyword sciFunctions mtlb_fliplr mtlb_fopen mtlb_format mtlb_fprintf
syn keyword sciFunctions mtlb_fread mtlb_fscanf mtlb_full mtlb_fwrite
syn keyword sciFunctions mtlb_get mtlb_grid mtlb_hold mtlb_i
syn keyword sciFunctions mtlb_ifft mtlb_image mtlb_imp mtlb_int16
syn keyword sciFunctions mtlb_int32 mtlb_int8 mtlb_is mtlb_isa
syn keyword sciFunctions mtlb_isfield mtlb_isletter mtlb_isspace mtlb_l
syn keyword sciFunctions mtlb_legendre mtlb_linspace mtlb_logic mtlb_logical
syn keyword sciFunctions mtlb_loglog mtlb_lower mtlb_max mtlb_mean
syn keyword sciFunctions mtlb_median mtlb_mesh mtlb_meshdom mtlb_min
syn keyword sciFunctions mtlb_more mtlb_num2str mtlb_ones mtlb_pcolor
syn keyword sciFunctions mtlb_plot mtlb_prod mtlb_qr mtlb_qz
syn keyword sciFunctions mtlb_rand mtlb_randn mtlb_rcond mtlb_realmax
syn keyword sciFunctions mtlb_realmin mtlb_s mtlb_semilogx mtlb_semilogy
syn keyword sciFunctions mtlb_setstr mtlb_size mtlb_sort mtlb_sortrows
syn keyword sciFunctions mtlb_sprintf mtlb_sscanf mtlb_std mtlb_strcmp
syn keyword sciFunctions mtlb_strcmpi mtlb_strfind mtlb_strrep mtlb_subplot
syn keyword sciFunctions mtlb_sum mtlb_t mtlb_toeplitz mtlb_tril
syn keyword sciFunctions mtlb_triu mtlb_true mtlb_type mtlb_uint16
syn keyword sciFunctions mtlb_uint32 mtlb_uint8 mtlb_upper mtlb_var
syn keyword sciFunctions mtlb_zeros mu2lin mutation_ga_binary mutation_ga_default
syn keyword sciFunctions mvcorrel mvvacov mw2formulae nan_andrewsplot
syn keyword sciFunctions nan_anova nan_betainc nan_bland_altman nan_boxplot
syn keyword sciFunctions nan_cat2bin nan_cdfplot nan_center nan_classify
syn keyword sciFunctions nan_cluster nan_coef_of_variation nan_confusionmat nan_conv2nan
syn keyword sciFunctions nan_cor nan_corrcoef nan_cov nan_covm
syn keyword sciFunctions nan_crosstab nan_cumsum nan_decovm nan_detrend
syn keyword sciFunctions nan_ecdf nan_ecdfhist nan_ecovm nan_errorb
syn keyword sciFunctions nan_errorbar nan_filter nan_fscatter3 nan_fss
syn keyword sciFunctions nan_geomean nan_getpath nan_gplotmatrix nan_grp2idx
syn keyword sciFunctions nan_grpstats nan_gscatter nan_harmmean nan_hist
syn keyword sciFunctions nan_hist2res nan_histc nan_histo nan_histo2
syn keyword sciFunctions nan_histo3 nan_histo4 nan_iqr nan_kappa
syn keyword sciFunctions nan_kmeans nan_kurtosis nan_linkage nan_mad
syn keyword sciFunctions nan_mahal nan_mean nan_meanAbsDev nan_meandev
syn keyword sciFunctions nan_meansq nan_medAbsDev nan_median nan_mgrp2idx
syn keyword sciFunctions nan_moment nan_nhist nan_normplot nan_parallelcoords
syn keyword sciFunctions nan_partcorrcoef nan_partest nan_pdist nan_percentile
syn keyword sciFunctions nan_plotmatrix nan_prctile nan_probplot nan_qqplot
syn keyword sciFunctions nan_quantile nan_rankcorr nan_ranks nan_regress
syn keyword sciFunctions nan_rms nan_rocplot nan_row_col_deletion nan_sem
syn keyword sciFunctions nan_skewness nan_spearman nan_squareform nan_statistic
syn keyword sciFunctions nan_std nan_sumsq nan_test_sc nan_tiedrank
syn keyword sciFunctions nan_train_lda_sparse nan_train_sc nan_trimean nan_trimmean
syn keyword sciFunctions nan_var nan_xcovf nan_xval nan_y2res
syn keyword sciFunctions nan_zScoreMedian nan_zscore nancumsum nand2mean
syn keyword sciFunctions nandel nanmax nanmean nanmeanf
syn keyword sciFunctions nanmedian nanmin nanreglin nanstdev
syn keyword sciFunctions nansum narsimul ndgrid ndims
syn keyword sciFunctions nehari neigh_func_csa neigh_func_default neigh_func_fsa
syn keyword sciFunctions neigh_func_vfsa neldermead_cget neldermead_configure neldermead_costf
syn keyword sciFunctions neldermead_defaultoutput neldermead_destroy neldermead_function neldermead_get
syn keyword sciFunctions neldermead_log neldermead_new neldermead_restart neldermead_search
syn keyword sciFunctions neldermead_updatesimp nextpow2 nf3d nicholschart
syn keyword sciFunctions nlev nmplot_cget nmplot_configure nmplot_contour
syn keyword sciFunctions nmplot_destroy nmplot_function nmplot_get nmplot_historyplot
syn keyword sciFunctions nmplot_log nmplot_new nmplot_outputcmd nmplot_restart
syn keyword sciFunctions nmplot_search nmplot_simplexhistory nnpls nns_buildbayes
syn keyword sciFunctions nns_init nns_nnplsrepeat nns_simul nns_simulbis
syn keyword sciFunctions nns_simulter noisegen nonreg_test_run normc
syn keyword sciFunctions now nthroot null num2cell
syn keyword sciFunctions num2str numderivative numdiff numer
syn keyword sciFunctions nyquist nyquistfrequencybounds obs_gram obscont
syn keyword sciFunctions observer obsv_mat obsvss oceancolormap
syn keyword sciFunctions oct2dec odeoptions optim_ga optim_moga
syn keyword sciFunctions optim_nsga optim_nsga2 optim_sa optimbase_cget
syn keyword sciFunctions optimbase_checkbounds optimbase_checkcostfun optimbase_checkx0 optimbase_configure
syn keyword sciFunctions optimbase_destroy optimbase_function optimbase_get optimbase_hasbounds
syn keyword sciFunctions optimbase_hasconstraints optimbase_hasnlcons optimbase_histget optimbase_histset
syn keyword sciFunctions optimbase_incriter optimbase_isfeasible optimbase_isinbounds optimbase_isinnonlincons
syn keyword sciFunctions optimbase_log optimbase_logshutdown optimbase_logstartup optimbase_new
syn keyword sciFunctions optimbase_outputcmd optimbase_outstruct optimbase_proj2bnds optimbase_set
syn keyword sciFunctions optimbase_stoplog optimbase_terminate optimget optimplotfunccount
syn keyword sciFunctions optimplotfval optimplotx optimset optimsimplex_center
syn keyword sciFunctions optimsimplex_check optimsimplex_compsomefv optimsimplex_computefv optimsimplex_deltafv
syn keyword sciFunctions optimsimplex_deltafvmax optimsimplex_destroy optimsimplex_dirmat optimsimplex_fvmean
syn keyword sciFunctions optimsimplex_fvstdev optimsimplex_fvvariance optimsimplex_getall optimsimplex_getallfv
syn keyword sciFunctions optimsimplex_getallx optimsimplex_getfv optimsimplex_getn optimsimplex_getnbve
syn keyword sciFunctions optimsimplex_getve optimsimplex_getx optimsimplex_gradientfv optimsimplex_log
syn keyword sciFunctions optimsimplex_new optimsimplex_reflect optimsimplex_setall optimsimplex_setallfv
syn keyword sciFunctions optimsimplex_setallx optimsimplex_setfv optimsimplex_setn optimsimplex_setnbve
syn keyword sciFunctions optimsimplex_setve optimsimplex_setx optimsimplex_shrink optimsimplex_size
syn keyword sciFunctions optimsimplex_sort optimsimplex_xbar orth orthProj
syn keyword sciFunctions osc outlier output_ga_default output_moga_default
syn keyword sciFunctions output_nsga2_default output_nsga_default p_margin pack
syn keyword sciFunctions padding paramfplot2d pareto_filter parrot
syn keyword sciFunctions patch_pls_c_yloadings pbig pca pcaapply
syn keyword sciFunctions pcana pcr pdist pdiv
syn keyword sciFunctions pds_apply pds_calc pen2ea pencan
syn keyword sciFunctions pencost penlaur perctl perl
syn keyword sciFunctions perms permute pertrans pfactors
syn keyword sciFunctions pfss phasemag phaseplot phc
syn keyword sciFunctions pie pinkcolormap pinv pixDist
syn keyword sciFunctions playsnd plot plot3d2 plot3d3
syn keyword sciFunctions plotframe plotprofile pls plsda
syn keyword sciFunctions plzr pmodulo pol2des pol2str
syn keyword sciFunctions polar polarplot polfact pop_dextract
syn keyword sciFunctions pop_dtop pop_dtop_optim pop_dtune popapply
syn keyword sciFunctions prbs_a prettyprint primes princomp
syn keyword sciFunctions profile proj projaff projsl
syn keyword sciFunctions projspec psmall pspect qmr
syn keyword sciFunctions qpsolve quapro quart quaskro
syn keyword sciFunctions rafiter rainbowcolormap randpencil range
syn keyword sciFunctions rank rdel readxls recompilefunction
syn keyword sciFunctions recons regapply reglin regplot
syn keyword sciFunctions remezb remove_param remove_profiling reorder
syn keyword sciFunctions repfreq replace_Ix_by_Fx replot repmat
syn keyword sciFunctions reset_profiling resize_matrix rgb2name rhs2code
syn keyword sciFunctions ric_desc riccati ridge rmdir
syn keyword sciFunctions rot90 rotate routh_t rowcomp
syn keyword sciFunctions rowcompr rowinout rowregul rowshuff
syn keyword sciFunctions rref sample samplef samwr
syn keyword sciFunctions savematfile savewave savgol sca
syn keyword sciFunctions scaling scanf scf sci2exp
syn keyword sciFunctions sciGUI_init sci_sparse scisptdemo scitest
syn keyword sciFunctions scmap scsv2sci sda sdf
syn keyword sciFunctions sdiff sec secd sech
syn keyword sciFunctions secto3d selection_ga_elitist selection_ga_random sensi
syn keyword sciFunctions setDefaultColor setPlotProperty setPreferencesValue setStringPosition
syn keyword sciFunctions setSurfProperty setTitleLabelProperty set_param setdiff
syn keyword sciFunctions seteventhandler sgrid show_margins show_pca
syn keyword sciFunctions showprofile sierra signm simufilters
syn keyword sciFunctions sinc sincd sind sinh
syn keyword sciFunctions sinhm sinm skeleton sm2des
syn keyword sciFunctions sm2ss smga smooth snk
syn keyword sciFunctions snv solve sound soundsec
syn keyword sciFunctions sp2adj spaninter spanplus spantwo
syn keyword sciFunctions specfact specfun_combine specfun_combinerepeat specfun_expm1
syn keyword sciFunctions specfun_factorial specfun_factoriallog specfun_gammainc specfun_getpath
syn keyword sciFunctions specfun_ismember specfun_lambertw specfun_log1p specfun_nchoosek
syn keyword sciFunctions specfun_pascal specfun_subset speye spls
syn keyword sciFunctions sprand springcolormap spzeros sqrform
syn keyword sciFunctions sqroot sqrtm square squarewave
syn keyword sciFunctions squeeze srfaur srkf ss2des
syn keyword sciFunctions ss2ss ss2tf sskf ssprint
syn keyword sciFunctions ssrand st_i_generic st_ility stabil
syn keyword sciFunctions standardize starcmap statgain statis
syn keyword sciFunctions statislda std stdev stdevf
syn keyword sciFunctions str2conj strange strcmpi strseek
syn keyword sciFunctions struct sub2ind subplot summercolormap
syn keyword sciFunctions sumskipnan surf sva svplot
syn keyword sciFunctions sylm sylv sysconv sysdiag
syn keyword sciFunctions sysfact syslin syssize system
syn keyword sciFunctions systmat tabul tand tanh
syn keyword sciFunctions tanhm tanm tbx_build_blocks tbx_build_cleaner
syn keyword sciFunctions tbx_build_gateway tbx_build_gateway_clean tbx_build_gateway_loader tbx_build_help
syn keyword sciFunctions tbx_build_help_loader tbx_build_loader tbx_build_localization tbx_build_macros
syn keyword sciFunctions tbx_build_pal_loader tbx_build_src tbx_builder tbx_builder_gateway
syn keyword sciFunctions tbx_builder_gateway_lang tbx_builder_help tbx_builder_help_lang tbx_builder_macros
syn keyword sciFunctions tbx_builder_src tbx_builder_src_lang tbx_generate_pofile temp_law_csa
syn keyword sciFunctions temp_law_default temp_law_fsa temp_law_huang temp_law_vfsa
syn keyword sciFunctions test_clean test_on_columns test_run test_run_level
syn keyword sciFunctions testexamples tf2des tf2ss thrownan
syn keyword sciFunctions tic time_id title titlepage
syn keyword sciFunctions toc toeplitz tokenpos toolboxes
syn keyword sciFunctions trace trans translatepaths tree2code
syn keyword sciFunctions tree_show trfmod trianfml trimmean
syn keyword sciFunctions trisolve trzeros twinkle typeof
syn keyword sciFunctions uiConcatTree uiCreateNode uiCreateTree uiDeleteNode
syn keyword sciFunctions uiDumpTree uiEqualsTree uiFindNode uiGetChildrenNode
syn keyword sciFunctions uiGetNodePosition uiGetParentNode uiInsertNode ui_observer
syn keyword sciFunctions uitable union unique unit_test_run
syn keyword sciFunctions unix_g unix_s unix_w unix_x
syn keyword sciFunctions unobs unpack unwrap vanderm
syn keyword sciFunctions variance variancef vec2list vectorfind
syn keyword sciFunctions ver vodka warnobsolete wavread
syn keyword sciFunctions wavwrite wcenter weekday wfir
syn keyword sciFunctions wfir_gui whereami whitecolormap who_user
syn keyword sciFunctions whos wiener wigner wilks
syn keyword sciFunctions window winlist wintercolormap with_javasci
syn keyword sciFunctions with_macros_source with_tk x_choices x_matrix
syn keyword sciFunctions xclear xcorr xcosBlockEval xcosBlockInterface
syn keyword sciFunctions xcosCodeGeneration xcosConfigureModelica xcosPal xcosPalAdd
syn keyword sciFunctions xcosPalAddBlock xcosPalExport xcosPalGenerateAllIcons xcosShowBlockWarning
syn keyword sciFunctions xcosValidateBlockSet xcosValidateCompareBlock xcos_compile xcos_debug_gui
syn keyword sciFunctions xcos_run xcos_simulate xcov xdisp
syn keyword sciFunctions xgetech xinfo xlabel xload
syn keyword sciFunctions xmltoformat xmltohtml xmltojar xmltopdf
syn keyword sciFunctions xmltops xmltoweb xnumb xrpoly
syn keyword sciFunctions xsave xsetech xstringl ylabel
syn keyword sciFunctions yulewalk zeropen zgrid zlabel
syn keyword sciFunctions zpbutt zpch1 zpch2 zpell
" Keywords from Scilab 5.5.1
syn keyword sciFunctions %asn %s_bezout %s_gcd %s_lcm
syn keyword sciFunctions IsAScalar chart corr2 detectfaces
syn keyword sciFunctions detectlefteyes detectrighteyes edge fspecial
syn keyword sciFunctions getSIVPpath im2bw im2double im2int16
syn keyword sciFunctions im2int32 im2int8 im2uint16 im2uint8
syn keyword sciFunctions imabsdiff imadd imcomplement imcrop
syn keyword sciFunctions imdivide imhist imlincomb immultiply
syn keyword sciFunctions imnoise imresize imshow imsubtract
syn keyword sciFunctions imwrite isbw jmat mat2gray
syn keyword sciFunctions mean2 mfft milk_drop msd
syn keyword sciFunctions nfreq ntsc2rgb pcg powershell
syn keyword sciFunctions rectangle regress rgb2gray rgb2hsv
syn keyword sciFunctions rgb2ntsc rgb2ycbcr st_deviation std2
syn keyword sciFunctions stdev2 xmltochm xs2im xsetm
syn keyword sciFunctions ycbcr2rgb
" }}}

" {{{
syn keyword sciXcosfuns block_parameter_error find_scicos_version fixedpointgcd get_scicos_version
syn keyword sciXcosfuns initial_scicos_tables lincos returntoscilab scicos_getvalue
syn keyword sciXcosfuns scicos_simulate scicos_workspace_init steadycos with_modelica_compiler
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

" | Keywords                     | Color            | RGB         | HEX     |
" +------------------------------+------------------+-------------+---------+
" | Primitives     (Operator)    | Medium blue      |   0,  0,205 | #0000CD |
" | Commands       (Conditional) | Crimson          | 220, 20, 60 | #DC143C |
" | Variables      (Statement)   | Dark orange      | 255,140,  0 | #FF8C00 |
" | Functions      (Function)    | Dodger blue      |  30,144,255 | #1E90FF |
" | Xcos functions (Label)       | Purple           | 128,  0,128 | #800080 |
" | String         (String)      | Gray             | 128,128,128 | #808080 |
" | Comment        (Comment)     | Medium sea green |  60,179,113 | #3CB371 |

hi Normal      guibg=#F5F5F5 " White smoke
hi Operator    guifg=#0000CD
hi Conditional guifg=#DC143C
hi Statement   guifg=#FF8C00 gui=none
hi Function    guifg=#1E90FF
hi Label       guifg=#800080
hi String      guifg=#808080
hi Comment     guifg=#3CB371

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
    HiLink sciCommands             Conditional
    HiLink sciVariables            Statement
    HiLink sciFunctions            Function
    HiLink sciXcosfuns             Label

    delcommand HiLink
endif

let b:current_syntax="scilab"
