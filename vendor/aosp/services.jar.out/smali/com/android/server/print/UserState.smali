.class final Lcom/android/server/print/UserState;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
.implements Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/UserState$PrintJobForAppCache;,
        Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;,
        Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;,
        Lcom/android/server/print/UserState$UserStateHandler;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UserState"


# instance fields
.field private final mActiveServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field private mPrintJobStateChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

.field private final mQueryIntent:Landroid/content/Intent;

.field private final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "userId"
    .parameter "lock"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    .line 102
    new-instance v0, Lcom/android/server/print/UserState$PrintJobForAppCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$1;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 122
    iput-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 123
    iput p2, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 124
    iput-object p3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 125
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/print/RemotePrintSpooler;-><init>(Landroid/content/Context;ILcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 126
    new-instance v0, Lcom/android/server/print/UserState$UserStateHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$UserStateHandler;-><init>(Lcom/android/server/print/UserState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    .line 127
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->enableSystemPrintServicesOnFirstBootLocked()V

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/android/server/print/UserState;)Lcom/android/server/print/RemotePrintSpooler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/print/UserState;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState;->handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/print/UserState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    return v0
.end method

.method private addServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 781
    :cond_0
    return-void
.end method

.method private enableSystemPrintServicesOnFirstBootLocked()V
    .locals 12

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readEnabledPrintServicesLocked()Z

    .line 696
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()Z

    .line 699
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 700
    .local v1, enabledOnFirstBoot:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v9, "enabled_on_first_boot_system_print_services"

    invoke-direct {p0, v9, v1}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 707
    .local v5, serviceCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 708
    iget-object v9, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    iget-object v6, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 710
    .local v6, serviceInfo:Landroid/content/pm/ServiceInfo;
    iget-object v9, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    .line 711
    new-instance v7, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    .local v7, serviceName:Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 716
    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    :cond_0
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .end local v7           #serviceName:Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 724
    .end local v6           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-gtz v9, :cond_3

    .line 753
    :goto_1
    return-void

    .line 728
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 731
    .local v8, servicesToEnable:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_print_services"

    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, enabledServices:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 734
    move-object v3, v8

    .line 738
    :goto_2
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_print_services"

    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v9, v10, v3, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 742
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_on_first_boot_system_print_services"

    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, enabledOnFirstBootServices:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 746
    move-object v2, v8

    .line 750
    :goto_3
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_on_first_boot_system_print_services"

    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v9, v10, v2, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 736
    .end local v2           #enabledOnFirstBootServices:Ljava/lang/String;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 748
    .restart local v2       #enabledOnFirstBootServices:Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method private failActivePrintJobsForService(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "serviceName"

    .prologue
    .line 799
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/UserState$4;-><init>(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 809
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method private failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V
    .locals 11
    .parameter "serviceName"

    .prologue
    .line 812
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v7, -0x4

    const/4 v8, -0x2

    invoke-virtual {v6, p1, v7, v8}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v5

    .line 814
    .local v5, printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v5, :cond_0

    .line 828
    :goto_0
    return-void

    .line 817
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 819
    .local v1, identity:J
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 820
    .local v4, printJobCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 821
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJobInfo;

    .line 822
    .local v3, printJob:Landroid/print/PrintJobInfo;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v7

    const/4 v8, 0x6

    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v10, 0x10405d4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 826
    .end local v0           #i:I
    .end local v3           #printJob:Landroid/print/PrintJobInfo;
    .end local v4           #printJobCount:I
    :catchall_0
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .restart local v0       #i:I
    .restart local v4       #printJobCount:I
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method private handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;I)V
    .locals 7
    .parameter "printJobId"
    .parameter "appId"

    .prologue
    .line 838
    iget-object v6, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 839
    :try_start_0
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v5, :cond_1

    .line 840
    monitor-exit v6

    .line 856
    :cond_0
    return-void

    .line 842
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 844
    .local v4, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 846
    .local v3, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 847
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 848
    .local v2, record:Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_2

    iget v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    if-ne v5, p2, :cond_3

    .line 851
    :cond_2
    :try_start_1
    iget-object v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v5, p1}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 846
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    .end local v0           #i:I
    .end local v2           #record:Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .end local v3           #recordCount:I
    .end local v4           #records:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 852
    .restart local v0       #i:I
    .restart local v2       #record:Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .restart local v3       #recordCount:I
    .restart local v4       #records:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    :catch_0
    move-exception v1

    .line 853
    .local v1, re:Landroid/os/RemoteException;
    const-string v5, "UserState"

    const-string v6, "Error notifying for print job state change"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onConfigurationChangedLocked()V
    .locals 9

    .prologue
    .line 756
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 757
    .local v7, installedCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 758
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 759
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .local v2, serviceName:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    new-instance v0, Lcom/android/server/print/RemotePrintService;

    iget-object v1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/print/RemotePrintService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V

    .line 765
    .local v0, service:Lcom/android/server/print/RemotePrintService;
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->addServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 757
    .end local v0           #service:Lcom/android/server/print/RemotePrintService;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 769
    .restart local v0       #service:Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 770
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_1

    .line 774
    .end local v0           #service:Lcom/android/server/print/RemotePrintService;
    .end local v2           #serviceName:Landroid/content/ComponentName;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method private readConfigurationLocked()Z
    .locals 2

    .prologue
    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, somethingChanged:Z
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()Z

    move-result v1

    or-int/2addr v0, v1

    .line 624
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readEnabledPrintServicesLocked()Z

    move-result v1

    or-int/2addr v0, v1

    .line 625
    return v0
.end method

.method private readEnabledPrintServicesLocked()Z
    .locals 2

    .prologue
    .line 662
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 663
    .local v0, tempEnabledServiceNameSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v1, "enabled_print_services"

    invoke-direct {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 665
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 667
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 668
    const/4 v1, 0x1

    .line 670
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readInstalledPrintServicesLocked()Z
    .locals 11

    .prologue
    .line 629
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 631
    .local v6, tempPrintServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/printservice/PrintServiceInfo;>;"
    iget-object v7, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    const/16 v9, 0x84

    iget v10, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 635
    .local v4, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 636
    .local v2, installedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    move v0, v2

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 637
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 638
    .local v3, installedService:Landroid/content/pm/ResolveInfo;
    const-string v7, "android.permission.BIND_PRINT_SERVICE"

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 640
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .local v5, serviceName:Landroid/content/ComponentName;
    const-string v7, "UserState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping print service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " since it does not require permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "android.permission.BIND_PRINT_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    .end local v5           #serviceName:Landroid/content/ComponentName;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    :cond_0
    iget-object v7, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 652
    .end local v3           #installedService:Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v7, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 653
    iget-object v7, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 654
    iget-object v7, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 655
    const/4 v7, 0x1

    .line 658
    :goto_2
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .parameter "setting"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p2, outServiceNames:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v4, p1, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, settingValue:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 678
    iget-object v2, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 679
    .local v2, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 680
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 681
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, string:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 685
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 686
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 687
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 691
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v2           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3           #string:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 785
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 787
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 793
    :goto_0
    return-void

    .line 791
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto :goto_0
.end method

.method private throwIfDestroyedLocked()V
    .locals 2

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with a destroyed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_0
    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "appId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 444
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/print/UserState$3;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    monitor-exit v1

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;I)V
    .locals 7
    .parameter "printJobId"
    .parameter "appId"

    .prologue
    .line 265
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v1

    .line 266
    .local v1, printJobInfo:Landroid/print/PrintJobInfo;
    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 273
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    .line 274
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    .line 275
    .local v3, printServiceName:Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 276
    .local v2, printService:Lcom/android/server/print/RemotePrintService;
    iget-object v5, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 277
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    move-object v2, v0

    .line 278
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {v2, v1}, Lcom/android/server/print/RemotePrintService;->onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 286
    .end local v2           #printService:Lcom/android/server/print/RemotePrintService;
    .end local v3           #printServiceName:Landroid/content/ComponentName;
    :cond_2
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    goto :goto_0
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 327
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    monitor-exit v1

    .line 345
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_1

    .line 332
    new-instance v0, Lcom/android/server/print/UserState$2;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/server/print/UserState$2;-><init>(Lcom/android/server/print/UserState;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 339
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 344
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 342
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public destroyLocked()V
    .locals 3

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 553
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintSpooler;->destroy()V

    .line 554
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 555
    .local v1, service:Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto :goto_0

    .line 557
    .end local v1           #service:Lcom/android/server/print/RemotePrintService;
    :cond_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 558
    iget-object v2, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 559
    iget-object v2, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 560
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v2, :cond_1

    .line 561
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    .line 562
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 564
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    .line 565
    return-void
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_0

    .line 351
    monitor-exit v1

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 355
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .parameter "fd"
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 568
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "user state "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 569
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 571
    const-string v13, "  "

    .line 573
    .local v13, tab:Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "installed services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 574
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    .line 575
    .local v10, installedServiceCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/printservice/PrintServiceInfo;

    .line 577
    .local v9, installedService:Landroid/printservice/PrintServiceInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 578
    .local v11, installedServicePrefix:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "service:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 579
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 580
    .local v12, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .local v4, componentName:Landroid/content/ComponentName;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "componentName="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 585
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "settingsActivity="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 587
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "addPrintersActivity="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 575
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 591
    .end local v4           #componentName:Landroid/content/ComponentName;
    .end local v9           #installedService:Landroid/printservice/PrintServiceInfo;
    .end local v11           #installedServicePrefix:Ljava/lang/String;
    .end local v12           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "enabled services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 592
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 593
    .local v5, enabledService:Landroid/content/ComponentName;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 594
    .local v6, enabledServicePrefix:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "service:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 595
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "componentName="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 597
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 600
    .end local v5           #enabledService:Landroid/content/ComponentName;
    .end local v6           #enabledServicePrefix:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "active services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 602
    .local v3, activeServiceCount:I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_2

    .line 603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 604
    .local v2, activeService:Lcom/android/server/print/RemotePrintService;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v14}, Lcom/android/server/print/RemotePrintService;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 602
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 608
    .end local v2           #activeService:Lcom/android/server/print/RemotePrintService;
    :cond_2
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "cached print jobs:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 609
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/server/print/UserState$PrintJobForAppCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "discovery mediator:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v14, :cond_3

    .line 613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 616
    :cond_3
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "print spooler:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/server/print/RemotePrintSpooler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 619
    return-void
.end method

.method public getEnabledPrintServices()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v7, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 302
    .local v5, installedServiceCount:I
    const/4 v3, 0x0

    .local v3, i:I
    move-object v2, v1

    .end local v1           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .local v2, enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_0
    if-ge v3, v5, :cond_0

    .line 303
    :try_start_1
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    .line 304
    .local v4, installedService:Landroid/printservice/PrintServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 308
    if-nez v2, :cond_1

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    .end local v2           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v1       #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_1
    :try_start_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v2       #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_0

    .line 314
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v4           #installedService:Landroid/printservice/PrintServiceInfo;
    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v2

    .line 315
    .end local v2           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .end local v3           #i:I
    .end local v5           #installedServiceCount:I
    .restart local v1       #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :catchall_0
    move-exception v6

    :goto_3
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .end local v1           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v2       #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v3       #i:I
    .restart local v5       #installedServiceCount:I
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v1       #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_3

    .end local v1           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v0       #componentName:Landroid/content/ComponentName;
    .restart local v2       #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v4       #installedService:Landroid/printservice/PrintServiceInfo;
    :cond_1
    move-object v1, v2

    .end local v2           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v1       #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_1

    .end local v1           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v2       #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :cond_2
    move-object v1, v2

    .end local v2           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v1       #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_2
.end method

.method public getEnabledServices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 547
    iget-object v0, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInstalledPrintServices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 2
    .parameter "printJobId"
    .parameter "appId"

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 258
    .local v0, printJob:Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_0

    .line 261
    .end local v0           #printJob:Landroid/print/PrintJobInfo;
    :goto_0
    return-object v0

    .restart local v0       #printJob:Landroid/print/PrintJobInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrintJobInfos(I)Ljava/util/List;
    .locals 11
    .parameter "appId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 219
    iget-object v8, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v8, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJobs(I)Ljava/util/List;

    move-result-object v2

    .line 226
    .local v2, cachedPrintJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 230
    .local v7, result:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Landroid/print/PrintJobId;Landroid/print/PrintJobInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 231
    .local v1, cachedPrintJobCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 232
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 233
    .local v0, cachedPrintJob:Landroid/print/PrintJobInfo;
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {v0, v10}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    .end local v0           #cachedPrintJob:Landroid/print/PrintJobInfo;
    :cond_0
    iget-object v8, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v9, -0x1

    invoke-virtual {v8, v10, v9, p1}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v6

    .line 243
    .local v6, printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v6, :cond_1

    .line 244
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 245
    .local v5, printJobCount:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    .line 246
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJobInfo;

    .line 247
    .local v4, printJob:Landroid/print/PrintJobInfo;
    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {v4, v10}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 253
    .end local v4           #printJob:Landroid/print/PrintJobInfo;
    .end local v5           #printJobCount:I
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v8
.end method

.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "printService"

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 155
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 156
    .local v0, service:Lcom/android/server/print/RemotePrintService;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 160
    :cond_0
    return-void

    .line 156
    .end local v0           #service:Lcom/android/server/print/RemotePrintService;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 7
    .parameter "printJob"

    .prologue
    .line 135
    iget-object v3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 137
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    .line 138
    .local v0, printServiceName:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 139
    .local v1, service:Lcom/android/server/print/RemotePrintService;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    .line 148
    :goto_0
    return-void

    .line 139
    .end local v0           #printServiceName:Landroid/content/ComponentName;
    .end local v1           #service:Lcom/android/server/print/RemotePrintService;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 145
    .restart local v0       #printServiceName:Landroid/content/ComponentName;
    .restart local v1       #service:Lcom/android/server/print/RemotePrintService;
    :cond_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v6, 0x10405d4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    goto :goto_0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 5
    .parameter "printJob"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 482
    iget-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 484
    return-void
.end method

.method public onPrintersAdded(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, printers:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 491
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    monitor-exit v1

    .line 500
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_1

    .line 496
    monitor-exit v1

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 498
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersAddedLocked(Ljava/util/List;)V

    .line 499
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onPrintersRemoved(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 505
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 507
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    monitor-exit v1

    .line 516
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_1

    .line 512
    monitor-exit v1

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 514
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersRemovedLocked(Ljava/util/List;)V

    .line 515
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onServiceDied(Lcom/android/server/print/RemotePrintService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 523
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    monitor-exit v1

    .line 535
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 528
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 530
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_1

    .line 531
    monitor-exit v1

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 533
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 534
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 13
    .parameter "printJobName"
    .parameter "adapter"
    .parameter "attributes"
    .parameter "packageName"
    .parameter "appId"

    .prologue
    .line 170
    new-instance v10, Landroid/print/PrintJobInfo;

    invoke-direct {v10}, Landroid/print/PrintJobInfo;-><init>()V

    .line 171
    .local v10, printJob:Landroid/print/PrintJobInfo;
    new-instance v1, Landroid/print/PrintJobId;

    invoke-direct {v1}, Landroid/print/PrintJobId;-><init>()V

    invoke-virtual {v10, v1}, Landroid/print/PrintJobInfo;->setId(Landroid/print/PrintJobId;)V

    .line 172
    move/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/print/PrintJobInfo;->setAppId(I)V

    .line 173
    invoke-virtual {v10, p1}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/print/PrintJobInfo;->setAttributes(Landroid/print/PrintAttributes;)V

    .line 175
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/print/PrintJobInfo;->setCopies(I)V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Landroid/print/PrintJobInfo;->setCreationTime(J)V

    .line 180
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v1, v2, v0, v10}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const/4 v11, 0x0

    .line 212
    :goto_0
    return-object v11

    .line 187
    :cond_0
    new-instance v2, Lcom/android/server/print/UserState$1;

    invoke-direct {v2, p0, v10}, Lcom/android/server/print/UserState$1;-><init>(Lcom/android/server/print/UserState;Landroid/print/PrintJobInfo;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v4, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 197
    .local v7, identity:J
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.print.PRINT_DIALOG"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v3, intent:Landroid/content/Intent;
    const-string v1, "printjob"

    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 199
    const-string v1, "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 200
    const-string v1, "android.print.intent.extra.EXTRA_PRINT_JOB"

    invoke-virtual {v3, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    const-string v1, "android.content.extra.PACKAGE_NAME"

    move-object/from16 v0, p4

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x5000

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    iget v12, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9

    .line 208
    .local v9, intentSender:Landroid/content/IntentSender;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v11, result:Landroid/os/Bundle;
    const-string v1, "android.print.intent.extra.EXTRA_PRINT_JOB"

    invoke-virtual {v11, v1, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 210
    const-string v1, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    invoke-virtual {v11, v1, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3           #intent:Landroid/content/Intent;
    .end local v9           #intentSender:Landroid/content/IntentSender;
    .end local v11           #result:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public removeObsoletePrintJobs()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->removeObsoletePrintJobs()V

    .line 164
    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    .line 459
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 460
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 461
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v3, :cond_0

    .line 462
    monitor-exit v4

    .line 477
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 465
    .local v2, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 466
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 468
    .local v1, record:Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget-object v3, v1, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v3}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 469
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 473
    .end local v1           #record:Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_1
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 476
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #recordCount:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 465
    .restart local v0       #i:I
    .restart local v1       #record:Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .restart local v2       #recordCount:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;I)V
    .locals 4
    .parameter "printJobId"
    .parameter "appId"

    .prologue
    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 292
    .local v0, printJobInfo:Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    goto :goto_0
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 2
    .parameter "observer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p2, printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 363
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    monitor-exit v1

    .line 374
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_1

    .line 368
    monitor-exit v1

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 371
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 373
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .parameter "printerId"

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 412
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    monitor-exit v1

    .line 422
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_1

    .line 417
    monitor-exit v1

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 420
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 421
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 380
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    monitor-exit v1

    .line 390
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_1

    .line 385
    monitor-exit v1

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 388
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 389
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .parameter "printerId"

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 428
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    monitor-exit v1

    .line 438
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_1

    .line 433
    monitor-exit v1

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 436
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 437
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateIfNeededLocked()V
    .locals 1

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 539
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readConfigurationLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 542
    :cond_0
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 396
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    monitor-exit v1

    .line 406
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_1

    .line 401
    monitor-exit v1

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 404
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->validatePrintersLocked(Ljava/util/List;)V

    .line 405
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method