" Vim syntax file
" Language   : Scilab
" Maintainer : Astonfe
" Last change: 2016-03-02
" Thanks to  : Vaclav Mocek, Patricio Toledo
" Updated to Scilab 5.5.1 with the toolboxes: GUI Builder, IPT3, JSON, NaN, Quapro and dependencies.
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
syn keyword sciPrimitives addcolor addf addframe addhistory
syn keyword sciPrimitives addinter addlocalizationdomain amell and
syn keyword sciPrimitives argn arl2_ius ascii asin
syn keyword sciPrimitives atan aviclose avicloseall avifile
syn keyword sciPrimitives aviinfo avilistopened aviopen avireadframe
syn keyword sciPrimitives backslash balanc banner base2dec
syn keyword sciPrimitives basename bdiag beep besselh
syn keyword sciPrimitives besseli besselj besselk bessely
syn keyword sciPrimitives beta bezout bfinit blkfc1i
syn keyword sciPrimitives blkslvi bool2s browsehistory browsevar
syn keyword sciPrimitives bsplin3val buildDoc buildouttb bvode
syn keyword sciPrimitives c_link call callblk camopen
syn keyword sciPrimitives camshift captions cd cdfbet
syn keyword sciPrimitives cdfbin cdfchi cdfchn cdff
syn keyword sciPrimitives cdffnc cdfgam cdfnbn cdfnor
syn keyword sciPrimitives cdfpoi cdft ceil champ
syn keyword sciPrimitives champ1 chdir chol clean
syn keyword sciPrimitives clearfun clearglobal closeEditor closeEditvar
syn keyword sciPrimitives closeXcos code2str coeff color
syn keyword sciPrimitives comp completion conj consolebox
syn keyword sciPrimitives contour2di contr conv2 convstr
syn keyword sciPrimitives copy copyfile corr cos
syn keyword sciPrimitives coserror covm_mex createGUID createdir
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
syn keyword sciPrimitives detectforeground detectobjects dgettext dhinf
syn keyword sciPrimitives diag diary diffobjs disp
syn keyword sciPrimitives dispbpt displayhistory disposefftwlibrary distfun_betarnd
syn keyword sciPrimitives distfun_binornd distfun_cdfbeta distfun_cdfbino distfun_cdfchi2
syn keyword sciPrimitives distfun_cdfev distfun_cdfexp distfun_cdff distfun_cdfgam
syn keyword sciPrimitives distfun_cdfgeo distfun_cdfhyge distfun_cdfks distfun_cdflogn
syn keyword sciPrimitives distfun_cdfnbn distfun_cdfncf distfun_cdfnct distfun_cdfncx2
syn keyword sciPrimitives distfun_cdfnorm distfun_cdfpoiss distfun_cdft distfun_cdfunif
syn keyword sciPrimitives distfun_cdfwbl distfun_chi2rnd distfun_evrnd distfun_exprnd
syn keyword sciPrimitives distfun_frnd distfun_gamrnd distfun_genget distfun_genset
syn keyword sciPrimitives distfun_geornd distfun_hygernd distfun_incgamma distfun_invbeta
syn keyword sciPrimitives distfun_invbino distfun_invchi2 distfun_invev distfun_invexp
syn keyword sciPrimitives distfun_invf distfun_invgam distfun_invgeo distfun_invhyge
syn keyword sciPrimitives distfun_invks distfun_invlogn distfun_invnbn distfun_invncf
syn keyword sciPrimitives distfun_invnct distfun_invncx2 distfun_invnorm distfun_invpoiss
syn keyword sciPrimitives distfun_invt distfun_invunif distfun_invwbl distfun_ksrnd
syn keyword sciPrimitives distfun_lognrnd distfun_mnrnd distfun_mvnpdf distfun_nbinrnd
syn keyword sciPrimitives distfun_ncfrnd distfun_nctrnd distfun_ncx2rnd distfun_normrnd
syn keyword sciPrimitives distfun_pdfbeta distfun_pdfbino distfun_pdfchi2 distfun_pdfev
syn keyword sciPrimitives distfun_pdfexp distfun_pdff distfun_pdfgam distfun_pdfgeo
syn keyword sciPrimitives distfun_pdfhyge distfun_pdfks distfun_pdflogn distfun_pdfnbn
syn keyword sciPrimitives distfun_pdfncf distfun_pdfnct distfun_pdfncx2 distfun_pdfnorm
syn keyword sciPrimitives distfun_pdfpoiss distfun_pdft distfun_pdfunif distfun_pdfwbl
syn keyword sciPrimitives distfun_permrnd distfun_poissrnd distfun_rndmvn distfun_seedget
syn keyword sciPrimitives distfun_seedset distfun_startup distfun_streamget distfun_streaminit
syn keyword sciPrimitives distfun_streamset distfun_trnd distfun_unidrnd distfun_unifrnd
syn keyword sciPrimitives distfun_verboseset distfun_wblrnd dlgamma dnaupd
syn keyword sciPrimitives dneupd dos double drawaxis
syn keyword sciPrimitives drawlater drawnow driver dsaupd
syn keyword sciPrimitives dsearch dseupd dst duplicate
syn keyword sciPrimitives editvar emptystr end_scicosim ereduc
syn keyword sciPrimitives erf erfc erfcx erfi
syn keyword sciPrimitives errcatch errclear error eval_cshep2d
syn keyword sciPrimitives exec execstr exists exp
syn keyword sciPrimitives expm exportUI export_to_hdf5 eye
syn keyword sciPrimitives fadj2sp fec feval fft
syn keyword sciPrimitives fftw fftw_flags fftw_forget_wisdom fftwlibraryisloaded
syn keyword sciPrimitives figure file filebrowser fileext
syn keyword sciPrimitives fileinfo fileparts filesep filter2
syn keyword sciPrimitives find findBD findfileassociation findfiles
syn keyword sciPrimitives fire_closing_finished floor format fort
syn keyword sciPrimitives fprintfMat freq frexp fromc
syn keyword sciPrimitives fromjava fscanfMat fsolve fstair
syn keyword sciPrimitives full fullpath funcprot funptr
syn keyword sciPrimitives gamma gammaln geom3d get
syn keyword sciPrimitives getURL get_absolute_file_path get_fftw_wisdom getblocklabel
syn keyword sciPrimitives getcallbackobject getdate getdebuginfo getdefaultlanguage
syn keyword sciPrimitives getdrives getdynlibext getenv getfield
syn keyword sciPrimitives gethistory gethistoryfile getinstalledlookandfeels getio
syn keyword sciPrimitives getlanguage getlongpathname getlookandfeel getmd5
syn keyword sciPrimitives getmemory getmodules getos getpid
syn keyword sciPrimitives getrelativefilename getscicosvars getscilabmode getshortpathname
syn keyword sciPrimitives getsystemmetrics gettext getvariablesonstack getversion
syn keyword sciPrimitives glist global glue grand
syn keyword sciPrimitives grayplot grep gsort gstacksize
syn keyword sciPrimitives h5attr h5close h5cp h5dataset
syn keyword sciPrimitives h5dump h5exists h5flush h5get
syn keyword sciPrimitives h5group h5isArray h5isAttr h5isCompound
syn keyword sciPrimitives h5isFile h5isGroup h5isList h5isRef
syn keyword sciPrimitives h5isSet h5isSpace h5isType h5isVlen
syn keyword sciPrimitives h5label h5ln h5ls h5mount
syn keyword sciPrimitives h5mv h5open h5read h5readattr
syn keyword sciPrimitives h5rm h5umount h5write h5writeattr
syn keyword sciPrimitives havewindow helpbrowser hess hinf
syn keyword sciPrimitives histo_mex historymanager historysize host
syn keyword sciPrimitives htmlDump htmlRead htmlReadStr htmlWrite
syn keyword sciPrimitives iconvert iconvert ieee ilib_verbose
syn keyword sciPrimitives imag imfilter imfinfo impl
syn keyword sciPrimitives import_from_hdf5 impyramid imread imult
syn keyword sciPrimitives ind2rgb inpnvi int int16
syn keyword sciPrimitives int2d int32 int3d int8
syn keyword sciPrimitives int_canny int_cvtcolor int_imabsdiff int_imadd
syn keyword sciPrimitives int_imdivide int_immultiply int_imresize int_imsubtract
syn keyword sciPrimitives int_imwrite int_sobel interp interp2d
syn keyword sciPrimitives interp3d intg intppty inttype
syn keyword sciPrimitives inv invoke_lu is_handle_valid is_hdf5_file
syn keyword sciPrimitives isalphanum isascii isdef isdigit
syn keyword sciPrimitives isdir isequal isequalbitwise iserror
syn keyword sciPrimitives isfile isglobal isletter isnum
syn keyword sciPrimitives isreal istssession iswaitingforinput jallowClassReloading
syn keyword sciPrimitives jarray jautoTranspose jautoUnwrap javaclasspath
syn keyword sciPrimitives javalibrarypath jcast jcompile jconvMatrixMethod
syn keyword sciPrimitives jcreatejar jdeff jdisableTrace jenableTrace
syn keyword sciPrimitives jexists jgetclassname jgetfield jgetfields
syn keyword sciPrimitives jgetinfo jgetmethods jimport jinvoke
syn keyword sciPrimitives jinvoke_db jnewInstance jremove jsetfield
syn keyword sciPrimitives junwrap junwraprem jwrap jwrapinfloat
syn keyword sciPrimitives knnclass_mex kron kth_element lasterror
syn keyword sciPrimitives ldiv ldivf legendre length
syn keyword sciPrimitives lib librarieslist libraryinfo light
syn keyword sciPrimitives linear_interpn lines link linmeq
syn keyword sciPrimitives list listvar_in_hdf5 load loadGui
syn keyword sciPrimitives loadScicos loadXcos loadfftwlibrary loadhistory
syn keyword sciPrimitives log log1p lsq lsq_splin
syn keyword sciPrimitives lsqrsolve lsslist lstcat lstsize
syn keyword sciPrimitives ltitr lu ludel lufact
syn keyword sciPrimitives luget lusolve macr2lst macr2tree
syn keyword sciPrimitives mat2utfimg matfile_close matfile_listvar matfile_open
syn keyword sciPrimitives matfile_varreadnext matfile_varwrite matrix max
syn keyword sciPrimitives maxfiles mcisendstring mclearerr mclose
syn keyword sciPrimitives meanshift meof merror messagebox
syn keyword sciPrimitives mfprintf mfscanf mget mgeti
syn keyword sciPrimitives mgetl mgetstr min mlist
syn keyword sciPrimitives mode model2blk mopen move
syn keyword sciPrimitives movefile mprintf mput mputl
syn keyword sciPrimitives mputstr mscanf mseek msprintf
syn keyword sciPrimitives msscanf mtell mtlb_mode mtlb_sparse
syn keyword sciPrimitives mucomp mulf name2rgb nearfloat
syn keyword sciPrimitives newaxes newest newfun nnz
syn keyword sciPrimitives norm notify number_properties ode
syn keyword sciPrimitives odedc ones openged opentk
syn keyword sciPrimitives optim or ordmmd parallel_concurrency
syn keyword sciPrimitives parallel_run param3d param3d1 part
syn keyword sciPrimitives pathconvert pathsep phase_simulation plot2d
syn keyword sciPrimitives plot2d1 plot2d2 plot2d3 plot2d4
syn keyword sciPrimitives plot3d plot3d1 plotbrowser pointer_xproperty
syn keyword sciPrimitives poly ppol pppdiv predef
syn keyword sciPrimitives preferences print printf printfigure
syn keyword sciPrimitives printsetupbox prod progressionbar prompt
syn keyword sciPrimitives qld qp_solve qpqpqp qr
syn keyword sciPrimitives raise_window rand rankqr rat
syn keyword sciPrimitives rcond rdivf read read4b
syn keyword sciPrimitives read_csv readb readgateway readmps
syn keyword sciPrimitives real realtime realtimeinit regexp
syn keyword sciPrimitives relocate_handle remez removeModulePreferences removedir
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
syn keyword sciPrimitives simp simp_mode sin sivp_init
syn keyword sciPrimitives sivptest size slash sleep
syn keyword sciPrimitives sorder sparse spchol spcompack
syn keyword sciPrimitives spec spget splin splin2d
syn keyword sciPrimitives splin3d splitURL spones sprintf
syn keyword sciPrimitives sqrt stacksize str2array str2code
syn keyword sciPrimitives strcat strchr strcmp strcspn
syn keyword sciPrimitives strindex string stringbox stripblanks
syn keyword sciPrimitives strncpy strrchr strrev strsplit
syn keyword sciPrimitives strspn strstr strsubst strtod
syn keyword sciPrimitives strtok subf sum sumskipnan_mex
syn keyword sciPrimitives svd swap_handles symfcti syredi
syn keyword sciPrimitives system_getproperty system_setproperty ta2lpd tan
syn keyword sciPrimitives taucs_chdel taucs_chfact taucs_chget taucs_chinfo
syn keyword sciPrimitives taucs_chsolve tempname testmatrix timer
syn keyword sciPrimitives tlist tohome tokens toolbar
syn keyword sciPrimitives toprint tr_zer tril triu
syn keyword sciPrimitives type typename uiDisplayTree uicontextmenu
syn keyword sciPrimitives uicontrol uigetcolor uigetdir uigetfile
syn keyword sciPrimitives uigetfont uimenu uint16 uint32
syn keyword sciPrimitives uint8 uipopup uiputfile uiwait
syn keyword sciPrimitives ulink umf_ludel umf_lufact umf_luget
syn keyword sciPrimitives umf_luinfo umf_lusolve umfpack unglue
syn keyword sciPrimitives unix unsetmenu unzoom updatebrowsevar
syn keyword sciPrimitives usecanvas useeditor user var2vec
syn keyword sciPrimitives varn vec2var waitbar warnBlockByUID
syn keyword sciPrimitives warning where whereis win64
syn keyword sciPrimitives winopen winqueryreg winsid with_module
syn keyword sciPrimitives writb write write4b write_csv
syn keyword sciPrimitives x_choose x_choose_modeless x_dialog x_mdialog
syn keyword sciPrimitives xarc xarcs xarrows xchange
syn keyword sciPrimitives xchoicesi xclick xcos xcosAddToolsMenu
syn keyword sciPrimitives xcosConfigureXmlFile xcosDiagramToScilab xcosPalCategoryAdd xcosPalDelete
syn keyword sciPrimitives xcosPalDisable xcosPalEnable xcosPalGenerateIcon xcosPalGet
syn keyword sciPrimitives xcosPalLoad xcosPalMove xcosSimulationStarted xcosUpdateBlock
syn keyword sciPrimitives xdel xend xfarc xfarcs
syn keyword sciPrimitives xfpoly xfpolys xfrect xget
syn keyword sciPrimitives xgetmouse xgraduate xgrid xinit
syn keyword sciPrimitives xlfont xls_open xls_read xmlAddNs
syn keyword sciPrimitives xmlAppend xmlAsNumber xmlAsText xmlDTD
syn keyword sciPrimitives xmlDelete xmlDocument xmlDump xmlElement
syn keyword sciPrimitives xmlFormat xmlGetNsByHref xmlGetNsByPrefix xmlGetOpenDocs
syn keyword sciPrimitives xmlIsValidObject xmlName xmlNs xmlRead
syn keyword sciPrimitives xmlReadStr xmlRelaxNG xmlRemove xmlSchema
syn keyword sciPrimitives xmlSetAttributes xmlValidate xmlWrite xmlXPath
syn keyword sciPrimitives xname xpause xpoly xpolys
syn keyword sciPrimitives xrect xrects xs2bmp xs2emf
syn keyword sciPrimitives xs2eps xs2gif xs2jpg xs2pdf
syn keyword sciPrimitives xs2png xs2ppm xs2ps xs2svg
syn keyword sciPrimitives xsegs xset xstring xstringb
syn keyword sciPrimitives xtitle zeros znaupd zneupd
syn keyword sciPrimitives zoom_rect
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
syn keyword sciVariables SCIHOME TMPDIR WSCI apifunlib
syn keyword sciVariables arnoldilib assertlib atomsguilib atomslib
syn keyword sciVariables cacsdlib compatibility_functilib corelib data_structureslib
syn keyword sciVariables datatipslib demo_toolslib development_toolslib differential_equationlib
syn keyword sciVariables distfunlib dynamic_linklib elementary_functionslib enull
syn keyword sciVariables evoid external_objectslib fileiolib functionslib
syn keyword sciVariables genetic_algorithmslib graphicslib guibuilderlib guilib
syn keyword sciVariables helptoolslib home integerlib interpolationlib
syn keyword sciVariables iolib jnull jvmlib jvoid
syn keyword sciVariables libhelptbx linear_algebralib m2scilib magicSqlib
syn keyword sciVariables matiolib moclib modules_managerlib nanlib
syn keyword sciVariables neldermeadlib optimbaselib optimizationlib optimsimplexlib
syn keyword sciVariables output_streamlib overloadinglib parameterslib polynomialslib
syn keyword sciVariables preferenceslib quaprolib randliblib scicos_autolib
syn keyword sciVariables scicos_utilslib scinoteslib signal_processinglib simulated_annealinglib
syn keyword sciVariables sivplib soundlib sparselib specfunlib
syn keyword sciVariables special_functionslib spreadsheetlib statisticslib stringlib
syn keyword sciVariables tclscilib timelib uitreelib umfpacklib
syn keyword sciVariables windows_toolslib xcoslib
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
syn keyword sciFunctions %_xstringb %_xtitle %ar_p %asn
syn keyword sciFunctions %b_a_b %b_a_s %b_c_s %b_c_spb
syn keyword sciFunctions %b_cumprod %b_cumsum %b_d_s %b_diag
syn keyword sciFunctions %b_e %b_f_s %b_f_spb %b_g_s
syn keyword sciFunctions %b_g_spb %b_grand %b_h_s %b_h_spb
syn keyword sciFunctions %b_i_b %b_i_ce %b_i_h %b_i_hm
syn keyword sciFunctions %b_i_s %b_i_sp %b_i_spb %b_i_st
syn keyword sciFunctions %b_iconvert %b_l_b %b_l_s %b_m_b
syn keyword sciFunctions %b_m_s %b_matrix %b_n_hm %b_o_hm
syn keyword sciFunctions %b_p_s %b_prod %b_r_b %b_r_s
syn keyword sciFunctions %b_s_b %b_s_s %b_string %b_sum
syn keyword sciFunctions %b_tril %b_triu %b_x_b %b_x_s
syn keyword sciFunctions %bicg %bicgstab %c_a_c %c_b_c
syn keyword sciFunctions %c_b_s %c_diag %c_dsearch %c_e
syn keyword sciFunctions %c_eye %c_f_s %c_grand %c_i_c
syn keyword sciFunctions %c_i_ce %c_i_h %c_i_hm %c_i_lss
syn keyword sciFunctions %c_i_r %c_i_s %c_i_st %c_matrix
syn keyword sciFunctions %c_n_l %c_n_st %c_o_l %c_o_st
syn keyword sciFunctions %c_ones %c_rand %c_tril %c_triu
syn keyword sciFunctions %cblock_c_cblock %cblock_c_s %cblock_e %cblock_f_cblock
syn keyword sciFunctions %cblock_p %cblock_size %ce_6 %ce_c_ce
syn keyword sciFunctions %ce_e %ce_f_ce %ce_i_ce %ce_i_s
syn keyword sciFunctions %ce_i_st %ce_matrix %ce_p %ce_size
syn keyword sciFunctions %ce_string %ce_t %cgs %champdat_i_h
syn keyword sciFunctions %choose %datatips_p %diagram_xcos %dir_p
syn keyword sciFunctions %fptr_i_st %grand_perm %grayplot_i_h %h_copy
syn keyword sciFunctions %h_delete %h_e %h_get %h_i_h
syn keyword sciFunctions %h_i_st %h_load %h_matrix %h_p
syn keyword sciFunctions %h_save %h_set %hmS_k_hmS_generic %hm_1_hm
syn keyword sciFunctions %hm_1_s %hm_2_hm %hm_2_s %hm_3_hm
syn keyword sciFunctions %hm_3_s %hm_4_hm %hm_4_s %hm_5
syn keyword sciFunctions %hm_a_hm %hm_a_r %hm_a_s %hm_abs
syn keyword sciFunctions %hm_and %hm_bool2s %hm_c_hm %hm_ceil
syn keyword sciFunctions %hm_conj %hm_cos %hm_cumprod %hm_cumsum
syn keyword sciFunctions %hm_d_hm %hm_d_s %hm_degree %hm_dsearch
syn keyword sciFunctions %hm_e %hm_exp %hm_eye %hm_f_hm
syn keyword sciFunctions %hm_find %hm_floor %hm_g_hm %hm_grand
syn keyword sciFunctions %hm_gsort %hm_h_hm %hm_i_b %hm_i_ce
syn keyword sciFunctions %hm_i_h %hm_i_hm %hm_i_i %hm_i_p
syn keyword sciFunctions %hm_i_r %hm_i_s %hm_i_st %hm_iconvert
syn keyword sciFunctions %hm_imag %hm_int %hm_isnan %hm_isreal
syn keyword sciFunctions %hm_j_hm %hm_j_s %hm_k_hm %hm_k_s
syn keyword sciFunctions %hm_log %hm_m_p %hm_m_r %hm_m_s
syn keyword sciFunctions %hm_matrix %hm_max %hm_mean %hm_median
syn keyword sciFunctions %hm_min %hm_n_b %hm_n_c %hm_n_hm
syn keyword sciFunctions %hm_n_i %hm_n_p %hm_n_s %hm_o_b
syn keyword sciFunctions %hm_o_c %hm_o_hm %hm_o_i %hm_o_p
syn keyword sciFunctions %hm_o_s %hm_ones %hm_or %hm_p
syn keyword sciFunctions %hm_prod %hm_q_hm %hm_r_s %hm_rand
syn keyword sciFunctions %hm_real %hm_round %hm_s %hm_s_hm
syn keyword sciFunctions %hm_s_r %hm_s_s %hm_sign %hm_sin
syn keyword sciFunctions %hm_size %hm_sqrt %hm_stdev %hm_string
syn keyword sciFunctions %hm_sum %hm_x_hm %hm_x_p %hm_x_s
syn keyword sciFunctions %hm_zeros %i_1_s %i_2_s %i_3_s
syn keyword sciFunctions %i_4_s %i_Matplot %i_a_i %i_a_s
syn keyword sciFunctions %i_and %i_ascii %i_b_s %i_bezout
syn keyword sciFunctions %i_champ %i_champ1 %i_contour %i_contour2d
syn keyword sciFunctions %i_d_i %i_d_s %i_dsearch %i_e
syn keyword sciFunctions %i_fft %i_g_i %i_gcd %i_grand
syn keyword sciFunctions %i_h_i %i_i_ce %i_i_h %i_i_hm
syn keyword sciFunctions %i_i_i %i_i_s %i_i_st %i_j_i
syn keyword sciFunctions %i_j_s %i_l_s %i_lcm %i_length
syn keyword sciFunctions %i_m_i %i_m_s %i_mfprintf %i_mprintf
syn keyword sciFunctions %i_msprintf %i_n_s %i_o_s %i_or
syn keyword sciFunctions %i_p_i %i_p_s %i_plot2d %i_plot2d1
syn keyword sciFunctions %i_plot2d2 %i_q_s %i_r_i %i_r_s
syn keyword sciFunctions %i_round %i_s_i %i_s_s %i_sign
syn keyword sciFunctions %i_string %i_x_i %i_x_s %ip_a_s
syn keyword sciFunctions %ip_i_st %ip_m_s %ip_n_ip %ip_o_ip
syn keyword sciFunctions %ip_p %ip_part %ip_s_s %ip_string
syn keyword sciFunctions %k %l_i_h %l_i_s %l_i_st
syn keyword sciFunctions %l_isequal %l_n_c %l_n_l %l_n_m
syn keyword sciFunctions %l_n_p %l_n_s %l_n_st %l_o_c
syn keyword sciFunctions %l_o_l %l_o_m %l_o_p %l_o_s
syn keyword sciFunctions %l_o_st %lss_a_lss %lss_a_p %lss_a_r
syn keyword sciFunctions %lss_a_s %lss_c_lss %lss_c_p %lss_c_r
syn keyword sciFunctions %lss_c_s %lss_e %lss_eye %lss_f_lss
syn keyword sciFunctions %lss_f_p %lss_f_r %lss_f_s %lss_i_ce
syn keyword sciFunctions %lss_i_lss %lss_i_p %lss_i_r %lss_i_s
syn keyword sciFunctions %lss_i_st %lss_inv %lss_l_lss %lss_l_p
syn keyword sciFunctions %lss_l_r %lss_l_s %lss_m_lss %lss_m_p
syn keyword sciFunctions %lss_m_r %lss_m_s %lss_n_lss %lss_n_p
syn keyword sciFunctions %lss_n_r %lss_n_s %lss_norm %lss_o_lss
syn keyword sciFunctions %lss_o_p %lss_o_r %lss_o_s %lss_ones
syn keyword sciFunctions %lss_r_lss %lss_r_p %lss_r_r %lss_r_s
syn keyword sciFunctions %lss_rand %lss_s %lss_s_lss %lss_s_p
syn keyword sciFunctions %lss_s_r %lss_s_s %lss_size %lss_t
syn keyword sciFunctions %lss_v_lss %lss_v_p %lss_v_r %lss_v_s
syn keyword sciFunctions %lt_i_s %m_n_l %m_o_l %mc_i_h
syn keyword sciFunctions %mc_i_s %mc_i_st %mc_n_st %mc_o_st
syn keyword sciFunctions %mc_string %mps_p %mps_string %msp_a_s
syn keyword sciFunctions %msp_abs %msp_e %msp_find %msp_i_s
syn keyword sciFunctions %msp_i_st %msp_length %msp_m_s %msp_maxi
syn keyword sciFunctions %msp_n_msp %msp_nnz %msp_o_msp %msp_p
syn keyword sciFunctions %msp_sparse %msp_spones %msp_t %p_a_lss
syn keyword sciFunctions %p_a_r %p_c_lss %p_c_r %p_cumprod
syn keyword sciFunctions %p_cumsum %p_d_p %p_d_r %p_d_s
syn keyword sciFunctions %p_det %p_e %p_f_lss %p_f_r
syn keyword sciFunctions %p_grand %p_i_ce %p_i_h %p_i_hm
syn keyword sciFunctions %p_i_lss %p_i_p %p_i_r %p_i_s
syn keyword sciFunctions %p_i_st %p_inv %p_j_s %p_k_p
syn keyword sciFunctions %p_k_r %p_k_s %p_l_lss %p_l_p
syn keyword sciFunctions %p_l_r %p_l_s %p_m_hm %p_m_lss
syn keyword sciFunctions %p_m_r %p_matrix %p_n_l %p_n_lss
syn keyword sciFunctions %p_n_r %p_o_l %p_o_lss %p_o_r
syn keyword sciFunctions %p_o_sp %p_p_s %p_part %p_prod
syn keyword sciFunctions %p_q_p %p_q_r %p_q_s %p_r_lss
syn keyword sciFunctions %p_r_p %p_r_r %p_r_s %p_s_lss
syn keyword sciFunctions %p_s_r %p_simp %p_string %p_sum
syn keyword sciFunctions %p_v_lss %p_v_p %p_v_r %p_v_s
syn keyword sciFunctions %p_x_hm %p_x_r %p_y_p %p_y_r
syn keyword sciFunctions %p_y_s %p_z_p %p_z_r %p_z_s
syn keyword sciFunctions %pcg %plist_p %plist_string %r_0
syn keyword sciFunctions %r_a_hm %r_a_lss %r_a_p %r_a_r
syn keyword sciFunctions %r_a_s %r_c_lss %r_c_p %r_c_r
syn keyword sciFunctions %r_c_s %r_clean %r_cumprod %r_cumsum
syn keyword sciFunctions %r_d_p %r_d_r %r_d_s %r_det
syn keyword sciFunctions %r_diag %r_e %r_eye %r_f_lss
syn keyword sciFunctions %r_f_p %r_f_r %r_f_s %r_i_ce
syn keyword sciFunctions %r_i_hm %r_i_lss %r_i_p %r_i_r
syn keyword sciFunctions %r_i_s %r_i_st %r_inv %r_j_s
syn keyword sciFunctions %r_k_p %r_k_r %r_k_s %r_l_lss
syn keyword sciFunctions %r_l_p %r_l_r %r_l_s %r_m_hm
syn keyword sciFunctions %r_m_lss %r_m_p %r_m_r %r_m_s
syn keyword sciFunctions %r_matrix %r_n_lss %r_n_p %r_n_r
syn keyword sciFunctions %r_n_s %r_norm %r_o_lss %r_o_p
syn keyword sciFunctions %r_o_r %r_o_s %r_ones %r_p
syn keyword sciFunctions %r_p_s %r_prod %r_q_p %r_q_r
syn keyword sciFunctions %r_q_s %r_r_lss %r_r_p %r_r_r
syn keyword sciFunctions %r_r_s %r_rand %r_s %r_s_hm
syn keyword sciFunctions %r_s_lss %r_s_p %r_s_r %r_s_s
syn keyword sciFunctions %r_simp %r_size %r_string %r_sum
syn keyword sciFunctions %r_t %r_tril %r_triu %r_v_lss
syn keyword sciFunctions %r_v_p %r_v_r %r_v_s %r_varn
syn keyword sciFunctions %r_x_p %r_x_r %r_x_s %r_y_p
syn keyword sciFunctions %r_y_r %r_y_s %r_z_p %r_z_r
syn keyword sciFunctions %r_z_s %s_1_hm %s_1_i %s_2_hm
syn keyword sciFunctions %s_2_i %s_3_hm %s_3_i %s_4_hm
syn keyword sciFunctions %s_4_i %s_5 %s_a_b %s_a_hm
syn keyword sciFunctions %s_a_i %s_a_ip %s_a_lss %s_a_msp
syn keyword sciFunctions %s_a_r %s_a_sp %s_and %s_b_i
syn keyword sciFunctions %s_b_s %s_bezout %s_c_b %s_c_cblock
syn keyword sciFunctions %s_c_lss %s_c_r %s_c_sp %s_d_b
syn keyword sciFunctions %s_d_i %s_d_p %s_d_r %s_d_sp
syn keyword sciFunctions %s_e %s_f_b %s_f_cblock %s_f_lss
syn keyword sciFunctions %s_f_r %s_f_sp %s_g_b %s_g_s
syn keyword sciFunctions %s_gcd %s_grand %s_h_b %s_h_s
syn keyword sciFunctions %s_i_b %s_i_c %s_i_ce %s_i_h
syn keyword sciFunctions %s_i_hm %s_i_i %s_i_lss %s_i_p
syn keyword sciFunctions %s_i_r %s_i_s %s_i_sp %s_i_spb
syn keyword sciFunctions %s_i_st %s_j_i %s_k_hm %s_k_p
syn keyword sciFunctions %s_k_r %s_k_sp %s_l_b %s_l_hm
syn keyword sciFunctions %s_l_i %s_l_lss %s_l_p %s_l_r
syn keyword sciFunctions %s_l_s %s_l_sp %s_lcm %s_m_b
syn keyword sciFunctions %s_m_hm %s_m_i %s_m_ip %s_m_lss
syn keyword sciFunctions %s_m_msp %s_m_r %s_matrix %s_n_hm
syn keyword sciFunctions %s_n_i %s_n_l %s_n_lss %s_n_r
syn keyword sciFunctions %s_n_st %s_o_hm %s_o_i %s_o_l
syn keyword sciFunctions %s_o_lss %s_o_r %s_o_st %s_or
syn keyword sciFunctions %s_p_b %s_p_i %s_pow %s_q_hm
syn keyword sciFunctions %s_q_i %s_q_p %s_q_r %s_q_sp
syn keyword sciFunctions %s_r_b %s_r_i %s_r_lss %s_r_p
syn keyword sciFunctions %s_r_r %s_r_s %s_r_sp %s_s_b
syn keyword sciFunctions %s_s_hm %s_s_i %s_s_ip %s_s_lss
syn keyword sciFunctions %s_s_r %s_s_sp %s_simp %s_v_lss
syn keyword sciFunctions %s_v_p %s_v_r %s_v_s %s_x_b
syn keyword sciFunctions %s_x_hm %s_x_i %s_x_r %s_y_p
syn keyword sciFunctions %s_y_r %s_y_sp %s_z_p %s_z_r
syn keyword sciFunctions %s_z_sp %sn %sp_a_s %sp_a_sp
syn keyword sciFunctions %sp_and %sp_c_s %sp_ceil %sp_conj
syn keyword sciFunctions %sp_cos %sp_cumprod %sp_cumsum %sp_d_s
syn keyword sciFunctions %sp_d_sp %sp_det %sp_diag %sp_e
syn keyword sciFunctions %sp_exp %sp_f_s %sp_floor %sp_grand
syn keyword sciFunctions %sp_gsort %sp_i_ce %sp_i_h %sp_i_s
syn keyword sciFunctions %sp_i_sp %sp_i_st %sp_int %sp_inv
syn keyword sciFunctions %sp_k_s %sp_k_sp %sp_l_s %sp_l_sp
syn keyword sciFunctions %sp_length %sp_max %sp_min %sp_norm
syn keyword sciFunctions %sp_or %sp_p_s %sp_prod %sp_q_s
syn keyword sciFunctions %sp_q_sp %sp_r_s %sp_r_sp %sp_round
syn keyword sciFunctions %sp_s_s %sp_s_sp %sp_sin %sp_sqrt
syn keyword sciFunctions %sp_string %sp_sum %sp_tril %sp_triu
syn keyword sciFunctions %sp_y_s %sp_y_sp %sp_z_s %sp_z_sp
syn keyword sciFunctions %spb_and %spb_c_b %spb_cumprod %spb_cumsum
syn keyword sciFunctions %spb_diag %spb_e %spb_f_b %spb_g_b
syn keyword sciFunctions %spb_g_spb %spb_h_b %spb_h_spb %spb_i_b
syn keyword sciFunctions %spb_i_ce %spb_i_h %spb_i_st %spb_or
syn keyword sciFunctions %spb_prod %spb_sum %spb_tril %spb_triu
syn keyword sciFunctions %st_6 %st_c_st %st_e %st_f_st
syn keyword sciFunctions %st_i_b %st_i_c %st_i_fptr %st_i_h
syn keyword sciFunctions %st_i_i %st_i_ip %st_i_lss %st_i_msp
syn keyword sciFunctions %st_i_p %st_i_r %st_i_s %st_i_sp
syn keyword sciFunctions %st_i_spb %st_i_st %st_matrix %st_n_c
syn keyword sciFunctions %st_n_l %st_n_mc %st_n_p %st_n_s
syn keyword sciFunctions %st_o_c %st_o_l %st_o_mc %st_o_p
syn keyword sciFunctions %st_o_s %st_o_tl %st_p %st_size
syn keyword sciFunctions %st_string %st_t %ticks_i_h %xls_e
syn keyword sciFunctions %xls_p %xlssheet_e %xlssheet_p %xlssheet_size
syn keyword sciFunctions %xlssheet_string DominationRank G_make IsAScalar
syn keyword sciFunctions JSONParse NDcost OS_Version PlotSparse
syn keyword sciFunctions ReadHBSparse ResetFigureDDM Sfgrayplot Sgrayplot
syn keyword sciFunctions TCL_CreateSlave TitleLabel abcd abinv
syn keyword sciFunctions accept_func_default accept_func_vfsa acf acosd
syn keyword sciFunctions acosh acoshm acosm acot
syn keyword sciFunctions acotd acoth acsc acscd
syn keyword sciFunctions acsch adapthresh add_demo add_help_chapter
syn keyword sciFunctions add_module_help_chapter add_param add_profiling addmenu
syn keyword sciFunctions adj2sp aff2ab ana_style analpf
syn keyword sciFunctions analyze apifun_argindefault apifun_checkcallable apifun_checkcomplex
syn keyword sciFunctions apifun_checkdims apifun_checkflint apifun_checkgreq apifun_checklhs
syn keyword sciFunctions apifun_checkloweq apifun_checkoption apifun_checkrange apifun_checkreal
syn keyword sciFunctions apifun_checkrhs apifun_checkscalar apifun_checksquare apifun_checktype
syn keyword sciFunctions apifun_checkveccol apifun_checkvecrow apifun_checkvector apifun_expandfromsize
syn keyword sciFunctions apifun_expandvar apifun_keyvaluepairs aplat arhnk
syn keyword sciFunctions arl2 arma2p arma2ss armac
syn keyword sciFunctions armax armax1 arobasestring2strings arsimul
syn keyword sciFunctions ascii2string asciimat asec asecd
syn keyword sciFunctions asech asind asinh asinhm
syn keyword sciFunctions asinm assert_checkalmostequal assert_checkequal assert_checkerror
syn keyword sciFunctions assert_checkfalse assert_checkfilesequal assert_checktrue assert_comparecomplex
syn keyword sciFunctions assert_computedigits assert_cond2reltol assert_cond2reqdigits assert_generror
syn keyword sciFunctions atand atanh atanhm atanm
syn keyword sciFunctions atomsAutoload atomsAutoloadAdd atomsAutoloadDel atomsAutoloadList
syn keyword sciFunctions atomsCategoryList atomsCheckModule atomsDepTreeShow atomsGetConfig
syn keyword sciFunctions atomsGetInstalled atomsGetInstalledPath atomsGetLoaded atomsGetLoadedPath
syn keyword sciFunctions atomsGui atomsInstall atomsIsInstalled atomsIsLoaded
syn keyword sciFunctions atomsList atomsLoad atomsQuit atomsRemove
syn keyword sciFunctions atomsRepositoryAdd atomsRepositoryDel atomsRepositoryList atomsResize
syn keyword sciFunctions atomsRestoreConfig atomsSaveConfig atomsSearch atomsSetConfig
syn keyword sciFunctions atomsShow atomsSystemInit atomsSystemUpdate atomsTest
syn keyword sciFunctions atomsUpdate atomsVersion augment auread
syn keyword sciFunctions autumncolormap auwrite avgfilt2 balreal
syn keyword sciFunctions bar barh barhomogenize bench_run
syn keyword sciFunctions bilin bilt bin2dec binaryand
syn keyword sciFunctions binaryor binaryxor binomial bitand
syn keyword sciFunctions bitcmp bitget bitor bitset
syn keyword sciFunctions bitxor black blanks bloc2exp
syn keyword sciFunctions bloc2ss bode bode_asymp bonecolormap
syn keyword sciFunctions bricontra bstap buttmag bvodeS
syn keyword sciFunctions bytecode bytecodewalk cainv calendar
syn keyword sciFunctions calerf calfrq canon casc
syn keyword sciFunctions cat cat_code cbAtomsGui cb_m2sci_gui
syn keyword sciFunctions ccontrg cell cell2mat cellstr
syn keyword sciFunctions center cepstrum cfspec char
syn keyword sciFunctions chart cheb1mag cheb2mag check2dFun
syn keyword sciFunctions checkXYPair check_classpath check_gateways check_librarypath
syn keyword sciFunctions check_modules_xml check_versions chepol chfact
syn keyword sciFunctions chsolve classmarkov clean_help clf
syn keyword sciFunctions clipboard clock close cls2dls
syn keyword sciFunctions cmb_lin cmndred cmoment coding_ga_binary
syn keyword sciFunctions coding_ga_identity coff coffg colcomp
syn keyword sciFunctions colcompr colinout colorbar colordef
syn keyword sciFunctions colregul colsierra comet comet3d
syn keyword sciFunctions companion complex compute_initial_temp cond
syn keyword sciFunctions cond2sp condestsp configure_msifort configure_msvc
syn keyword sciFunctions conjgrad cont_frm cont_mat contour
syn keyword sciFunctions contour2d contourf contrss conv
syn keyword sciFunctions convert_to_float convertindex convol convol2d
syn keyword sciFunctions coolcolormap copfac coppercolormap corr2
syn keyword sciFunctions correl cosd cosh coshm
syn keyword sciFunctions cosm cotd cotg coth
syn keyword sciFunctions cothm cov covar createBorder
syn keyword sciFunctions createBorderFont createConstraints createLayoutOptions createWindow
syn keyword sciFunctions createXConfiguration createfun createstruct cross
syn keyword sciFunctions crossover_ga_binary crossover_ga_default csc cscd
syn keyword sciFunctions csch csgn csim cspect
syn keyword sciFunctions ctr_gram czt dae daeoptions
syn keyword sciFunctions damp datafit datatipCreatePopupMenu datatipDefaultDisplay
syn keyword sciFunctions datatipDeleteSelected datatipGUIEventHandler datatipGetEntities datatipGetSelected
syn keyword sciFunctions datatipGetStruct datatipHilite datatipRadioCallback datatipRemoveAll
syn keyword sciFunctions datatipRemoveNearest datatipSetGUI datatipSetSelected datatipSetStruct
syn keyword sciFunctions datatipSetTipPosition datatipSetTipStyle datatipsGUI date
syn keyword sciFunctions datenum datevec dbphi dcf
syn keyword sciFunctions ddp dec2bin dec2hex dec2oct
syn keyword sciFunctions del_help_chapter del_module_help_chapter demo_begin demo_choose
syn keyword sciFunctions demo_compiler demo_end demo_file_choice demo_folder_choice
syn keyword sciFunctions demo_function_choice demo_gui demo_run demo_viewCode
syn keyword sciFunctions dendrogram denom derivat derivative
syn keyword sciFunctions des2ss des2tf detectfaces detectlefteyes
syn keyword sciFunctions detectmsifort64tools detectmsvc64tools detectrighteyes determ
syn keyword sciFunctions detr detrend devtools_run_builder dhnorm
syn keyword sciFunctions diff diophant dir dirname
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
syn keyword sciFunctions distfun_getpath distfun_hygecdf distfun_hygeinv distfun_hygepdf
syn keyword sciFunctions distfun_hygestat distfun_hygetable distfun_inthisto distfun_kscdf
syn keyword sciFunctions distfun_ksinv distfun_kspdf distfun_ksstat distfun_logncdf
syn keyword sciFunctions distfun_logninv distfun_lognpdf distfun_lognstat distfun_logucdf
syn keyword sciFunctions distfun_loguinv distfun_logupdf distfun_logurnd distfun_logustat
syn keyword sciFunctions distfun_mnpdf distfun_mnstat distfun_nbincdf distfun_nbininv
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
syn keyword sciFunctions distfun_unifstat distfun_wblcdf distfun_wblfit distfun_wblfitmm
syn keyword sciFunctions distfun_wblinv distfun_wbllike distfun_wblloglik distfun_wblpdf
syn keyword sciFunctions distfun_wblplot distfun_wblstat dllinfo dragrect
syn keyword sciFunctions dscr dsimul dt_ility dtsi
syn keyword sciFunctions edge edit edit_curv edit_error
syn keyword sciFunctions editor eigenmarkov eigs ell1mag
syn keyword sciFunctions emaxseg enlarge_shape entropy eomday
syn keyword sciFunctions epred eqfir eqiir equil
syn keyword sciFunctions equil1 erfinv errbar etime
syn keyword sciFunctions eval eval3d eval3dp evans
syn keyword sciFunctions evstr example_run expression2code extract_help_examples
syn keyword sciFunctions fac3d fac3d1 factor factorial
syn keyword sciFunctions factors faurre fchamp fcontour
syn keyword sciFunctions fcontour2d ffilt fft2 fftshift
syn keyword sciFunctions fgrayplot fieldnames filt_sinc filter
syn keyword sciFunctions findABCD findAC findBDK findContour
syn keyword sciFunctions findR find_freq find_links findm
syn keyword sciFunctions findmsifortcompiler findmsvccompiler findobj findx0BD
syn keyword sciFunctions firstnonsingleton fix flag_accuracy_level flag_impl_significance
syn keyword sciFunctions flag_impl_skip_nan flag_nans_occured flipdim flts
syn keyword sciFunctions fminsearch formatBlackTip formatBodeMagTip formatBodePhaseTip
syn keyword sciFunctions formatGainplotTip formatHallModuleTip formatHallPhaseTip formatNicholsGainTip
syn keyword sciFunctions formatNicholsPhaseTip formatNyquistTip formatPhaseplotTip formatSgridDampingTip
syn keyword sciFunctions formatSgridFreqTip formatZgridDampingTip formatZgridFreqTip format_txt
syn keyword sciFunctions fourplan fplot2d fplot3d fplot3d1
syn keyword sciFunctions frep2tf freson frfit frmag
syn keyword sciFunctions fseek_origin fsfirlin fspec fspecg
syn keyword sciFunctions fspecial fstabst ftest ftuneq
syn keyword sciFunctions fullfile fullrf fullrfk fun2string
syn keyword sciFunctions g_margin gainplot gamitg gca
syn keyword sciFunctions gcare gcd gce gcf
syn keyword sciFunctions gda gdf ged ged_insert
syn keyword sciFunctions gencompilationflags_unix generateBlockImage generateBlockImages generic_i_ce
syn keyword sciFunctions generic_i_h generic_i_hm generic_i_s generic_i_st
syn keyword sciFunctions genfac3d genlib genmarkov geomean
syn keyword sciFunctions getColorIndex getDiagramVersion getLineSpec getModelicaPath
syn keyword sciFunctions getPlotPropertyName getPreferencesValue getSIVPpath getSurfPropertyName
syn keyword sciFunctions getTitleLabelPropertyNam get_figure_handle get_file_path get_function_path
syn keyword sciFunctions get_param get_profile getcolor getd
syn keyword sciFunctions getscilabkeywords getshell gettklib getvalue
syn keyword sciFunctions gfare gfrancis ghdl2tree ghdl_fields
syn keyword sciFunctions givens glever gmres graduate
syn keyword sciFunctions graycolormap graypolarplot group gschur
syn keyword sciFunctions gspec gtild guialignements guiaxistight
syn keyword sciFunctions guibuilder guicheckprops guicontrolcreate guigencode
syn keyword sciFunctions guigetfile guimenueditor guipropsedit h2norm
syn keyword sciFunctions h_cl h_inf h_inf_st h_norm
syn keyword sciFunctions hallchart halt hank hankelsv
syn keyword sciFunctions harmean haveacompiler head_comments help_from_sci
syn keyword sciFunctions help_skeleton helptbx_getpath helptbx_helpupdate helptbx_iscontentupdte
syn keyword sciFunctions helptbx_updtifneeded hermit hex2dec hilb
syn keyword sciFunctions hilbert hiseq hist3d histc
syn keyword sciFunctions histplot horner hotcolormap householder
syn keyword sciFunctions hrmt hsv2rgb hsv2rgb hsvcolormap
syn keyword sciFunctions htrianr hypermat idct idst
syn keyword sciFunctions ifft ifftshift iir iirgroup
syn keyword sciFunctions iirlp iirmod ilib_build ilib_build_jar
syn keyword sciFunctions ilib_compile ilib_for_link ilib_gen_Make ilib_gen_Make_unix
syn keyword sciFunctions ilib_gen_cleaner ilib_gen_gateway ilib_gen_loader ilib_include_flag
syn keyword sciFunctions ilib_mex_build im2bw im2double im2int16
syn keyword sciFunctions im2int32 im2int8 im2uint16 im2uint8
syn keyword sciFunctions im_inv imabsdiff imadd imcomplement
syn keyword sciFunctions imcrop imdivide imhist imlincomb
syn keyword sciFunctions immultiply imnoise importScicosDiagram importScicosPal
syn keyword sciFunctions importXcosDiagram imrep2ss imresize imshow
syn keyword sciFunctions imsubtract imwrite ind2sub inistate
syn keyword sciFunctions init_ga_default init_param input instruction2code
syn keyword sciFunctions intc intdec integrate interp1
syn keyword sciFunctions interpln intersect intl intsplin
syn keyword sciFunctions inttrap inv_coeff invr invrs
syn keyword sciFunctions invsyslin iqr isLeapYear is_absolute_path
syn keyword sciFunctions is_param isbw iscell iscellstr
syn keyword sciFunctions iscolumn isempty isfield isinf
syn keyword sciFunctions ismatrix isnan isoview isrow
syn keyword sciFunctions isscalar issparse issquare isstruct
syn keyword sciFunctions isvector iterthresh jetcolormap jmat
syn keyword sciFunctions jre_path justify kalm karmarkar
syn keyword sciFunctions kernel kpure krac2 kroneck
syn keyword sciFunctions lattn lattp launchtest lcf
syn keyword sciFunctions lcm lcmdiag leastsq legend
syn keyword sciFunctions legends leqe leqr lev
syn keyword sciFunctions levin lex_sort lft lin
syn keyword sciFunctions lin2mu lindquist linf linfn
syn keyword sciFunctions linkage linpro linsolve linspace
syn keyword sciFunctions list2vec list_param listfiles listfunctions
syn keyword sciFunctions listvarinfile lmisolver lmitool loadXcosLibs
syn keyword sciFunctions loadmatfile loadwave locate log10
syn keyword sciFunctions log2 logm logspace lqe
syn keyword sciFunctions lqg lqg2stan lqg_ltr lqr
syn keyword sciFunctions ls lyap m2sci_gui m_circle
syn keyword sciFunctions macglov macrovar mad makecell
syn keyword sciFunctions manedit mapsound markp2ss maskthresh
syn keyword sciFunctions mat2gray matfile2sci mdelete mean
syn keyword sciFunctions mean2 meanf medfilt2 median
syn keyword sciFunctions members menubar mese mesh
syn keyword sciFunctions meshgrid mfft mfile2sci milk_drop
syn keyword sciFunctions minreal minss mkdir moc_accumarray
syn keyword sciFunctions moc_angle moc_cholinv moc_circshift moc_columns
syn keyword sciFunctions moc_conv moc_conv2 moc_corr moc_corrcov
syn keyword sciFunctions moc_cov moc_deal moc_fft moc_filtfilt
syn keyword sciFunctions moc_fliplr moc_flipud moc_fzero moc_gaussian
syn keyword sciFunctions moc_ifft moc_inpolygon moc_islogical moc_ismember
syn keyword sciFunctions moc_isnumeric moc_isvector moc_logical moc_null
syn keyword sciFunctions moc_poly moc_polyfit moc_polyval moc_postpad
syn keyword sciFunctions moc_prepad moc_randi moc_range moc_rot90
syn keyword sciFunctions moc_rows moc_size_equal moc_spdiags moc_squeeze
syn keyword sciFunctions moc_sumsq moc_unique moc_unwrap moc_xcorr
syn keyword sciFunctions moc_xcorr2 moc_xcov modulo moment
syn keyword sciFunctions mps2linpro mrfit msd mstr2sci
syn keyword sciFunctions mtlb mtlb_0 mtlb_a mtlb_all
syn keyword sciFunctions mtlb_any mtlb_axes mtlb_axis mtlb_beta
syn keyword sciFunctions mtlb_box mtlb_choices mtlb_close mtlb_colordef
syn keyword sciFunctions mtlb_cond mtlb_cov mtlb_cumprod mtlb_cumsum
syn keyword sciFunctions mtlb_dec2hex mtlb_delete mtlb_diag mtlb_diff
syn keyword sciFunctions mtlb_dir mtlb_double mtlb_e mtlb_echo
syn keyword sciFunctions mtlb_error mtlb_eval mtlb_exist mtlb_eye
syn keyword sciFunctions mtlb_false mtlb_fft mtlb_fftshift mtlb_filter
syn keyword sciFunctions mtlb_find mtlb_findstr mtlb_fliplr mtlb_fopen
syn keyword sciFunctions mtlb_format mtlb_fprintf mtlb_fread mtlb_fscanf
syn keyword sciFunctions mtlb_full mtlb_fwrite mtlb_get mtlb_grid
syn keyword sciFunctions mtlb_hold mtlb_i mtlb_ifft mtlb_image
syn keyword sciFunctions mtlb_imp mtlb_int16 mtlb_int32 mtlb_int8
syn keyword sciFunctions mtlb_is mtlb_isa mtlb_isfield mtlb_isletter
syn keyword sciFunctions mtlb_isspace mtlb_l mtlb_legendre mtlb_linspace
syn keyword sciFunctions mtlb_logic mtlb_logical mtlb_loglog mtlb_lower
syn keyword sciFunctions mtlb_max mtlb_mean mtlb_median mtlb_mesh
syn keyword sciFunctions mtlb_meshdom mtlb_min mtlb_more mtlb_num2str
syn keyword sciFunctions mtlb_ones mtlb_pcolor mtlb_plot mtlb_prod
syn keyword sciFunctions mtlb_qr mtlb_qz mtlb_rand mtlb_randn
syn keyword sciFunctions mtlb_rcond mtlb_realmax mtlb_realmin mtlb_s
syn keyword sciFunctions mtlb_semilogx mtlb_semilogy mtlb_setstr mtlb_size
syn keyword sciFunctions mtlb_sort mtlb_sortrows mtlb_sprintf mtlb_sscanf
syn keyword sciFunctions mtlb_std mtlb_strcmp mtlb_strcmpi mtlb_strfind
syn keyword sciFunctions mtlb_strrep mtlb_subplot mtlb_sum mtlb_t
syn keyword sciFunctions mtlb_toeplitz mtlb_tril mtlb_triu mtlb_true
syn keyword sciFunctions mtlb_type mtlb_uint16 mtlb_uint32 mtlb_uint8
syn keyword sciFunctions mtlb_upper mtlb_var mtlb_zeros mu2lin
syn keyword sciFunctions mutation_ga_binary mutation_ga_default mvcorrel mvvacov
syn keyword sciFunctions nan_andrewsplot nan_anova nan_betainc nan_bland_altman
syn keyword sciFunctions nan_boxplot nan_cat2bin nan_cdfplot nan_center
syn keyword sciFunctions nan_classify nan_cluster nan_coef_of_variation nan_confusionmat
syn keyword sciFunctions nan_conv2nan nan_cor nan_corrcoef nan_cov
syn keyword sciFunctions nan_covm nan_crosstab nan_cumsum nan_decovm
syn keyword sciFunctions nan_detrend nan_ecdf nan_ecdfhist nan_ecovm
syn keyword sciFunctions nan_errorb nan_errorbar nan_filter nan_fscatter3
syn keyword sciFunctions nan_fss nan_geomean nan_getpath nan_gplotmatrix
syn keyword sciFunctions nan_grp2idx nan_grpstats nan_gscatter nan_harmmean
syn keyword sciFunctions nan_hist nan_hist2res nan_histc nan_histo
syn keyword sciFunctions nan_histo2 nan_histo3 nan_histo4 nan_iqr
syn keyword sciFunctions nan_kappa nan_kmeans nan_kurtosis nan_linkage
syn keyword sciFunctions nan_mad nan_mahal nan_mean nan_meanAbsDev
syn keyword sciFunctions nan_meandev nan_meansq nan_medAbsDev nan_median
syn keyword sciFunctions nan_mgrp2idx nan_moment nan_nhist nan_normplot
syn keyword sciFunctions nan_parallelcoords nan_partcorrcoef nan_partest nan_pdist
syn keyword sciFunctions nan_percentile nan_plotmatrix nan_prctile nan_probplot
syn keyword sciFunctions nan_qqplot nan_quantile nan_rankcorr nan_ranks
syn keyword sciFunctions nan_regress nan_rms nan_rocplot nan_row_col_deletion
syn keyword sciFunctions nan_sem nan_skewness nan_spearman nan_squareform
syn keyword sciFunctions nan_statistic nan_std nan_sumsq nan_test_sc
syn keyword sciFunctions nan_tiedrank nan_train_lda_sparse nan_train_sc nan_trimean
syn keyword sciFunctions nan_trimmean nan_var nan_xcovf nan_xval
syn keyword sciFunctions nan_y2res nan_zScoreMedian nan_zscore nancumsum
syn keyword sciFunctions nand2mean nanmax nanmean nanmeanf
syn keyword sciFunctions nanmedian nanmin nanreglin nanstdev
syn keyword sciFunctions nansum narsimul ndgrid ndims
syn keyword sciFunctions nehari neigh_func_csa neigh_func_default neigh_func_fsa
syn keyword sciFunctions neigh_func_vfsa neldermead_cget neldermead_configure neldermead_costf
syn keyword sciFunctions neldermead_defaultoutput neldermead_destroy neldermead_function neldermead_get
syn keyword sciFunctions neldermead_log neldermead_new neldermead_restart neldermead_search
syn keyword sciFunctions neldermead_updatesimp nextpow2 nf3d nfreq
syn keyword sciFunctions nicholschart nlev nmplot_cget nmplot_configure
syn keyword sciFunctions nmplot_contour nmplot_destroy nmplot_function nmplot_get
syn keyword sciFunctions nmplot_historyplot nmplot_log nmplot_new nmplot_outputcmd
syn keyword sciFunctions nmplot_restart nmplot_search nmplot_simplexhistory noisegen
syn keyword sciFunctions nonreg_test_run now nthroot ntsc2rgb
syn keyword sciFunctions null num2cell numderivative numdiff
syn keyword sciFunctions numer nyquist nyquistfrequencybounds obs_gram
syn keyword sciFunctions obscont observer obsv_mat obsvss
syn keyword sciFunctions oceancolormap oct2dec odeoptions optim_ga
syn keyword sciFunctions optim_moga optim_nsga optim_nsga2 optim_sa
syn keyword sciFunctions optimbase_cget optimbase_checkbounds optimbase_checkcostfun optimbase_checkx0
syn keyword sciFunctions optimbase_configure optimbase_destroy optimbase_function optimbase_get
syn keyword sciFunctions optimbase_hasbounds optimbase_hasconstraints optimbase_hasnlcons optimbase_histget
syn keyword sciFunctions optimbase_histset optimbase_incriter optimbase_isfeasible optimbase_isinbounds
syn keyword sciFunctions optimbase_isinnonlincons optimbase_log optimbase_logshutdown optimbase_logstartup
syn keyword sciFunctions optimbase_new optimbase_outputcmd optimbase_outstruct optimbase_proj2bnds
syn keyword sciFunctions optimbase_set optimbase_stoplog optimbase_terminate optimget
syn keyword sciFunctions optimplotfunccount optimplotfval optimplotx optimset
syn keyword sciFunctions optimsimplex_center optimsimplex_check optimsimplex_compsomefv optimsimplex_computefv
syn keyword sciFunctions optimsimplex_deltafv optimsimplex_deltafvmax optimsimplex_destroy optimsimplex_dirmat
syn keyword sciFunctions optimsimplex_fvmean optimsimplex_fvstdev optimsimplex_fvvariance optimsimplex_getall
syn keyword sciFunctions optimsimplex_getallfv optimsimplex_getallx optimsimplex_getfv optimsimplex_getn
syn keyword sciFunctions optimsimplex_getnbve optimsimplex_getve optimsimplex_getx optimsimplex_gradientfv
syn keyword sciFunctions optimsimplex_log optimsimplex_new optimsimplex_reflect optimsimplex_setall
syn keyword sciFunctions optimsimplex_setallfv optimsimplex_setallx optimsimplex_setfv optimsimplex_setn
syn keyword sciFunctions optimsimplex_setnbve optimsimplex_setve optimsimplex_setx optimsimplex_shrink
syn keyword sciFunctions optimsimplex_size optimsimplex_sort optimsimplex_xbar orth
syn keyword sciFunctions orthProj output_ga_default output_moga_default output_nsga2_default
syn keyword sciFunctions output_nsga_default p_margin pack padding
syn keyword sciFunctions paramfplot2d pareto_filter parrot pbig
syn keyword sciFunctions pca pcg pdist pdiv
syn keyword sciFunctions pen2ea pencan pencost penlaur
syn keyword sciFunctions perctl perl perms permute
syn keyword sciFunctions pertrans pfactors pfss phasemag
syn keyword sciFunctions phaseplot phc pie pinkcolormap
syn keyword sciFunctions pinv pixDist playsnd plot
syn keyword sciFunctions plot3d2 plot3d3 plotframe plotprofile
syn keyword sciFunctions plzr pmodulo pol2des pol2str
syn keyword sciFunctions polar polarplot polfact powershell
syn keyword sciFunctions prbs_a prettyprint primes princomp
syn keyword sciFunctions profile proj projaff projsl
syn keyword sciFunctions projspec psmall pspect qmr
syn keyword sciFunctions qpsolve quapro quart quaskro
syn keyword sciFunctions rafiter rainbowcolormap randpencil range
syn keyword sciFunctions rank readxls recompilefunction recons
syn keyword sciFunctions rectangle reglin regress remezb
syn keyword sciFunctions remove_param remove_profiling repfreq replace_Ix_by_Fx
syn keyword sciFunctions replot repmat reset_profiling resize_matrix
syn keyword sciFunctions rgb2gray rgb2hsv rgb2name rgb2ntsc
syn keyword sciFunctions rgb2ycbcr rhs2code ric_desc riccati
syn keyword sciFunctions rmdir rot90 rotate routh_t
syn keyword sciFunctions rowcomp rowcompr rowinout rowregul
syn keyword sciFunctions rowshuff rref sample samplef
syn keyword sciFunctions samwr savematfile savewave sca
syn keyword sciFunctions scaling scanf scf sci2exp
syn keyword sciFunctions sciGUI_init sci_sparse scisptdemo scitest
syn keyword sciFunctions sda sdf sdiff sec
syn keyword sciFunctions secd sech secto3d selection_ga_elitist
syn keyword sciFunctions selection_ga_random sensi setDefaultColor setPlotProperty
syn keyword sciFunctions setPreferencesValue setStringPosition setSurfProperty setTitleLabelProperty
syn keyword sciFunctions set_param setdiff seteventhandler sgrid
syn keyword sciFunctions show_margins show_pca showprofile sierra
syn keyword sciFunctions signm sinc sincd sind
syn keyword sciFunctions sinh sinhm sinm skeleton
syn keyword sciFunctions sm2des sm2ss smga smooth
syn keyword sciFunctions solve sound soundsec sp2adj
syn keyword sciFunctions spaninter spanplus spantwo specfact
syn keyword sciFunctions specfun_combine specfun_combinerepeat specfun_expm1 specfun_factorial
syn keyword sciFunctions specfun_factoriallog specfun_gammainc specfun_getpath specfun_ismember
syn keyword sciFunctions specfun_lambertw specfun_log1p specfun_nchoosek specfun_pascal
syn keyword sciFunctions specfun_subset speye sprand springcolormap
syn keyword sciFunctions spzeros sqrform sqroot sqrtm
syn keyword sciFunctions square squarewave squeeze srfaur
syn keyword sciFunctions srkf ss2des ss2ss ss2tf
syn keyword sciFunctions sskf ssprint ssrand st_deviation
syn keyword sciFunctions st_i_generic st_ility stabil statgain
syn keyword sciFunctions std2 stdev stdev2 stdevf
syn keyword sciFunctions strange strcmpi struct sub2ind
syn keyword sciFunctions subplot summercolormap sumskipnan surf
syn keyword sciFunctions sva svplot sylm sylv
syn keyword sciFunctions sysconv sysdiag sysfact syslin
syn keyword sciFunctions syssize system systmat tabul
syn keyword sciFunctions tand tanh tanhm tanm
syn keyword sciFunctions tbx_build_blocks tbx_build_cleaner tbx_build_gateway tbx_build_gateway_clean
syn keyword sciFunctions tbx_build_gateway_loader tbx_build_help tbx_build_help_loader tbx_build_loader
syn keyword sciFunctions tbx_build_localization tbx_build_macros tbx_build_pal_loader tbx_build_src
syn keyword sciFunctions tbx_builder tbx_builder_gateway tbx_builder_gateway_lang tbx_builder_help
syn keyword sciFunctions tbx_builder_help_lang tbx_builder_macros tbx_builder_src tbx_builder_src_lang
syn keyword sciFunctions tbx_generate_pofile temp_law_csa temp_law_default temp_law_fsa
syn keyword sciFunctions temp_law_huang temp_law_vfsa test_clean test_on_columns
syn keyword sciFunctions test_run test_run_level testexamples tf2des
syn keyword sciFunctions tf2ss thrownan tic time_id
syn keyword sciFunctions title titlepage toc toeplitz
syn keyword sciFunctions tokenpos toolboxes trace trans
syn keyword sciFunctions translatepaths tree2code tree_show trfmod
syn keyword sciFunctions trianfml trimmean trisolve trzeros
syn keyword sciFunctions twinkle typeof uiConcatTree uiCreateNode
syn keyword sciFunctions uiCreateTree uiDeleteNode uiDumpTree uiEqualsTree
syn keyword sciFunctions uiFindNode uiGetChildrenNode uiGetNodePosition uiGetParentNode
syn keyword sciFunctions uiInsertNode ui_observer uitable union
syn keyword sciFunctions unique unit_test_run unix_g unix_s
syn keyword sciFunctions unix_w unix_x unobs unpack
syn keyword sciFunctions unwrap variance variancef vec2list
syn keyword sciFunctions vectorfind ver warnobsolete wavread
syn keyword sciFunctions wavwrite wcenter weekday wfir
syn keyword sciFunctions wfir_gui whereami whitecolormap who_user
syn keyword sciFunctions whos wiener wigner window
syn keyword sciFunctions winlist wintercolormap with_javasci with_macros_source
syn keyword sciFunctions with_tk x_choices x_matrix xclear
syn keyword sciFunctions xcorr xcosBlockEval xcosBlockInterface xcosCodeGeneration
syn keyword sciFunctions xcosConfigureModelica xcosPal xcosPalAdd xcosPalAddBlock
syn keyword sciFunctions xcosPalExport xcosPalGenerateAllIcons xcosShowBlockWarning xcosValidateBlockSet
syn keyword sciFunctions xcosValidateCompareBlock xcos_compile xcos_debug_gui xcos_run
syn keyword sciFunctions xcos_simulate xcov xgetech xinfo
syn keyword sciFunctions xlabel xload xmltochm xmltoformat
syn keyword sciFunctions xmltohtml xmltojar xmltopdf xmltops
syn keyword sciFunctions xmltoweb xnumb xrpoly xs2im
syn keyword sciFunctions xsave xsetech xsetm xstringl
syn keyword sciFunctions ycbcr2rgb ylabel yulewalk zeropen
syn keyword sciFunctions zgrid zlabel zpbutt zpch1
syn keyword sciFunctions zpch2 zpell
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
" |------------------------------+------------------+-------------+---------|
" | Primitives     (Operator)    | Medium blue      |   0,  0,205 | #0000CD |
" | Commands       (Conditional) | Crimson          | 220, 20, 60 | #DC143C |
" | Variables      (Statement)   | Dark orange      | 255,140,  0 | #FF8C00 |
" | Functions      (Function)    | Dodger blue      |  30,144,255 | #1E90FF |
" | Xcos functions (Label)       | Purple           | 128,  0,128 | #800080 |
" | String         (String)      | Gray             | 128,128,128 | #808080 |
" | Comment        (Comment)     | Medium sea green |  60,179,113 | #3CB371 |

hi Operator    guifg=#0000CD
hi Conditional guifg=#DC143C
hi Statement   guifg=#FF8C00
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
