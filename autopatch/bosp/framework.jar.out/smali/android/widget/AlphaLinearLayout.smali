.class public Landroid/widget/AlphaLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AlphaLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final ANIMATION:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Landroid/widget/AlphaLinearLayout;->ANIMATION:Landroid/view/animation/Animation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0}, Landroid/widget/AlphaLinearLayout;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0}, Landroid/widget/AlphaLinearLayout;->init()V

    .line 65
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Landroid/widget/Util;->check()V

    .line 97
    sget-object v0, Landroid/widget/AlphaLinearLayout;->ANIMATION:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 98
    return-void
.end method


# virtual methods
.method public startAlpha(I)V
    .locals 1
    .parameter "alph"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 77
    sget-object v0, Landroid/widget/AlphaLinearLayout;->ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/AlphaLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    return-void
.end method
