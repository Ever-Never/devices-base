.class Landroid/widget/TextView$ActionPopupWindow;
.super Landroid/widget/TextView$PinnedPopupWindow;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900f1


# instance fields
.field private mBaidkeTextView:Landroid/widget/TextView;

.field private mPasteTextView:Landroid/widget/TextView;

.field private mReplaceTextView:Landroid/widget/TextView;

.field private mSearchTextView:Landroid/widget/TextView;

.field private mTranslatorTextView:Landroid/widget/TextView;

.field private mVisibleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private positionFlag:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 10496
    iput-object p1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView$PinnedPopupWindow;-><init>(Landroid/widget/TextView;)V

    .line 10505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    .line 10506
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView$ActionPopupWindow;->positionFlag:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10496
    invoke-direct {p0, p1}, Landroid/widget/TextView$ActionPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method private startSemiView(I)V
    .locals 10
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    .line 10639
    const/4 v2, 0x0

    .line 10640
    .local v2, min:I
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 10642
    .local v1, max:I
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 10643
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 10644
    .local v4, selStart:I
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 10646
    .local v3, selEnd:I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 10647
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10650
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_0
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;
    invoke-static {v8, v2, v1}, Landroid/widget/TextView;->access$6100(Landroid/widget/TextView;II)Ljava/lang/CharSequence;

    move-result-object v8

    #setter for: Landroid/widget/TextView;->mSearchText:Ljava/lang/CharSequence;
    invoke-static {v7, v8}, Landroid/widget/TextView;->access$6002(Landroid/widget/TextView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 10652
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSearchText:Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/widget/TextView;->access$6000(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSearchText:Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/widget/TextView;->access$6000(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 10653
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v5, v7

    .line 10654
    .local v5, startPointerX:I
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v8, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    .line 10655
    .local v6, startPointerY:I
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 10656
    .local v0, locationInWindow:[I
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 10658
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentHorizontalOffset()I
    invoke-static {v7}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)I

    move-result v7

    aget v8, v0, v9

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 10659
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v7}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)I

    move-result v7

    const/4 v8, 0x1

    aget v8, v0, v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 10660
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSearchText:Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/widget/TextView;->access$6000(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5, v6, p1}, Lcom/android/internal/util/SearchHelper;->startSearch(Landroid/content/Context;Ljava/lang/String;III)V

    .line 10662
    .end local v0           #locationInWindow:[I
    .end local v5           #startPointerX:I
    .end local v6           #startPointerY:I
    :cond_1
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->stopSelectionActionMode()V
    invoke-static {v7}, Landroid/widget/TextView;->access$5900(Landroid/widget/TextView;)V

    .line 10663
    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 22
    .parameter "positionY"

    .prologue
    .line 10713
    const/4 v13, 0x0

    .line 10714
    .local v13, min:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 10715
    .local v9, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 10716
    iget v13, v9, Landroid/graphics/Rect;->top:I

    .line 10717
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 10718
    .local v17, outValue:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v19

    const v20, 0x10102eb

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 10720
    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$5400(Landroid/widget/TextView;)Landroid/view/ActionMode;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 10721
    int-to-float v0, v13

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v13, v0

    .line 10723
    :cond_0
    const-string v19, "TextView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "min "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " positionY = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10724
    move/from16 v0, p1

    if-ge v0, v13, :cond_7

    .line 10725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v15

    .line 10726
    .local v15, offsetEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .line 10727
    .local v12, lineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v19

    const/high16 v20, 0x3f00

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    .line 10728
    .local v6, endPositionX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 10729
    .local v7, endPositionY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$6300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 10730
    .local v5, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/TextView;->mSpacingMult:F
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$6400(Landroid/widget/TextView;)F

    move-result v19

    const/high16 v20, 0x3f80

    invoke-static/range {v19 .. v20}, Ljava/lang/Float;->compare(FF)I

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/TextView;->mSpacingAdd:F
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$6500(Landroid/widget/TextView;)F

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Float;->compare(FF)I

    move-result v19

    if-eqz v19, :cond_2

    .line 10731
    :cond_1
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    const/high16 v20, 0x4080

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 10733
    .local v16, offsetToBaseLine:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v19

    add-int v7, v19, v16

    .line 10737
    .end local v16           #offsetToBaseLine:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    #calls: Landroid/widget/TextView;->viewportToContentHorizontalOffset()I
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)I

    move-result v19

    add-int v6, v6, v19

    .line 10738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)I

    move-result v19

    add-int v7, v7, v19

    .line 10739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Landroid/widget/TextView;->isPositionVisible(II)Z
    invoke-static {v0, v6, v7}, Landroid/widget/TextView;->access$6600(Landroid/widget/TextView;II)Z

    move-result v8

    .line 10740
    .local v8, endVisible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/widget/TextView;->mTempCoords:[I

    .line 10741
    .local v4, coords:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 10742
    const/16 v19, 0x1

    aget v19, v4, v19

    add-int v19, v19, v7

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x28

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v20

    add-int v19, v19, v20

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_3

    const/16 v18, 0x1

    .line 10744
    .local v18, popupVisible:Z
    :goto_0
    if-eqz v8, :cond_4

    if-eqz v18, :cond_4

    .line 10745
    const/16 v19, 0x1

    aget v19, v4, v19

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x28

    add-int v19, v19, v20

    add-int v7, v7, v19

    .line 10746
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$ActionPopupWindow;->mTop:Z

    .line 10768
    .end local v4           #coords:[I
    .end local v5           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #endPositionX:I
    .end local v7           #endPositionY:I
    .end local v8           #endVisible:Z
    .end local v12           #lineEnd:I
    .end local v15           #offsetEnd:I
    .end local v18           #popupVisible:Z
    :goto_1
    return v7

    .line 10742
    .restart local v4       #coords:[I
    .restart local v5       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v6       #endPositionX:I
    .restart local v7       #endPositionY:I
    .restart local v8       #endVisible:Z
    .restart local v12       #lineEnd:I
    .restart local v15       #offsetEnd:I
    :cond_3
    const/16 v18, 0x0

    goto :goto_0

    .line 10750
    .restart local v18       #popupVisible:Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$ActionPopupWindow;->getTextOffset()I

    move-result v14

    .line 10751
    .local v14, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 10752
    .local v11, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/TextView;->mSpacingMult:F
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$6400(Landroid/widget/TextView;)F

    move-result v19

    const/high16 v20, 0x3f80

    invoke-static/range {v19 .. v20}, Ljava/lang/Float;->compare(FF)I

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/TextView;->mSpacingAdd:F
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$6500(Landroid/widget/TextView;)F

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Float;->compare(FF)I

    move-result v19

    if-eqz v19, :cond_6

    .line 10753
    :cond_5
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    const/high16 v20, 0x4080

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 10754
    .restart local v16       #offsetToBaseLine:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v19

    add-int v19, v19, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    sub-int v19, v19, v20

    add-int p1, p1, v19

    .line 10758
    .end local v16           #offsetToBaseLine:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v19

    add-int p1, p1, v19

    .line 10761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$6800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static/range {v20 .. v20}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 10762
    .local v10, handle:Landroid/graphics/drawable/Drawable;
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x50

    add-int p1, p1, v19

    .line 10763
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$ActionPopupWindow;->mTop:Z

    .end local v4           #coords:[I
    .end local v5           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #endPositionX:I
    .end local v7           #endPositionY:I
    .end local v8           #endVisible:Z
    .end local v10           #handle:Landroid/graphics/drawable/Drawable;
    .end local v11           #line:I
    .end local v12           #lineEnd:I
    .end local v14           #offset:I
    .end local v15           #offsetEnd:I
    .end local v18           #popupVisible:Z
    :goto_3
    move/from16 v7, p1

    .line 10768
    goto/16 :goto_1

    .line 10756
    .restart local v4       #coords:[I
    .restart local v5       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v6       #endPositionX:I
    .restart local v7       #endPositionY:I
    .restart local v8       #endVisible:Z
    .restart local v11       #line:I
    .restart local v12       #lineEnd:I
    .restart local v14       #offset:I
    .restart local v15       #offsetEnd:I
    .restart local v18       #popupVisible:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    sub-int v19, v19, v20

    add-int p1, p1, v19

    goto :goto_2

    .line 10765
    .end local v4           #coords:[I
    .end local v5           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #endPositionX:I
    .end local v7           #endPositionY:I
    .end local v8           #endVisible:Z
    .end local v11           #line:I
    .end local v12           #lineEnd:I
    .end local v14           #offset:I
    .end local v15           #offsetEnd:I
    .end local v18           #popupVisible:Z
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$ActionPopupWindow;->mTop:Z

    goto :goto_3
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 10511
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 10513
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 10514
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 10613
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10614
    return-void
.end method

.method protected getTextOffset()I
    .locals 9

    .prologue
    .line 10673
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 10674
    .local v5, start:I
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 10676
    .local v1, end:I
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 10677
    .local v6, startLine:I
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 10679
    .local v2, endLine:I
    if-ne v6, v2, :cond_1

    .line 10680
    add-int v7, v5, v1

    div-int/lit8 v0, v7, 0x2

    .line 10696
    :cond_0
    :goto_0
    return v0

    .line 10681
    :cond_1
    sub-int v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    .line 10683
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 10684
    .local v4, lastOffset:I
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 10685
    .local v3, firstOffset:I
    add-int v7, v3, v4

    div-int/lit8 v0, v7, 0x2

    .line 10686
    .local v0, center:I
    if-ge v0, v5, :cond_0

    .line 10687
    move v0, v5

    goto :goto_0

    .line 10691
    .end local v0           #center:I
    .end local v3           #firstOffset:I
    .end local v4           #lastOffset:I
    :cond_2
    iget v7, p0, Landroid/widget/TextView$ActionPopupWindow;->positionFlag:I

    if-nez v7, :cond_3

    move v0, v5

    .line 10692
    goto :goto_0

    .line 10693
    :cond_3
    iget v7, p0, Landroid/widget/TextView$ActionPopupWindow;->positionFlag:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    move v0, v1

    .line 10694
    goto :goto_0

    .line 10696
    :cond_4
    add-int v7, v5, v1

    div-int/lit8 v0, v7, 0x2

    goto :goto_0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 10705
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 10706
    .local v0, density:F
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    float-to-int v2, v0

    mul-int/lit8 v2, v2, 0x28

    sub-int/2addr v1, v2

    return v1
.end method

.method protected initContentView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const v5, 0x10900f1

    .line 10519
    new-instance v1, Lcom/android/internal/widget/PopupLayout;

    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/PopupLayout;-><init>(Landroid/content/Context;)V

    .line 10520
    .local v1, popupLayout:Lcom/android/internal/widget/PopupLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setOrientation(I)V

    .line 10521
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080851

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10522
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setShowDividers(I)V

    .line 10523
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setDividerPadding(I)V

    .line 10524
    iput-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 10525
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x1080920

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 10528
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$5700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 10531
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 10534
    .local v2, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 10535
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10536
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10537
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v4, 0x104000b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 10538
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10540
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    .line 10541
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10542
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10543
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v4, 0x1040394

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 10544
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10547
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    .line 10548
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10549
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10550
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    const v4, 0x1040466

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 10551
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10553
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    .line 10554
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10555
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10556
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    const v4, 0x1040533

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 10557
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10559
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    .line 10560
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10561
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10562
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    const v4, 0x1040534

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 10563
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10565
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 10619
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10620
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v2, 0x1020022

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 10621
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    .line 10635
    :cond_0
    :goto_0
    return-void

    .line 10622
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 10623
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 10624
    .local v0, middle:I
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->stopSelectionActionMode()V
    invoke-static {v1}, Landroid/widget/TextView;->access$5900(Landroid/widget/TextView;)V

    .line 10625
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10626
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->showSuggestions()V

    goto :goto_0

    .line 10627
    .end local v0           #middle:I
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 10628
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/widget/TextView$ActionPopupWindow;->startSemiView(I)V

    goto :goto_0

    .line 10629
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 10630
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/widget/TextView$ActionPopupWindow;->startSemiView(I)V

    goto :goto_0

    .line 10631
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 10632
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/widget/TextView$ActionPopupWindow;->startSemiView(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 10569
    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v8}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v0

    .line 10570
    .local v0, canPaste:Z
    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isCursorInsideSuggestionSpan()Z
    invoke-static {v8}, Landroid/widget/TextView;->access$5800(Landroid/widget/TextView;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v6

    .line 10571
    .local v2, canSuggest:Z
    :goto_0
    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v8}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v1

    .line 10572
    .local v1, canSearch:Z
    iget-object v10, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v8, v7

    :goto_1
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10573
    iget-object v10, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    move v8, v7

    :goto_2
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10575
    iget-object v10, p0, Landroid/widget/TextView$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move v8, v7

    :goto_3
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10576
    iget-object v10, p0, Landroid/widget/TextView$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move v8, v7

    :goto_4
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10577
    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move v9, v7

    :cond_0
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10579
    if-nez v0, :cond_6

    if-nez v2, :cond_6

    if-nez v1, :cond_6

    .line 10609
    :goto_5
    return-void

    .end local v1           #canSearch:Z
    .end local v2           #canSuggest:Z
    :cond_1
    move v2, v7

    .line 10570
    goto :goto_0

    .restart local v1       #canSearch:Z
    .restart local v2       #canSuggest:Z
    :cond_2
    move v8, v9

    .line 10572
    goto :goto_1

    :cond_3
    move v8, v9

    .line 10573
    goto :goto_2

    :cond_4
    move v8, v9

    .line 10575
    goto :goto_3

    :cond_5
    move v8, v9

    .line 10576
    goto :goto_4

    .line 10581
    :cond_6
    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 10582
    if-eqz v0, :cond_7

    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10583
    :cond_7
    if-eqz v2, :cond_8

    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10584
    :cond_8
    if-eqz v1, :cond_9

    .line 10585
    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/widget/TextView$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10586
    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/widget/TextView$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10587
    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/widget/TextView$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10589
    :cond_9
    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 10591
    .local v5, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v5, :cond_a

    .line 10592
    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 10594
    .local v3, child:Landroid/widget/TextView;
    if-ne v5, v6, :cond_b

    .line 10595
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 10608
    .end local v3           #child:Landroid/widget/TextView;
    :cond_a
    invoke-super {p0}, Landroid/widget/TextView$PinnedPopupWindow;->show()V

    goto :goto_5

    .line 10599
    .restart local v3       #child:Landroid/widget/TextView;
    :cond_b
    if-nez v4, :cond_c

    .line 10600
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 10591
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 10601
    :cond_c
    add-int/lit8 v8, v5, -0x1

    if-ne v4, v8, :cond_d

    .line 10602
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_7

    .line 10604
    :cond_d
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_7
.end method

.method public updatePositionFlag(I)V
    .locals 0
    .parameter "Flag"

    .prologue
    .line 10666
    iput p1, p0, Landroid/widget/TextView$ActionPopupWindow;->positionFlag:I

    .line 10667
    return-void
.end method
