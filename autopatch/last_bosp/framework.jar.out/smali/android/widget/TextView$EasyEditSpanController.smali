.class Landroid/widget/TextView$EasyEditSpanController;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyEditSpanController"
.end annotation


# static fields
.field private static final DISPLAY_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private mEasyEditSpan:Landroid/text/style/EasyEditSpan;

.field private mHidePopup:Ljava/lang/Runnable;

.field private mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 7910
    iput-object p1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7910
    invoke-direct {p0, p1}, Landroid/widget/TextView$EasyEditSpanController;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/TextView$EasyEditSpanController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7910
    invoke-direct {p0}, Landroid/widget/TextView$EasyEditSpanController;->hide()V

    return-void
.end method

.method private adjustSpans(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "buffer"

    .prologue
    .line 7996
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 7997
    check-cast v1, Landroid/text/Spannable;

    .line 7998
    .local v1, spannable:Landroid/text/Spannable;
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/EasyEditSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/EasyEditSpan;

    .line 8000
    .local v2, spans:[Landroid/text/style/EasyEditSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 8001
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 8000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8004
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/style/EasyEditSpan;
    :cond_0
    return-void
.end method

.method private getSpan(Landroid/text/Spanned;)Landroid/text/style/EasyEditSpan;
    .locals 4
    .parameter "spanned"

    .prologue
    const/4 v3, 0x0

    .line 8021
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/style/EasyEditSpan;

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/EasyEditSpan;

    .line 8023
    .local v0, easyEditSpans:[Landroid/text/style/EasyEditSpan;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 8024
    const/4 v1, 0x0

    .line 8026
    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, v3

    goto :goto_0
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 7921
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    if-eqz v0, :cond_0

    .line 7922
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$PinnedPopupWindow;->hide()V

    .line 7923
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7925
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextView$EasyEditSpanController;->removeSpans(Ljava/lang/CharSequence;)V

    .line 7926
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 7927
    return-void
.end method

.method private removeSpans(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "buffer"

    .prologue
    .line 8010
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 8011
    check-cast v1, Landroid/text/Spannable;

    .line 8012
    .local v1, spannable:Landroid/text/Spannable;
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/EasyEditSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/EasyEditSpan;

    .line 8014
    .local v2, spans:[Landroid/text/style/EasyEditSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 8015
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 8014
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8018
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/style/EasyEditSpan;
    :cond_0
    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    .line 7936
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/TextView$EasyEditSpanController;->adjustSpans(Ljava/lang/CharSequence;)V

    .line 7938
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 7986
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 7943
    .restart local p1
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 7948
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7949
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditText;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7958
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    if-eqz v1, :cond_4

    .line 7959
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_3

    .line 7960
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-interface {v1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 7962
    :cond_3
    iput-object v3, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 7964
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    invoke-virtual {v1}, Landroid/widget/TextView$PinnedPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7965
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    invoke-virtual {v1}, Landroid/widget/TextView$PinnedPopupWindow;->hide()V

    .line 7969
    :cond_5
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 7970
    check-cast p1, Landroid/text/Spanned;

    .end local p1
    invoke-direct {p0, p1}, Landroid/widget/TextView$EasyEditSpanController;->getSpan(Landroid/text/Spanned;)Landroid/text/style/EasyEditSpan;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 7971
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    if-eqz v1, :cond_0

    .line 7972
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    if-nez v1, :cond_6

    .line 7973
    new-instance v1, Landroid/widget/TextView$EasyEditPopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    invoke-direct {v1, v2, v3}, Landroid/widget/TextView$EasyEditPopupWindow;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    .line 7974
    new-instance v1, Landroid/widget/TextView$EasyEditSpanController$1;

    invoke-direct {v1, p0}, Landroid/widget/TextView$EasyEditSpanController$1;-><init>(Landroid/widget/TextView$EasyEditSpanController;)V

    iput-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    .line 7981
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$EasyEditPopupWindow;->show(Landroid/text/style/EasyEditSpan;)V

    .line 7982
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7983
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
