.class Lcom/android/server/PowerManagerService$19;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService;->isPoweroffAlarmShutdown()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3430
    iput-object p1, p0, Lcom/android/server/PowerManagerService$19;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3433
    monitor-enter p0

    .line 3434
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$19;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->shutdownFromPoweroffAlarm(Landroid/content/Context;)V

    .line 3435
    monitor-exit p0

    .line 3436
    return-void

    .line 3435
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
