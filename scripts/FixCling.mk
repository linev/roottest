#
# Set of macro passed to root.exe to tell the scripts to
# avoid features not yet implemented by cling.
#

CINT_VERSION := cling

CALLROOTEXE = root.exe

# Essential problems, must be fixed before the release.
# (incorrect behavior of C++ compliant code)
#CALLROOTEXE += -e "\#define ClingWorkAroundIncorrectTearDownOrder"
#CALLROOTEXE += -e "\#define ClingWorkAroundCallfuncAndConversion"
#CALLROOTEXE += -e "\#define ClingWorkAroundCallfuncReturnInt"
CALLROOTEXE += -e "\#define ClingWorkAroundLackOfModule"
# Major features/issues
CALLROOTEXE += -e "\#define ClingWorkAroundMissingDynamicScope"
#CALLROOTEXE += -e "\#define ClingWorkAroundMissingAutoLoadingForNamespaces"
#CALLROOTEXE += -e "\#define ClingWorkAroundMissingAutoLoadingForTemplates"
#CALLROOTEXE += -e "\#define ClingWorkAroundMissingAutoLoading"
CALLROOTEXE += -e "\#define ClingWorkAroundJITandInline"
#CALLROOTEXE += -e "\#define ClingWorkAroundCallfuncAndVirtual"
#CALLROOTEXE += -e "\#define ClingWorkAroundCallfuncAndInline"
CALLROOTEXE += -e "\#define ClingWorkAroundScriptClassDef"
CALLROOTEXE += -e "\#define ClingWorkAroundMultipleInclude"
#CALLROOTEXE += -e "\#define ClingWorkAroundCallfuncAndReturnByValue"
# Features needed for the tutorials
#CALLROOTEXE += -e "\#define ClingWorkAroundMissingImplicitAuto"
CALLROOTEXE += -e "\#define ClingWorkAroundExtraParensWithImplicitAuto"
# and See ClingReinstateRedeclarationAllowed
# Other missing features
CALLROOTEXE += -e "\#define ClingWorkAroundNoPrivateClassIO"
# Convenience features, would be nice to have.
CALLROOTEXE += -e "\#define ClingWorkAroundBrokenRecovery"
#CALLROOTEXE += -e "\#define ClingWorkAroundMissingSmartInclude"
CALLROOTEXE += -e "\#define ClingWorkAroundBrokenUnnamedReturn"
CALLROOTEXE += -e "\#define ClingWorkAroundUnnamedDetection"
CALLROOTEXE += -e "\#define ClingWorkAroundUnnamedInclude"
CALLROOTEXE += -e "\#define ClingWorkAroundJITfullSymbolResolution"
CALLROOTEXE += -e "\#define ClingWorkAroundDeletedSourceFile"
CALLROOTEXE += -e "\#define ClingWorkAroundValuePrinterNotFullyQualified"
CALLROOTEXE += -e "\#define ClingWorkAroundNoDotNamespace"
CALLROOTEXE += -e "\#define ClingWorkAroundNoDotInclude"
CALLROOTEXE += -e "\#define ClingWorkAroundNoDotOptimization"
CALLROOTEXE += -e "\#define ClingWorkAroundUnnamedIncorrectFileLoc"
CALLROOTEXE += -e "\#define ClingWorkAroundTypeinfoToTypename"
# Most likely no longer supported.
# CALLROOTEXE += -e "\#define ClingReinstateRedeclarationAllowed"
# CALLROOTEXE += -e "\#define ClingReinstateImplicitDynamicCast"
# CALLROOTEXE += -e "\#define ClingReinstateTemplateRootIOCtor"

# Not for 6.0
CALLROOTEXE += -e "\#define ClingWorkAroundMissingUnloading"

# Fixes used when building library via ACLiC
#CALLROOTEXEBUILD += -e "\#define ClingWorkAroundCallfuncAndInline"
#CALLROOTEXEBUILD += -e "\#define ClingWorkAroundCallfuncAndVirtual"
CALLROOTEXEBUILD += -e "\#define ClingWorkAroundJITandInline"
#CALLROOTEXEBUILD += -e "\#define ClingWorkAroundCallfuncAndReturnByValue"
CALLROOTEXEBUILD += -e "\#define ClingWorkAroundNoPrivateClassIO"

# variable to be used in Makefiles.
ClingWorkAroundLackOfModule = yes
#ClingWorkAroundMissingImplicitAuto = yes
ClingWorkAroundExtraParensWithImplicitAuto = yes
ClingWorkAroundMissingDynamicScope = yes
ClingWorkAroundMissingUnloading = yes
#ClingWorkAroundCallfuncReturnInt = yes         # See https://sft.its.cern.ch/jira/browse/ROOT-4963
#ClingWorkAroundCallfuncAndConversion = yes     # See https://sft.its.cern.ch/jira/browse/ROOT-4827
#ClingWorkAroundMissingAutoLoadingForNamespaces = yes # See: https://sft.its.cern.ch/jira/browse/ROOT-4779
#ClingWorkAroundMissingAutoLoadingForTemplates = yes  # See: https://sft.its.cern.ch/jira/browse/ROOT-4786
#ClingWorkAroundMissingAutoLoading = yes        # See *also* the problem namespace and templates:
                                               #     https://sft.its.cern.ch/jira/browse/ROOT-4786
                                               #     https://sft.its.cern.ch/jira/browse/ROOT-4779
ClingWorkAroundJITfullSymbolResolution = yes   # See https://sft.its.cern.ch/jira/browse/ROOT-4691
#ClingWorkAroundMissingSmartInclude = yes
ClingWorkAroundBrokenUnnamedReturn = yes       # See https://sft.its.cern.ch/jira/browse/ROOT-4719
ClingWorkAroundUnnamedIncorrectFileLoc = yes   # see https://sft.its.cern.ch/jira/browse/ROOT-4760
#ClingWorkAroundCallfuncAndInline = yes        # see https://sft.its.cern.ch/jira/browse/ROOT-4615
#ClingWorkAroundCallfuncAndReturnByValue = yes  # See https://sft.its.cern.ch/jira/browse/ROOT-4601 and https://sft.its.cern.ch/jira/browse/ROOT-4587
ClingWorkAroundDeletedSourceFile = yes         # See https://sft.its.cern.ch/jira/browse/ROOT-4894
ClingWorkAroundUnnamedInclude = yes            # See https://sft.its.cern.ch/jira/browse/ROOT-4763
ClingWorkAroundBrokenRecovery = yes
ClingWorkAroundNoDotNamespace = yes            # See https://sft.its.cern.ch/jira/browse/ROOT-4773
ClingWorkAroundJITandInline = yes              # JIT does not instantiate inline even-though they are used (but not actually inlined)
ClingWorkAroundValuePrinterNotFullyQualified = yes # See https://sft.its.cern.ch/jira/browse/ROOT-4774
ClingWorkAroundNoDotInclude = yes              # See trello card about .include
ClingWorkAroundScriptClassDef = yes            # See https://sft.its.cern.ch/jira/browse/ROOT-4769
ClingWorkAroundMultipleInclude = yes           # File are included each time a module that contains them is 
                                               # loaded.  Should go away with the modules
ClingWorkAroundNoDotOptimization = yes         # See https://sft.its.cern.ch/jira/browse/ROOT-4790
ClingWorkAroundUnnamedDetection = yes          # See https://sft.its.cern.ch/jira/browse/ROOT-4791
#ClingWorkAroundIncorrectTearDownOrder = yes    # See https://sft.its.cern.ch/jira/browse/ROOT-4768
ClingWorkAroundNoPrivateClassIO = yes          # See https://sft.its.cern.ch/jira/browse/ROOT-4865
#ClingWorkAroundCallfuncAndVirtual = yes        # See https://sft.its.cern.ch/jira/browse/ROOT-4869
# Most likely no longer supported.
# ClingReinstateRedeclarationAllowed = yes     # See https://sft.its.cern.ch/jira/browse/ROOT-4803
# ClingReinstateImplicitDynamicCast = yes      # See https://sft.its.cern.ch/jira/browse/ROOT-4802
# ClingReinstateTemplateRootIOCtor = yes       # Allow templated constructor to be used as I/O constructor
ClingWorkAroundTypeinfoToTypename = yes        # See https://sft.its.cern.ch/jira/browse/ROOT-186

ifneq ($(ClingReinstateRedeclarationAllowed)-$(ClingWorkAroundMissingImplicitAuto),yes-)
ClingWorkAroundSavePrimitive = yes             # stressGraphics use of SavePrimitive currently requires at least implicit auto and allowing redeclaration
endif

ifneq ($(ClingWorkAroundMissingAutoLoading),)
CALLROOTEXE += -e 'gSystem->Load("libTreePlayer"); gSystem->Load("libPhysics");'
endif
ifneq ($(ClingWorkAroundMissingAutoLoadingForNamespaces),)
CALLROOTEXE += -e 'gSystem->Load("libTreePlayer"); gSystem->Load("libPhysics");'
endif

PYROOT_EXTRAFLAGS = --fixcling