.class Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "DigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/baidu/internal/keyguard/slide/DigitalClock;

.field final synthetic val$timezoneChanged:Z


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;ZLcom/baidu/internal/keyguard/slide/DigitalClock;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver$1;->this$0:Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/baidu/internal/keyguard/slide/DigitalClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/baidu/internal/keyguard/slide/DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/baidu/internal/keyguard/slide/DigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/baidu/internal/keyguard/slide/DigitalClock;->access$002(Lcom/baidu/internal/keyguard/slide/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/baidu/internal/keyguard/slide/DigitalClock;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/DigitalClock;->updateTime()V

    .line 67
    return-void
.end method
