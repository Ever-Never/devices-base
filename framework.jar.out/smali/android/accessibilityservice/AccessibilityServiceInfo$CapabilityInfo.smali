.class public final Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CapabilityInfo"
.end annotation


# instance fields
.field public final capability:I

.field public final descResId:I

.field public final titleResId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "capability"
    .parameter "titleResId"
    .parameter "descResId"

    .prologue
    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->capability:I

    .line 903
    iput p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    .line 904
    iput p3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    .line 905
    return-void
.end method
