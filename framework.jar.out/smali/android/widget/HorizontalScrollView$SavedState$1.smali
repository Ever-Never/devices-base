.class final Landroid/widget/HorizontalScrollView$SavedState$1;
.super Ljava/lang/Object;
.source "HorizontalScrollView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalScrollView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/widget/HorizontalScrollView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/HorizontalScrollView$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 1711
    new-instance v0, Landroid/widget/HorizontalScrollView$SavedState;

    invoke-direct {v0, p1}, Landroid/widget/HorizontalScrollView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1709
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/HorizontalScrollView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/HorizontalScrollView$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 1715
    new-array v0, p1, [Landroid/widget/HorizontalScrollView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1709
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView$SavedState$1;->newArray(I)[Landroid/widget/HorizontalScrollView$SavedState;

    move-result-object v0

    return-object v0
.end method